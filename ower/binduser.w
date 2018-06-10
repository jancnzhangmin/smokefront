<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="left:18px;top:83px;height:244px;" onunLoad="modelUnLoad" onLoad="modelLoad"> 
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="userData" idColumn="id"><column name="id" type="String" xid="xid1"></column>
  <column name="openid" type="String" xid="xid2"></column>
  <column name="headurl" type="String" xid="xid3"></column>
  <column name="phone" type="String" xid="xid4"></column>
  <column name="sex" type="String" xid="xid5"></column>
  <column name="status" type="String" xid="xid6"></column>
  <column name="up_id" type="String" xid="xid7"></column>
  <column name="nickname" type="String" xid="xid8"></column></div></div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" title="绑定用户"
          class="x-titlebar" style="background-color:white;">
          <div class="x-titlebar-left"> 
            <a component="$UI/system/components/justep/button/button"
              label="" class="btn btn-link btn-only-icon" icon="icon-chevron-left"
              onClick="{operation:'window.close'}" xid="backBtn" style="color:#808080;"> 
              <i class="icon-chevron-left"/>  
              <span></span> 
            </a> 
          </div>  
          <div class="x-titlebar-title" style="color:#808080;font-weight:lighter;">绑定用户</div>  
          <div class="x-titlebar-right reverse"> 
          </div>
        </div> 
      </div>  
    <div class="x-panel-content x-cards" xid="content1"><div component="$UI/system/components/justep/smartContainer/smartContainer" class="x-smartcontainer" xid="smartContainer1" style="margin-top:5px;">
   <div component="$UI/system/components/justep/row/row" class="x-row list-group-item" xid="row2" style="padding-bottom:0px;">
    <div class="x-col" xid="col6">
     <div class="input-group" component="$UI/system/components/bootstrap/inputGroup/inputGroup" xid="inputGroup4">
      <span class="input-group-addon" xid="span4"><![CDATA[用户手机]]></span>
      <input type="number" class="form-control" component="$UI/system/components/justep/input/input" xid="phoneInput" placeHolder="手机号码" dataType="Integer" pattern="[0-9]*"></input></div> </div> </div> 
   
   <div component="$UI/system/components/justep/row/row" class="x-row" xid="row4" style="margin-top:20px;">
    <div class="x-col" xid="col12">
     <a component="$UI/system/components/justep/button/button" class="btn btn-block btn-green" label="绑定" xid="button2" onClick="button2Click">
      <i xid="i2"></i>
      <span xid="span3">绑定</span></a> </div> </div> </div></div>
  </div> 
</div>