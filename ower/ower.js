define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function() {
		this.callParent();
	};

	Model.prototype.button1Click = function(event) {
		// this.comp('windowDialog1').open({src:
		// require.toUrl('./bindphone.w')});

	};

	Model.prototype.row2Click = function(event) {
		justep.Shell.showPage(require.toUrl('./bindphone.w'));
	};

	Model.prototype.row5Click = function(event) {
		justep.Shell.showPage(require.toUrl('./attchuser.w'));
	};
	
	Model.prototype.refreshdata = function(event) {
			var self = this;
		$.ajax({
			async : false,
			url : url + "apis/getuserinfo",
			type : "GET",
			dataType : 'jsonp',
			jsonp : 'callback',
			timeout : 5000,
			data : {
				openid : openid
			},
			success : function(jsonstr) {// 客户端jquery预先定义好的callback函数,成功获取跨域服务器上的json数据后,会动态执行这个callback函数
				$(self.getElementByXid("headimage")).attr('src', jsonstr.user.headurl);
				if (jsonstr.user.phone != null) {
					$(self.getElementByXid("span2")).text(jsonstr.user.phone);
				}else{
					$(self.getElementByXid("span2")).text('未绑定');
				}
				if (jsonstr.user.alertsms == 1) {
					self.comp('toggle1').set({
						'checked' : true
					});
				}
				if (jsonstr.user.alertwx == 1) {
					self.comp('toggle2').set({
						'checked' : true
					});
				}
				$(self.getElementByXid("span10")).text(jsonstr.usercount);
			},
			error : function(xhr) {
				// justep.Util.hint("错误，请检查网络");
			}
		});
	};

	Model.prototype.modelLoad = function(event) {
	justep.Shell.on("refreshdata", this.refreshdata, this);
	this.refreshdata();

	};

	Model.prototype.toggle1Change = function(event){
				var self = this;
				var status = 0;
				if(this.comp('toggle1').get('checked')){
				status =1;
				}else
				{
				status =0;
				}
		$.ajax({
			async : false,
			url : url + "apis/changealertsms",
			type : "GET",
			dataType : 'jsonp',
			jsonp : 'callback',
			timeout : 5000,
			data : {
				openid : openid,
				status :status
			},
			success : function(jsonstr) {// 客户端jquery预先定义好的callback函数,成功获取跨域服务器上的json数据后,会动态执行这个callback函数

			},
			error : function(xhr) {
				// justep.Util.hint("错误，请检查网络");
			}
		});

	};

	Model.prototype.toggle2Change = function(event){
				var self = this;
				var status = 0;
				if(this.comp('toggle2').get('checked')){
				status =1;
				}else
				{
				status =0;
				}
		$.ajax({
			async : false,
			url : url + "apis/changealertswx",
			type : "GET",
			dataType : 'jsonp',
			jsonp : 'callback',
			timeout : 5000,
			data : {
				openid : openid,
				status :status
			},
			success : function(jsonstr) {// 客户端jquery预先定义好的callback函数,成功获取跨域服务器上的json数据后,会动态执行这个callback函数

			},
			error : function(xhr) {
				// justep.Util.hint("错误，请检查网络");
			}
		});
	};

	return Model;
});