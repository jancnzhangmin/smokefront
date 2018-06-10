define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function() {
		this.callParent();
	};

	Model.prototype.button2Click = function(event) {
		var self = this;
		$.ajax({
			async : false,
			url : url + "apis/binduser",
			type : "GET",
			dataType : 'jsonp',
			jsonp : 'callback',
			timeout : 5000,
			data : {
				phone:self.comp('phoneInput').val(),
				openid:openid
			},
			success : function(jsonstr) {// 客户端jquery预先定义好的callback函数,成功获取跨域服务器上的json数据后,会动态执行这个callback函数
				if (jsonstr.status == 1) {
					justep.Util.hint("绑定用户成功");
					self.close();
				} else if(jsonstr.status == 0) {
					justep.Util.hint("用户不存在");
				}else{
					justep.Util.hint("不能绑定自己");
				}
			},
			error : function(xhr) {
				// justep.Util.hint("错误，请检查网络");
			}
		});
	};

	Model.prototype.modelUnLoad = function(event) {
		justep.Shell.fireEvent("refreshdata", {
			id : 'id的值'
		});
	};

	Model.prototype.modelLoad = function(event){

	};

	return Model;
});