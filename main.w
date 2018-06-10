<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model"/> 
<div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel1">
   <div class="x-panel-content" xid="content1"><div component="$UI/system/components/justep/contents/contents" class="x-contents x-full" active="0" xid="contents2" swipe="false">
   <div class="x-contents-content" xid="devicecontent"><div component="$UI/system/components/justep/windowContainer/windowContainer" class="x-window-container" xid="windowContainer1" src="./device/device.w"></div></div>
  <div class="x-contents-content" xid="owercontent"><div component="$UI/system/components/justep/windowContainer/windowContainer" class="x-window-container" xid="windowContainer2" src="./ower/ower.w"></div></div></div></div>
   <div class="x-panel-bottom" xid="bottom1"><div component="$UI/system/components/justep/button/buttonGroup" class="btn-group x-card btn-group-justified x-tuniu" tabbed="true" xid="buttonGroup1">
   <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-icon-top" label="设备" xid="button2" icon="fa fa-hdd-o" target="devicecontent">
    <i xid="i2" class="fa fa-hdd-o"></i>
    <span xid="span2">设备</span></a> 
   <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-icon-top" label="我" xid="button3" icon="fa fa-user-o" target="owercontent">
    <i xid="i3" class="fa fa-user-o"></i>
    <span xid="span3">我</span></a> </div></div></div>
  <resource xid="resource2"><require xid="require1" url="css!$UI/smokefront/font-awesome-4.7.0/css/fa.icons"></require></resource></div>