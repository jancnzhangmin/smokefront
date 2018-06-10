<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="left:18px;top:83px;height:244px;" onLoad="modelLoad" onActive="modelActive"> 
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="userData" idColumn="id">
   <column name="id" type="String" xid="xid1"></column>
  <column name="openid" type="String" xid="xid2"></column>
  <column name="headurl" type="String" xid="xid3"></column>
  <column name="phone" type="String" xid="xid4"></column>
  <column name="sex" type="String" xid="xid5"></column>
  <column name="status" type="String" xid="xid6"></column>
  <column name="up_id" type="String" xid="xid7"></column>
  <column name="nickname" type="String" xid="xid8"></column>
  <column name="devicecount" type="String" xid="xid9"></column></div></div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" title="附属用户"
          class="x-titlebar" style="background-color:white;">
          <div class="x-titlebar-left"> 
            <a component="$UI/system/components/justep/button/button"
              label="" class="btn btn-link btn-only-icon" icon="icon-chevron-left"
              onClick="{operation:'window.close'}" xid="backBtn" style="color:#808080;"> 
              <i class="icon-chevron-left"/>  
              <span></span> 
            </a> 
          </div>  
          <div class="x-titlebar-title" style="color:#808080;font-weight:lighter;">附属用户</div>  
          <div class="x-titlebar-right reverse"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-green-font" label="绑定用户" xid="button1" bind-click="button1Click">
   <i xid="i1"></i>
   <span xid="span1">绑定用户</span></a></div>
        </div> 
      </div>  
    <div class="x-panel-content x-cards" xid="content1"><div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="userData">
   <ul class="x-list-template" xid="listTemplateUl1">
    <li xid="li1" class="list-group-item" style="padding:0px;"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row1" bind-click="row1Click">
   <div class="x-col" xid="col1"><img src=" " alt="" xid="image1" style="width:40px;" bind-attr-src=' val("headurl")' class="roundimg"></img><span xid="span2" bind-text='val("phone")'></span>
  </div>
   <div class="x-col text-right" xid="col3" style="padding-top:15px;"><span xid="span4" bind-text="'设备 ' + val(&quot;devicecount&quot;)"><![CDATA[设备 3]]></span><i xid="i3" class="fa fa-chevron-right" style="width:20px;color:#808080;"></i>
  </div></div></li></ul> </div></div>
  </div> 
<resource xid="resource2"><require xid="require1" url="css!$UI/smokefront/font-awesome-4.7.0/css/fa.icons"></require></resource></div>