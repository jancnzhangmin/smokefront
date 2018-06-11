define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var wx = require("http://res.wx.qq.com/open/js/jweixin-1.2.0.js");
	var Model = function() {
		this.callParent();
	};

	Model.prototype.scanQRSpanClick = function(event) {
		var self = this;
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
					jsApiList : [ 'checkJsApi', 'scanQRCode' ]
				});

				wx.ready(function() {
					wx.checkJsApi({
						jsApiList : [ 'scanQRCode' ],
						success : function(res) {
							wx.scanQRCode({
								needResult : 1, // 默认为0，扫描结果由微信处理，1则直接返回扫描结果，
								scanType : [ "qrCode", "barCode" ], // 可以指定扫二维码还是一维码，默认二者都有
								success : function(res) {
									var result = res.resultStr.split(","); // 当needResult
									if (result.length == 2) {
										self.comp('qrInput').val(result[1]);
									} else {
										self.comp('qrInput').val('YGN' + result[0]);
									}
									// 为
									// 1 时，扫码返回的结果
									//self.comp('qrInput').val(result);

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

	Model.prototype.subbtnClick = function(event) {
		if (this.comp('qrInput').val() == '') {
			return false;
		}
		var self = this;
		$.ajax({
			async : false,
			url : url + "apis/checkdevice",
			type : "GET",
			dataType : 'jsonp',
			jsonp : 'callback',
			timeout : 5000,
			data : {
				sn : self.comp('qrInput').val()
			},
			success : function(jsonstr) {// 客户端jquery预先定义好的callback函数,成功获取跨域服务器上的json数据后,会动态执行这个callback函数
				if (jsonstr.status == 10000) {
					var params = {
						data : {
							sn : self.comp('qrInput').val()
						}
					}

					self.comp('qrInput').val('');
					justep.Shell.showPage(require.toUrl("./submitdevice.w"), params);

				} else if (jsonstr.status == 10001) {
					self.comp('messageDialog1').show({
						message : '设备已存在！'
					});
				} else {
					self.comp('messageDialog1').show({
						message : '无效设备号！'
					});
				}

			},
			error : function(xhr) {
				// justep.Util.hint("错误，请检查网络");
			}
		});
	};

	Model.prototype.modelLoad = function(event) {
		justep.Shell.on("refreshdevice", this.refreshdevice, this);
		this.refreshdevice();
	};

	Model.prototype.refreshdevice = function() {
		var self = this;
		$.ajax({
			async : false,
			url : url + "apis/getdevicelist",
			type : "GET",
			dataType : 'jsonp',
			jsonp : 'callback',
			timeout : 5000,
			data : {
				openid : openid
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
							user_id : item.user_id
						} ]
					};
					data.newData(options);
				});
			},
			error : function(xhr) {
				// justep.Util.hint("错误，请检查网络");
			}
		});
	}

	Model.prototype.li4Click = function(event) {
		var row = event.bindingContext.$object;
		var params = {
			data : {
				id : row.val('id')
			}
		}
		justep.Shell.showPage(require.toUrl("./devicedetail.w"), params);
	};

	return Model;
});