define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var wx = require("http://res.wx.qq.com/open/js/jweixin-1.2.0.js");
	var map;
	var myGeo;
	var marker;
	var Model = function() {
		this.callParent();
	};

	Model.prototype.modelLoad = function(event) {
		var self = this;
		require([ 'http://api.map.baidu.com/api?v=2.0&ak=iOxsL9Z27dKiNtY5s4m8vRjUyZiNwZOC&callback=_baiduInit' ], function() {

			if (window.BMap && window.BMap.Map) {
				window._baiduInit();
			}
		});
		window._baiduInit = function() {

			map = new BMap.Map(self.getIDByXID("allmap"));
			map.addControl(new BMap.MapTypeControl());
			map.enableScrollWheelZoom(true);
			myGeo = new BMap.Geocoder();
			// 将地址解析结果显示在地图上,并调整地图视野
			var mypoint = new BMap.Point();
			myGeo.getPoint('昆明', function(point) {
				if (point) {
					mypoint = point;
					map.centerAndZoom(point, 16);
					map.addOverlay(new BMap.Marker(point));

				}
			}, "昆明市");

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

		$.ajax({
			async : false,
			url : url + "apis/sign",
			type : "GET",
			dataType : 'jsonp',
			jsonp : 'callback',
			timeout : 5000,
			data : {
				url : window.location.href
			},
			success : function(jsonstr) {// 客户端jquery预先定义好的callback函数,成功获取跨域服务器上的json数据后,会动态执行这个callback函数
				wx.config({
					debug : false,
					appId : jsonstr.appId,
					timestamp : jsonstr.timestamp,
					nonceStr : jsonstr.nonceStr,
					signature : jsonstr.signature,
					jsApiList : [ 'checkJsApi', 'getLocation' ]
				});

				wx.ready(function() {
					wx.checkJsApi({
						jsApiList : [ 'getLocation' ],
						success : function(res) {
							wx.getLocation({
								type : 'wgs84', // 默认为wgs84的gps坐标，如果要返回直接给openLocation用的火星坐标，可传入'gcj02'
								success : function(res) {
									var latitude = res.latitude; // 纬度，浮点数，范围为90
									// ~ -90
									var longitude = res.longitude; // 经度，浮点数，范围为180
									// ~ -180。
									var speed = res.speed; // 速度，以米/每秒计
									var accuracy = res.accuracy; // 位置精度

								}
							});
						}
					});

				});

			},
			error : function(xhr) {
				justep.Util.hint("错误，请检查网络");
			}
		});



	};

	Model.prototype.movemap = function(address) {
		var self = this;
		myGeo.getPoint(address, function(point) {
			if (point) {
				map.clearOverlays();
				mypoint = point;
				// map.centerAndZoom(point, 12);
				marker = new BMap.Marker(point);
				map.addOverlay(marker);
				map.panTo(point);
				self.comp('input3').val(point.lng + ',' + point.lat);
			}
		}, address);
	};

	Model.prototype.modelParamsReceive = function(event) {

		this.comp('snInput').val(event.params.data.sn);
				var self = this;
		$.ajax({
			async : false,
			url : url + "apis/getdevicebysn",
			type : "GET",
			dataType : 'jsonp',
			jsonp : 'callback',
			timeout : 5000,
			data : {
				sn : self.comp('snInput').val()
			},
			success : function(jsonstr) {// 客户端jquery预先定义好的callback函数,成功获取跨域服务器上的json数据后,会动态执行这个callback函数
				if (jsonstr.status == '10000') {
					self.comp('input1').val(jsonstr.device.model);
					self.comp('input2').val(jsonstr.device.floor);
					self.comp('input3').val(jsonstr.device.coordinate);
				}

			},
			error : function(xhr) {
				// justep.Util.hint("错误，请检查网络");
			}
		});
	};

	Model.prototype.submitbtnClick = function(event) {
		var self = this;
		$.ajax({
			async : false,
			url : url + "apis/subscribedevice",
			type : "GET",
			dataType : 'jsonp',
			jsonp : 'callback',
			timeout : 5000,
			data : {
				openid : openid,
				model : self.comp('input1').val(),
				floor : self.comp('input2').val(),
				coor : self.comp('input3').val(),
				address : self.comp('provinceSelect1').val() + self.comp('citySelect1').val() + self.comp('districtSelect1').val() + self.comp('input4').val(),
				sn : self.comp('snInput').val()
			},
			success : function(jsonstr) {// 客户端jquery预先定义好的callback函数,成功获取跨域服务器上的json数据后,会动态执行这个callback函数
				justep.Util.hint("设备绑定成功！");
				self.close();

			},
			error : function(xhr) {
				// justep.Util.hint("错误，请检查网络");
			}
		});
	};

	Model.prototype.provinceSelect1Change = function(event) {
		var data = this.comp("provinceData");
		data.clear();
		var options = {
			defaultValues : [ {
				province : this.comp("provinceSelect1").val()

			} ]
		};
		data.newData(options);
		this.movemap(this.comp('provinceSelect1').val() + this.comp('citySelect1').val() + this.comp('districtSelect1').val() + this.comp('input4').val());

	};

	Model.prototype.citySelect1Change = function(event) {
		var data = this.comp("cityData");
		data.clear();
		var options = {
			defaultValues : [ {
				city : this.comp("citySelect1").val()

			} ]
		};
		data.newData(options);
		this.movemap(this.comp('provinceSelect1').val() + this.comp('citySelect1').val() + this.comp('districtSelect1').val() + this.comp('input4').val());
	};

	Model.prototype.districtSelect1Change = function(event) {
		this.movemap(this.comp('provinceSelect1').val() + this.comp('citySelect1').val() + this.comp('districtSelect1').val() + this.comp('input4').val());
	};

	Model.prototype.input4Keyup = function(event) {
		address = event.currentTarget.value;
		this.movemap(this.comp('provinceSelect1').val() + this.comp('citySelect1').val() + this.comp('districtSelect1').val() + address);
	};

	Model.prototype.modelUnLoad = function(event) {
		justep.Shell.fireEvent("refreshdevice", {
			id : 'id的值'
		});
	};

	return Model;
});