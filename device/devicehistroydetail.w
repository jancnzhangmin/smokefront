<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="top:44px;left:82px;height:auto;" onParamsReceive="modelParamsReceive"> 
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="devicehistroyData" idColumn="id"><column name="id" type="String" xid="xid1"></column>
  <column name="sn" type="String" xid="xid2"></column>
  <column name="imsi" type="String" xid="xid3"></column>
  <column name="swver" type="String" xid="xid4"></column>
  <column name="hwver" type="String" xid="xid5"></column>
  <column name="vol" type="String" xid="xid6"></column>
  <column name="alarmstatus" type="String" xid="xid7"></column>
  <column name="rsrp" type="String" xid="xid8"></column>
  <column name="sinr" type="String" xid="xid9"></column>
  <column name="wsc" type="String" xid="xid10"></column>
  <column name="ctime" type="String" xid="xid11"></column>
  <column name="vol2" type="String" xid="xid12"></column></div></div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" style="background-color:white;" xid="title">
          <div class="x-titlebar-left"> 
            <a component="$UI/system/components/justep/button/button"
              label="" class="btn btn-link btn-only-icon" icon="icon-chevron-left"
              onClick="{operation:'window.close'}" xid="backBtn" style="color:#808080;"> 
              <i class="icon-chevron-left"/>  
              <span></span> 
            </a> 
          </div>  
          <div class="x-titlebar-title" style="color:#808080;font-weight:lighter;font-size:small;padding-top:16px;"></div>  
          <div class="x-titlebar-right reverse"> 
          </div>
        </div> 
      </div>  
    <div class="x-panel-content x-cards" xid="content1"><div component="$UI/system/components/justep/smartContainer/smartContainer" class="x-smartcontainer" xid="smartContainer1"><div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="devicehistroyData">
   <ul class="x-list-template" xid="listTemplateUl1">
    <li xid="li1" class="list-group-item" style="padding:0px;"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row1" style="padding-top:8px;padding-bottom:8px">
   <div class="x-col" xid="col2"><span xid="span1"><![CDATA[imsi]]></span></div>
   <div class="x-col text-right" xid="col3"><span xid="span2" bind-text='val("imsi")'></span></div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row2" style="border-top-style:solid;border-top-width:1px;border-top-color:#F0F0F0;padding-top:8px;padding-bottom:8px">
   <div class="x-col" xid="col4">
    <span xid="span4"><![CDATA[软件版本]]></span></div> 
   <div class="x-col text-right" xid="col5">
    <span xid="span3" bind-text='val("swver")'></span></div> </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row3" style="border-top-style:solid;border-top-width:1px;border-top-color:#F0F0F0;padding-top:8px;padding-bottom:8px">
   <div class="x-col" xid="col6">
    <span xid="span6"><![CDATA[硬件版本]]></span></div> 
   <div class="x-col text-right" xid="col7">
    <span xid="span5" bind-text='val("hwver")'></span></div> </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row4" style="border-top-style:solid;border-top-width:1px;border-top-color:#F0F0F0;padding-top:8px;padding-bottom:8px">
   <div class="x-col" xid="col8">
    <span xid="span8"><![CDATA[烟感头电压]]></span></div> 
   <div class="x-col text-right" xid="col9">
    <span xid="span7" bind-text='val("vol")'></span></div> </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row5" style="border-top-style:solid;border-top-width:1px;border-top-color:#F0F0F0;padding-top:8px;padding-bottom:8px">
   <div class="x-col" xid="col10">
    <span xid="span10"><![CDATA[报警状态]]></span></div> 
   <div class="x-col text-right" xid="col11">
    <i xid="i1" class="fa fa-warning text-danger" bind-visible=' val("alarmstatus") == 1'></i><i xid="i2" class="fa fa-check text-success" bind-visible=' val("alarmstatus") == 0'></i><span xid="span9" bind-css="val(&quot;alarmstatus&quot;) == 1 ? 'text-danger' : 'text-success'" bind-text=" val(&quot;alarmstatus&quot;) == 1?'烟感报警':'正常'"></span>
  </div> </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row6" style="border-top-style:solid;border-top-width:1px;border-top-color:#F0F0F0;padding-top:8px;padding-bottom:8px">
   <div class="x-col" xid="col12">
    <span xid="span12"><![CDATA[信号强度]]></span></div> 
   <div class="x-col text-right" xid="col13">
    <span xid="span11" bind-text='val("rsrp")'></span></div> </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row7" style="border-top-style:solid;border-top-width:1px;border-top-color:#F0F0F0;padding-top:8px;padding-bottom:8px">
   <div class="x-col" xid="col14">
    <span xid="span14"><![CDATA[信噪比]]></span></div> 
   <div class="x-col text-right" xid="col15">
    <span xid="span13" bind-text='val("sinr")'></span></div> </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row8" style="border-top-style:solid;border-top-width:1px;border-top-color:#F0F0F0;padding-top:8px;padding-bottom:8px">
   <div class="x-col" xid="col16">
    <span xid="span16"><![CDATA[覆盖等级]]></span></div> 
   <div class="x-col text-right" xid="col17">
    <span xid="span15" bind-text='$model.devicehistroyData.val("wsc")'></span></div> </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row9" style="border-top-style:solid;border-top-width:1px;border-top-color:#F0F0F0;padding-top:8px;padding-bottom:8px">
   <div class="x-col" xid="col18">
    <span xid="span18"><![CDATA[上报时间戳]]></span></div> 
   <div class="x-col text-right" xid="col19">
    <span xid="span17" bind-text='val("ctime")'></span></div> </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row10" style="border-top-style:solid;border-top-width:1px;border-top-color:#F0F0F0;padding-top:8px;padding-bottom:8px">
   <div class="x-col" xid="col20">
    <span xid="span20"><![CDATA[通讯版电压]]></span></div> 
   <div class="x-col text-right" xid="col21">
    <span xid="span19" bind-text='val("vol2")'></span></div> </div></li></ul> </div></div>
  </div>
  </div> 
<resource xid="resource2"><require xid="require1" url="css!$UI/smokefront/font-awesome-4.7.0/css/fa.icons"></require></resource></div>