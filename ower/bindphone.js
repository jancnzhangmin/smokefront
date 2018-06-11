define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var mytimer;
	var phone;
	var Model = function() {
		this.callParent();
	};

	Model.prototype.validateBtnClick = function(event) {
		if (this.comp('phoneInput').val() == '') {
			this.comp('messageDialog1').show();
			return false;
		}
		;

		var timecount = 60;
		this.comp("validateBtn").set({
			"disabled" : true
		});
		var self = this;
		mytimer = window.setInterval(function() {
			self.comp("validateBtn").set({
				"label" : "重新发送" + timecount
			});
			timecount--;
			if (timecount < 0) {
				clearInterval(mytimer);
				self.comp("validateBtn").set({
					"disabled" : false,
					"label" : "获取验证码"
				});
			}

		}, 1000);

		$.ajax({
			async : false,
			url : url + "apis/sendvercode",
			type : "GET",
			dataType : 'jsonp',
			jsonp : 'callback',
			timeout : 5000,
			data : {
				openid : openid,
				phone : self.comp('phoneInput').val()
			},
			success : function(jsonstr) {// 客户端jquery预先定义好的callback函数,成功获取跨域服务器上的json数据后,会动态执行这个callback函数
				phone = self.comp('phoneInput').val();
			},
			error : function(xhr) {
				// justep.Util.hint("错误，请检查网络");
			}
		});

	};

	Model.prototype.modelUnLoad = function(event) {
		clearInterval(mytimer);
		justep.Shell.fireEvent("refreshdata", {
			id : 'id的值'
		});
	};

	Model.prototype.button2Click = function(event) {
		var self = this;
		$.ajax({
			async : false,
			url : url + "apis/bindphone",
			type : "GET",
			dataType : 'jsonp',
			jsonp : 'callback',
			timeout : 5000,
			data : {
				openid : openid,
				phone : phone,
				vercode : self.comp('input1').val()
			},
			success : function(jsonstr) {// 客户端jquery预先定义好的callback函数,成功获取跨域服务器上的json数据后,会动态执行这个callback函数
				if (jsonstr.status == 0) {
					self.comp('messageDialog2').show();
				} else {
					self.close();
				}

			},
			error : function(xhr) {
				// justep.Util.hint("错误，请检查网络");
			}
		});
	};

	return Model;
});