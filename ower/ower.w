<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="left:18px;top:83px;height:244px;" onLoad="modelLoad"> 
  </div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1" height="100"> 
        <div component="$UI/system/components/justep/row/row" class="x-row bg" xid="row1" style="height:100px;">
   <div class="x-col" xid="col1"></div>
   <div class="x-col text-center" xid="col2"><div xid="div113">
   <img src="../image/head.png" alt="" xid="headimage" class="headimg" style="border:2px solid #32bd60;"></img></div></div>
   <div class="x-col" xid="col3"></div></div></div>  
    <div class="x-panel-content x-cards" xid="content1"><div component="$UI/system/components/justep/smartContainer/smartContainer" class="x-smartcontainer" xid="smartContainer1" style="margin-top:5px;background-color:white;"><div component="$UI/system/components/justep/row/row" class="x-row list-group-item" xid="row2" style="padding:0px;" bind-click="row2Click">
   <div class="x-col" xid="col5" style=" padding-top:12px;"><span xid="span1"><![CDATA[手机]]></span></div>
   <div class="x-col text-right" xid="col6" style="padding-top:5px;"><span xid="span2"><![CDATA[未绑定]]></span>
  <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="button1" icon="fa fa-chevron-right" style="color:#808080;" onClick="button1Click">
   <i xid="i1" class="fa fa-chevron-right"></i>
   <span xid="span3"></span></a></div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row list-group-item" xid="row3" style="padding:0px;">
   <div class="x-col" xid="col8" style=" padding-top:12px;">
    <span xid="span6"><![CDATA[接收短信报警]]></span></div> 
   <div class="x-col text-right" xid="col7" style="padding-top:5px;">
    <span component="$UI/system/components/justep/button/toggle" class="x-toggle pull-right" xid="toggle1" style="margin-bottom:-5px;margin-top:-4px;" onChange="toggle1Change"></span></div> </div>
  <div component="$UI/system/components/justep/row/row" class="x-row list-group-item" xid="row4" style="padding:0px;">
   <div class="x-col" xid="col9" style=" padding-top:12px;">
    <span xid="span9"><![CDATA[接收微信报警]]></span></div> 
   <div class="x-col text-right" xid="col10" style="padding-top:5px;">
    <span component="$UI/system/components/justep/button/toggle" class="x-toggle pull-right" xid="toggle2" style="margin-bottom:-5px;margin-top:-4px;" onChange="toggle2Change"></span></div> </div></div>
  <div component="$UI/system/components/justep/smartContainer/smartContainer" class="x-smartcontainer" xid="smartContainer2" style="margin-top:10px;"><div component="$UI/system/components/justep/row/row" class="x-row list-group-item" xid="row5" style="padding:0px;" bind-click="row5Click">
   <div class="x-col" xid="col12" style=" padding-top:12px;">
    <span xid="span12"><![CDATA[附属用户]]></span></div> 
   <div class="x-col text-right" xid="col11" style="padding-top:5px;">
    <span xid="span10"><![CDATA[0]]></span>
    <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="button4" icon="fa fa-chevron-right" style="color:#808080;">
     <i xid="i4" class="fa fa-chevron-right"></i>
     <span xid="span11"></span></a> </div> </div></div></div>
  </div> 
<resource xid="resource2"><require xid="require1" url="css!$UI/smokefront/font-awesome-4.7.0/css/fa.icons"></require></resource>
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="windowDialog1"></span></div>