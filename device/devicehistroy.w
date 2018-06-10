<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="left:18px;top:83px;height:244px;" onParamsReceive="modelParamsReceive"> 
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="devicehistroyData" idColumn="id" confirmRefresh="false"><column name="id" type="String" xid="xid1"></column>
  <column name="sn" type="String" xid="xid2"></column>
  <column name="ctimestramp" type="String" xid="xid3"></column>
  <column name="alarmstatus" type="String" xid="xid4"></column></div></div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" title="设备历史"
          class="x-titlebar" style="background-color:white;">
          <div class="x-titlebar-left"> 
            <a component="$UI/system/components/justep/button/button"
              label="" class="btn btn-link btn-only-icon" icon="icon-chevron-left"
              onClick="{operation:'window.close'}" xid="backBtn" style="color:#808080;"> 
              <i class="icon-chevron-left"/>  
              <span></span> 
            </a> 
          </div>  
          <div class="x-titlebar-title" style="color:#808080;font-weight:lighter;">设备历史</div>  
          <div class="x-titlebar-right reverse"> 
          </div>
        </div> 
      </div>  
    <div class="x-panel-content x-cards x-scroll-view" xid="content1" _xid="C7F2F8B788C000016C642FD014203D10" style="bottom: 0px; background-size: cover; background-image: url(http://localhost:44285/x5/UI2/v_/smokefront/device/none);"><div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView" xid="scrollView1" style="margin-top:10px;" onPullDown="scrollView1PullDown">
   <div class="x-content-center x-pull-down container" xid="div1">
    <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i1"></i>
    <span class="x-pull-down-label" xid="span1">下拉刷新...</span></div> 
   <div class="x-scroll-content" xid="div2"><div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="devicehistroyData">
   <ul class="x-list-template" xid="listTemplateUl1">
    <li xid="li1" class="list-group-item" style="padding:0px;"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row1" bind-click="row1Click" style="padding-top:8px;padding-bottom:8px;">
   <div class="x-col" xid="col3"><span xid="span4" bind-text='val("ctimestramp")'></span></div>
  <div class="x-col x-col-fixed text-right" xid="col4" style="width:90px;"><i xid="i2" class="fa fa-warning text-danger" bind-visible=' val("alarmstatus") == 1'></i><span xid="span3" class="text-danger" bind-visible=' val("alarmstatus") == 1'><![CDATA[烟感报警]]></span>
  </div></div></li></ul> </div></div>
   <div class="x-content-center x-pull-up" xid="div3">
    <span class="x-pull-up-label" xid="span2">加载更多...</span></div> </div></div>
  </div> 
<resource xid="resource2"><require xid="require1" url="css!$UI/smokefront/font-awesome-4.7.0/css/fa.icons"></require></resource></div>