<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="left:18px;top:83px;height:244px;" onParamsReceive="modelParamsReceive"> 
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="deviceData" idColumn="id">
   <column name="id" type="String" xid="xid1"></column>
   <column name="name" type="String" xid="xid2"></column>
   <column name="sn" type="String" xid="xid3"></column>
   <column name="model" type="String" xid="xid4"></column>
   <column name="coordinate" type="String" xid="xid5"></column>
   <column name="address" type="String" xid="xid6"></column>
   <column name="floor" type="String" xid="xid7"></column>
   <column name="power" type="String" xid="xid8"></column>
   <column name="powerstatu" type="String" xid="xid9"></column>
   <column name="reportTime" type="String" xid="xid10"></column>
   <column name="timestamp" type="String" xid="xid11"></column>
   <column name="status" type="String" xid="xid12"></column>
   <column name="imsi" type="String" xid="xid13"></column>
   <column name="swver" type="String" xid="xid14"></column>
   <column name="hwver" type="String" xid="xid15"></column>
   <column name="vol" type="String" xid="xid16"></column>
   <column name="user_id" type="String" xid="xid17"></column></div></div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" title="设备"
          class="x-titlebar" style="background-color:white;">
          <div class="x-titlebar-left"> 
            <a component="$UI/system/components/justep/button/button"
              label="" class="btn btn-link btn-only-icon" icon="icon-chevron-left"
              onClick="{operation:'window.close'}" xid="backBtn" style="color:#808080;"> 
              <i class="icon-chevron-left"/>  
              <span></span> 
            </a> 
          </div>  
          <div class="x-titlebar-title" style="color:#808080;font-weight:lighter;">设备</div>  
          <div class="x-titlebar-right reverse"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-green-font" label="设备历史" xid="button1" onClick="button1Click">
   <i xid="i2"></i>
   <span xid="span26">设备历史</span></a></div>
        </div> 
      </div>  
    <div class="x-panel-content x-cards" xid="content1"><div component="$UI/system/components/bootstrap/accordion/accordion" class="panel-group" xid="accordion1" style="margin-bottom:0px;">
   <div class="panel panel-default" component="$UI/system/components/bootstrap/panel/panel" xid="panel2">
     
    <div class="panel-collapse collapse in" xid="div1">
     <div class="panel-body" xid="div2" style="padding:0px;"><div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="deviceData">
   <ul class="x-list-template" xid="listTemplateUl1" style="margin-bottom:0px;">
    <li xid="li1" class="list-group-item" style="padding:0px;"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row1">
   <div class="x-col x-col-fixed" xid="col2" style="width:70px;"><span xid="span1" style="width:80px;"><![CDATA[设备SN]]></span></div>
   <div class="x-col" xid="col3"><span xid="span2" bind-text='val("sn")'></span></div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row2" style="border-top-style:solid;border-top-width:1px;border-top-color:#F0F0F0;">
   <div class="x-col x-col-fixed" xid="col4" style="width:70px;">
    <span xid="span4" style="width:80px;"><![CDATA[设备名称]]></span></div> 
   <div class="x-col" xid="col5">
    <span xid="span3" bind-text='val("name")'></span></div> </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row3" style="border-top-style:solid;border-top-width:1px;border-top-color:#F0F0F0;">
   <div class="x-col x-col-fixed" xid="col6" style="width:70px;">
    <span xid="span6" style="width:80px;"><![CDATA[型号]]></span></div> 
   <div class="x-col" xid="col7">
    <span xid="span5" bind-text='val("model")'></span></div> </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row4" style="border-top-style:solid;border-top-width:1px;border-top-color:#F0F0F0;">
   <div class="x-col x-col-fixed" xid="col8" style="width:70px;">
    <span xid="span8" style="width:80px;"><![CDATA[安装地址]]></span></div> 
   <div class="x-col" xid="col9">
    <span xid="span7" bind-text='val("address")'></span></div> </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row5" style="border-top-style:solid;border-top-width:1px;border-top-color:#F0F0F0;">
   <div class="x-col x-col-fixed" xid="col10" style="width:70px;">
    <span xid="span10" style="width:80px;"><![CDATA[楼层]]></span></div> 
   <div class="x-col" xid="col11">
    <span xid="span9" bind-text='val("floor")'></span></div> </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row6" style="border-top-style:solid;border-top-width:1px;border-top-color:#F0F0F0;">
   <div class="x-col x-col-fixed" xid="col13" style="width:70px;">
    <span xid="span12" style="width:80px;"><![CDATA[电量]]></span></div> 
   <div class="x-col" xid="col12">
    <span xid="span11" bind-text='val("power")'></span></div> </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row7" style="border-top-style:solid;border-top-width:1px;border-top-color:#F0F0F0;">
   <div class="x-col x-col-fixed" xid="col15" style="width:70px;">
    <span xid="span14" style="width:80px;"><![CDATA[imsi]]></span></div> 
   <div class="x-col" xid="col14">
    <span xid="span13" bind-text='val("imsi")'></span></div> </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row8" style="border-top-style:solid;border-top-width:1px;border-top-color:#F0F0F0;">
   <div class="x-col x-col-fixed" xid="col17" style="width:70px;">
    <span xid="span16" style="width:80px;"><![CDATA[swver]]></span></div> 
   <div class="x-col" xid="col16">
    <span xid="span15" bind-text='val("swver")'></span></div> </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row9" style="border-top-style:solid;border-top-width:1px;border-top-color:#F0F0F0;">
   <div class="x-col x-col-fixed" xid="col19" style="width:70px;">
    <span xid="span18" style="width:80px;"><![CDATA[hwver]]></span></div> 
   <div class="x-col" xid="col18">
    <span xid="span17" bind-text='$model.deviceData.val("hwver")'></span></div> </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row10" style="border-top-style:solid;border-top-width:1px;border-top-color:#F0F0F0;">
   <div class="x-col x-col-fixed" xid="col21" style="width:70px;">
    <span xid="span20" style="width:80px;"><![CDATA[最后同步]]></span></div> 
   <div class="x-col" xid="col20">
    <span xid="span19" bind-text='$model.deviceData.val("timestamp")'></span></div> </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row11" style="border-top-style:solid;border-top-width:1px;border-top-color:#F0F0F0;">
   <div class="x-col x-col-fixed" xid="col22" style="width:70px;">
    <span xid="span22" style="width:80px;"><![CDATA[设备状态]]></span></div> 
   <div class="x-col text-right" xid="col23">
    <span xid="span21" class="text-success" bind-visible=' val("status") != 1'><![CDATA[正常]]></span>
  <span xid="span23" class="text-danger" bind-visible=' val("status") == 1'><![CDATA[异常]]></span></div> </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row12" style="border-top-style:solid;border-top-width:1px;border-top-color:#F0F0F0;">
   <div class="x-col x-col-fixed" xid="col24" style="width:70px;">
    <span xid="span25" style="width:80px;"><![CDATA[坐标]]></span></div> 
   <div class="x-col" xid="col25">
    <span xid="span24" bind-text='val("coordinate")'></span></div> </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row13">
   <div class="x-col" xid="col27"><a component="$UI/system/components/justep/button/button" class="btn btn-sm btn-block btn-outline" label="删除设备" xid="deletedeviceBtn" onClick="deletedeviceBtnClick">
   <i xid="i3"></i>
   <span xid="span27">删除设备</span></a></div></div></li></ul> </div></div></div> <div class="panel-heading" xid="heading1">
     <h4 class="panel-title text-center" xid="h41">
      <a xid="a1"><![CDATA[]]><i xid="i1" class="fa fa-unsorted"></i></a></h4> 
  </div></div> </div>
  <div xid="allmap" style="width:100%;height:100%;"></div></div>
  </div> 
<resource xid="resource2"><require xid="require1" url="css!$UI/smokefront/font-awesome-4.7.0/css/fa.icons"></require></resource>
  <span component="$UI/system/components/justep/messageDialog/messageDialog" xid="messageDialog1" type="YesNo" message="确认删除此设备？" onYes="messageDialog1Yes"></span></div>