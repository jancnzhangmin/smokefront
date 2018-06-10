define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
var userid;
	var Model = function(){
		this.callParent();
	};
	
	Model.prototype.refreshdata = function(){
			var self = this;
		$.ajax({
			async : false,
			url : url + "apis/getattchuserdetail",
			type : "GET",
			dataType : 'jsonp',
			jsonp : 'callback',
			timeout : 5000,
			data : {
				id : userid
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
	};
	

	Model.prototype.modelParamsReceive = function(event){
	
	this.comp('title').set({'title':event.params.data.phone});
	userid = event.params.data.id;
	this.refreshdata();

	};

	Model.prototype.button1Click = function(event){
					var params = {
						data : {
							id : userid
						}
					}
					justep.Shell.showPage(require.toUrl("./binduserdevice.w"), params);
	};

	Model.prototype.i2Click = function(event){
	var row = event.bindingContext.$object;
		var self = this;
		$.ajax({
			async : false,
			url : url + "apis/removedevice",
			type : "GET",
			dataType : 'jsonp',
			jsonp : 'callback',
			timeout : 5000,
			data : {
				userid : userid,
				deviceid:row.val('id')
			},
			success : function(jsonstr) {// 客户端jquery预先定义好的callback函数,成功获取跨域服务器上的json数据后,会动态执行这个callback函数
self.refreshdata();
			},
			error : function(xhr) {
				// justep.Util.hint("错误，请检查网络");
			}
		});
	};

	Model.prototype.modelActive = function(event){
this.refreshdata();
	};

	return Model;
});