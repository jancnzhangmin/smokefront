define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function() {
		this.callParent();
	};

	Model.prototype.button1Click = function(event) {
		justep.Shell.showPage(require.toUrl('./binduser.w'));
	};

	Model.prototype.modelLoad = function(event) {
		this.refreshdata();
	};

	Model.prototype.refreshdata = function() {
		var self = this;
		$.ajax({
			async : false,
			url : url + "apis/getchildrenuser",
			type : "GET",
			dataType : 'jsonp',
			jsonp : 'callback',
			timeout : 5000,
			data : {
				openid : openid
			},
			success : function(jsonstr) {// 客户端jquery预先定义好的callback函数,成功获取跨域服务器上的json数据后,会动态执行这个callback函数
				var data = self.comp("userData");
				data.clear();
				$.each(jsonstr.user, function(i, item) {

					var options = {
						defaultValues : [ {
							id : item.id,
							openid : item.openid,
							headurl : item.headurl,
							phone : item.phone,
							sex : item.sex,
							status : item.status,
							up_id : item.up_id,
							devicecount : item.devicecount
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

	Model.prototype.row1Click = function(event) {
		var row = event.bindingContext.$object;
		var params = {
			data : {
				id : row.val('id'),
				phone : row.val('phone')
			}
		}
		justep.Shell.showPage(require.toUrl("./attchuserdetail.w"), params);
	};

	Model.prototype.modelActive = function(event) {
		this.refreshdata();
	};

	return Model;
});