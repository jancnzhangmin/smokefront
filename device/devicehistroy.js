define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var sn;
	var Model = function() {
		this.callParent();
	};

	Model.prototype.refreshdata = function() {
		var self = this;
		$.ajax({
			async : false,
			url : url + "apis/getuserdevicehisory",
			type : "GET",
			dataType : 'jsonp',
			jsonp : 'callback',
			timeout : 5000,
			data : {
				sn : sn
			},
			success : function(jsonstr) {// 客户端jquery预先定义好的callback函数,成功获取跨域服务器上的json数据后,会动态执行这个callback函数
				var data = self.comp("devicehistroyData");
				data.clear();
				$.each(jsonstr.devicehistroy, function(i, item) {
					var dateTime = new Date(item.ctimestramp);
					var mydate = justep.Date.toString(dateTime, "yyyy-MM-dd hh:mm:ss");
					var options = {
						defaultValues : [ {
							id : item.id,
							name : item.name,
							sn : item.sn,
							ctimestramp : mydate,
							alarmstatus : item.alarmstatus
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

	Model.prototype.modelParamsReceive = function(event) {
		sn = event.params.data.sn;
		this.refreshdata();
	};

	Model.prototype.scrollView1PullDown = function(event) {
		this.refreshdata();
	};

	Model.prototype.row1Click = function(event) {
		var row = event.bindingContext.$object;
		var params = {
			data : {
				sn : row.val('sn'),
				id : row.val('id')
			}
		}
		justep.Shell.showPage(require.toUrl("./devicehistroydetail.w"), params);
	};

	return Model;
});