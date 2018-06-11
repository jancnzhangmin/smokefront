define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var userid;
	var Model = function() {
		this.callParent();
	};

	Model.prototype.modelParamsReceive = function(event) {
		var self = this;
		userid = event.params.data.id;
		$.ajax({
			async : false,
			url : url + "apis/getcanbingdevicelist",
			type : "GET",
			dataType : 'jsonp',
			jsonp : 'callback',
			timeout : 5000,
			data : {
				openid : openid,
				userid : userid
			},
			success : function(jsonstr) {// 客户端jquery预先定义好的callback函数,成功获取跨域服务器上的json数据后,会动态执行这个callback函数
				var data = self.comp("deviceData");
				data.clear();
				$.each(jsonstr.devices, function(i, item) {

					var options = {
						defaultValues : [ {
							id : item.id,
							name : item.name,
							sn : item.sn,
							model : item.model,
							coordinate : item.coordinate,
							address : item.address,
							floor : item.floor,
							power : item.power,
							powerstatu : item.powerstatu,
							reportTime : item.reportTime,
							timestamp : item.timestamp,
							status : item.status,
							imsi : item.imsi,
							swver : item.swver,
							hwver : item.hwver,
							vol : item.vol,
							user_id : item.user_id,
							select : 0
						} ]
					};
					data.newData(options);
				});
			},
			error : function(xhr) {
				// justep.Util.hint("错误，请检查网络");
			}
		});
	};

	Model.prototype.li4Click = function(event) {
		var row = event.bindingContext.$object;
		// $.each(this.comp('deviceData'), function(i, item) {
		// if (item.id == row.val('id')) {
		// if (item.select == 0) {
		// item.select = 1
		// } else {
		// item.select = 0
		// }
		// }
		// });

		this.comp('deviceData').each(function(param) {
			// names.push(param.row.val('fName'));
			if (row.val('id') == param.row.val('id')) {
				if (param.row.val('select') == 1) {
					param.row.val('select', 0);
				} else {
					param.row.val('select', 1);
				}
			}

		});

	};

	Model.prototype.button1Click = function(event) {

		var devicearr = [];
		this.comp('deviceData').each(function(param) {
			if (param.row.val('select') == 1) {
				devicearr.push(param.row.val('id'))
			}
		});

		var self = this;
		$.ajax({
			async : false,
			url : url + "apis/bindattchuserdevice",
			type : "GET",
			dataType : 'jsonp',
			jsonp : 'callback',
			timeout : 5000,
			data : {
				id : userid,
				deviceid : devicearr
			},
			success : function(jsonstr) {// 客户端jquery预先定义好的callback函数,成功获取跨域服务器上的json数据后,会动态执行这个callback函数
				self.close();

			},
			error : function(xhr) {
				// justep.Util.hint("错误，请检查网络");
			}
		});
	};

	return Model;
});