define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var devicesn;
	var Model = function() {
		this.callParent();
	};

	Model.prototype.modelParamsReceive = function(event) {

		var self = this;
		$.ajax({
			async : false,
			url : url + "apis/getsingledevice",
			type : "GET",
			dataType : 'jsonp',
			jsonp : 'callback',
			timeout : 5000,
			data : {
				id : event.params.data.id
			},
			success : function(jsonstr) {// 客户端jquery预先定义好的callback函数,成功获取跨域服务器上的json数据后,会动态执行这个callback函数
				var data = self.comp("deviceData");
				data.clear();
				var dateTime = new Date(jsonstr.device.timestamp);
				var mydate = justep.Date.toString(dateTime, "yyyy-MM-dd hh:mm:ss");
				devicesn = jsonstr.device.sn;
				var options = {
					defaultValues : [ {
						id : jsonstr.device.id,
						name : jsonstr.device.name,
						sn : jsonstr.device.sn,
						model : jsonstr.device.model,
						coordinate : jsonstr.device.coordinate,
						address : jsonstr.device.address,
						floor : jsonstr.device.floor,
						power : jsonstr.device.power,
						powerstatu : jsonstr.device.powerstatu,
						reportTime : jsonstr.device.reportTime,
						timestamp : mydate,
						status : jsonstr.device.status,
						imsi : jsonstr.device.imsi,
						swver : jsonstr.device.swver,
						hwver : jsonstr.device.hwver,
						vol : jsonstr.device.vol,
						user_id : jsonstr.device.user_id
					} ]
				};
				data.newData(options);

				require([ 'http://api.map.baidu.com/api?v=2.0&ak=iOxsL9Z27dKiNtY5s4m8vRjUyZiNwZOC&callback=_baiduInit' ], function() {

					if (window.BMap && window.BMap.Map) {
						window._baiduInit();
					}
				});
				window._baiduInit = function() {

					var map = new BMap.Map(self.getIDByXID("allmap"));
					map.addControl(new BMap.MapTypeControl());
					map.enableScrollWheelZoom(true);
					var myGeo = new BMap.Geocoder();
					// 将地址解析结果显示在地图上,并调整地图视野
					var mypoint = new BMap.Point(jsonstr.device.coordinate.split(',')[0], jsonstr.device.coordinate.split(',')[1]);

					map.centerAndZoom(mypoint, 16);
					map.addOverlay(new BMap.Marker(mypoint));

					map.addEventListener("click", function(e) {
						map.clearOverlays();
						// alert(e.point.lng + "," + e.point.lat);
						marker = new BMap.Marker(new BMap.Point(e.point.lng, e.point.lat));
						map.addOverlay(marker);
						self.comp('input3').val(e.point.lng + ',' + e.point.lat);
						// $('#coorval').val(e.point.lng + ',' + e.point.lat);
					});

					// map.addOverlay(new BMap.Marker(point));
				};

			},
			error : function(xhr) {
				// justep.Util.hint("错误，请检查网络");
			}
		});
	};

	Model.prototype.button1Click = function(event) {
		var params = {
			data : {
				sn : devicesn
			}
		}
		justep.Shell.showPage(require.toUrl("./devicehistroy.w"), params);
	};

	Model.prototype.messageDialog1Yes = function(event) {
		var self = this;
		$.ajax({
			async : false,
			url : url + "apis/deletedevice",
			type : "GET",
			dataType : 'jsonp',
			jsonp : 'callback',
			timeout : 5000,
			data : {
				sn : devicesn
			},
			success : function(jsonstr) {// 客户端jquery预先定义好的callback函数,成功获取跨域服务器上的json数据后,会动态执行这个callback函数
				justep.Shell.fireEvent("refreshdevice", {
					id : 'id的值'
				});
				self.close();
			},
			error : function(xhr) {
				// justep.Util.hint("错误，请检查网络");
			}
		});
	};

	Model.prototype.deletedeviceBtnClick = function(event) {
		this.comp('messageDialog1').show();
	};

	return Model;
});