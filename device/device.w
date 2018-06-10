<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" onLoad="modelLoad" style="top:-5px;left:47px;height:auto;"><div component="$UI/system/components/justep/data/data" autoLoad="true" xid="deviceData" idColumn="id"><column name="id" type="String" xid="xid1"></column>
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
<div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel1">
   <div class="x-panel-content x-cards" xid="content1" style="padding-top:0px;"><div component="$UI/system/components/justep/tabs/tabs" class="x-tabs" xid="tabs1">
   <div component="$UI/system/components/justep/panel/panel" class="x-panel" xid="panel2">
    <div class="x-panel-top" xid="top3" style="background-color:white;height:60px;">
     <ul class="nav nav-tabs nav-justified" xid="navs1">
      <li class="active" xid="li1">
       <a content="content_3" xid="tabItem1"><![CDATA[设备查询]]></a></li> 
      <li xid="li2">
       <a content="content_4" xid="tabItem2"><![CDATA[设备绑定]]></a></li> 
      <li xid="li3">
       <a content="content_5" xid="tabItem3"><![CDATA[设备报警]]></a></li> </ul> </div> 
    <div class="x-panel-content" xid="content2">
     <div component="$UI/system/components/justep/contents/contents" class="x-contents" active="0" xid="contents1">
      <div class="x-contents-content  x-content-on-left x-content-on-remoting-sibling" xid="content_3"><div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="deviceData" style="margin-top:10px;">
   <ul class="x-list-template" xid="listTemplateUl1">
    <li xid="li4" class="list-group-item" style="padding:0px;" bind-click="li4Click"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row4">
   <div class="x-col x-col-fixed" xid="col1" style="width:80px;"><i xid="i5" class="fa fa-barcode" style="color:#C0C0C0;width:15px;"></i><span xid="span5"><![CDATA[设备SN]]></span>
  </div>
   <div class="x-col" xid="col2"><span xid="span6" bind-text='val("sn")'></span></div>
   <div class="x-col text-right" xid="col4"><i xid="i3" class="fa fa-warning text-danger" bind-visible=' val("status") == 1'></i></div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row5">
   <div class="x-col x-col-fixed" xid="col5" style="width:80px;"><i xid="i6" class="fa fa-map-marker" style="color:#C0C0C0;width:15px;"></i><span xid="span9"><![CDATA[地址]]></span>
  </div>
   <div class="x-col" xid="col8"><span xid="span10" bind-text='val("address")'></span></div></div></li></ul> </div>
  <div component="$UI/system/components/justep/smartContainer/smartContainer" class="x-smartcontainer" xid="smartContainer2" bind-visible=" $model.deviceData.count() == 0"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row8">
   <div class="x-col text-center" xid="col16"><span xid="span11"><![CDATA[您未绑定任何设备]]></span></div></div></div></div>
      <div class="x-contents-content" xid="content_4"><div component="$UI/system/components/justep/smartContainer/smartContainer" class="x-smartcontainer" xid="smartContainer1" style="margin-top:10px;">
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row3">
   <div class="x-col" xid="col9"><div xid="div1" class="has-feedback">
   <div xid="div6">
    <input component="$UI/system/components/justep/input/input" class="form-control" xid="qrInput" placeHolder="输入SN码或对准产品码扫描" valueUpdateMode="keyup"></input>
    <span xid="scanQRSpan" class="pull-right form-control-feedback-right fa fa-minus-square-o" style="font-size:xx-large;color:#C0C0C0;" bind-click="scanQRSpanClick"><![CDATA[]]></span></div> </div></div></div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row1" style="margin-top:10px;">
   <div class="x-col" xid="col3"><span xid="span1" style="color:#C0C0C0;"><![CDATA[PS：请点击页面上的按钮，扫描二维码，进行烟感设备绑定！]]></span></div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row2">
   <div class="x-col" xid="col6"><a component="$UI/system/components/justep/button/button" class="btn btn-default btn-block btn-green" label="提交" xid="subbtn" onClick="subbtnClick">
   <i xid="i1"></i>
   <span xid="span2">提交</span></a></div></div></div>
      <div class="x-contents-content" xid="content_5"><div component="$UI/system/components/justep/list/list" class="x-list" xid="list2" data="deviceData" style="margin-top:10px;" filter=' $row.val("status") == 1'>
   <ul class="x-list-template" xid="listTemplateUl2">
    <li xid="li5" class="list-group-item" style="padding:0px;" bind-click="li4Click">
     <div component="$UI/system/components/justep/row/row" class="x-row" xid="row7">
      <div class="x-col x-col-fixed" xid="col13" style="width:80px;">
       <i xid="i4" class="fa fa-barcode" style="color:#C0C0C0;width:15px;"></i>
       <span xid="span3">设备SN</span></div> 
      <div class="x-col" xid="col12">
       <span xid="span4" bind-text='val("sn")'></span></div> 
      <div class="x-col text-right" xid="col10">
       <i xid="i2" class="fa fa-warning text-danger" bind-visible=' val("status") == 1'></i></div> </div> 
     <div component="$UI/system/components/justep/row/row" class="x-row" xid="row6">
      <div class="x-col x-col-fixed" xid="col11" style="width:80px;">
       <i xid="i7" class="fa fa-map-marker" style="color:#C0C0C0;width:15px;"></i>
       <span xid="span7">地址</span></div> 
      <div class="x-col" xid="col7">
       <span xid="span8" bind-text='val("address")'></span></div> </div> </li> </ul> </div></div></div> 
  </div> </div> </div></div>
   </div>
  <resource xid="resource2"><require xid="require1" url="css!$UI/smokefront/font-awesome-4.7.0/css/fa.icons"></require></resource>
  <span component="$UI/system/components/justep/messageDialog/messageDialog" xid="messageDialog1"></span></div>