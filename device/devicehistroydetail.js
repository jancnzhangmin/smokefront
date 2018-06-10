define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function() {
		this.callParent();
	};

	Model.prototype.modelParamsReceive = function(event) {
		this.comp('title').set({
			'title' : event.params.data.sn
		})
		var self = this;
		$.ajax({
			async : false,
			url : url + "apis/getdevicehistroydetail",
			type : "GET",
			dataType : 'jsonp',
			jsonp : 'callback',
			timeout : 5000,
			data : {
				id : event.params.data.id
			},
			success : function(jsonstr) {// 客户端jquery预先定义好的callback函数,成功获取跨域服务器上的json数据后,会动态执行这个callback函数
				var data = self.comp("devicehistroyData");
				data.clear();

				// var dateTime = new Date(item.ctimestramp);
				// var mydate = justep.Date.toString(dateTime, "yyyy-MM-dd
				// hh:mm:ss");
				var options = {
					defaultValues : [ {
						id : jsonstr.devicehistroy.id,
						sn : jsonstr.devicehistroy.sn,
						imsi : jsonstr.devicehistroy.imsi,
						swver : jsonstr.devicehistroy.swver,
						hwver : jsonstr.devicehistroy.hwver,
						vol : jsonstr.devicehistroy.vol,
						alarmstatus : jsonstr.devicehistroy.alarmstatus,
						rsrp : jsonstr.devicehistroy.rsrp,
						sinr : jsonstr.devicehistroy.sinr,
						wsc : jsonstr.devicehistroy.wsc,
						ctime : jsonstr.devicehistroy.ctime,
						vol2 : jsonstr.devicehistroy.vol2

					} ]
				};
				data.newData(options);

			},
			error : function(xhr) {
				// justep.Util.hint("错误，请检查网络");
			}
		});
	};

	return Model;
});