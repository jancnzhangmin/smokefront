<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="top:44px;left:38px;height:auto;" onunLoad="modelUnLoad"> 
  </div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" title="绑定手机"
          class="x-titlebar" style="background-color:white;">
          <div class="x-titlebar-left"> 
            <a component="$UI/system/components/justep/button/button"
              label="" class="btn btn-link btn-only-icon" icon="icon-chevron-left"
              onClick="{operation:'window.close'}" xid="backBtn" style="color:#808080;"> 
              <i class="icon-chevron-left"/>  
              <span></span> 
            </a> 
          </div>  
          <div class="x-titlebar-title" style="color:#808080;font-weight:lighter;">绑定手机</div>  
          <div class="x-titlebar-right reverse"> 
          </div>
        </div> 
      </div>  
    <div class="x-panel-content x-cards" xid="content1"><div component="$UI/system/components/justep/smartContainer/smartContainer" class="x-smartcontainer" xid="smartContainer1" style="margin-top:5px;"><div component="$UI/system/components/justep/row/row" class="x-row list-group-item" xid="row2" style="padding-bottom:0px;">
   <div class="x-col" xid="col6"><div class="input-group" component="$UI/system/components/bootstrap/inputGroup/inputGroup" xid="inputGroup4">
     <span class="input-group-addon" xid="span4"><![CDATA[　手机]]></span>
     <input type="number" class="form-control" component="$UI/system/components/justep/input/input" xid="phoneInput" placeHolder="手机号码" dataType="Integer" pattern="[0-9]*"></input></div></div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row  list-group-item" xid="row3" style="padding-bottom:0px;">
   <div class="x-col" xid="col8"><div class="input-group" component="$UI/system/components/bootstrap/inputGroup/inputGroup" xid="inputGroup1">
   <span class="input-group-addon" xid="span1"><![CDATA[验证码]]></span>
   <input type="text" class="form-control" component="$UI/system/components/justep/input/input" xid="input1" placeHolder="手机验证码"></input></div></div>
   <div class="x-col x-col-fixed" xid="col9" style="width:105px;"><a component="$UI/system/components/justep/button/button" class="btn btn-green" label="获取验证码" xid="validateBtn" bind-click="validateBtnClick">
   <i xid="i1"></i>
   <span xid="span2">获取验证码</span></a></div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row4" style="margin-top:20px;">
   <div class="x-col" xid="col12"><a component="$UI/system/components/justep/button/button" class="btn btn-block btn-green" label="提交" xid="button2" onClick="button2Click">
   <i xid="i2"></i>
   <span xid="span3">提交</span></a></div></div></div></div>
  </div> 
<span component="$UI/system/components/justep/messageDialog/messageDialog" xid="messageDialog1" message="手机号码不能为空"></span><span component="$UI/system/components/justep/messageDialog/messageDialog" xid="messageDialog2" message="验证码无效"></span></div>