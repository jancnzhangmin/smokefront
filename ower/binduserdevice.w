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
  <column name="user_id" type="String" xid="xid17"></column>
  <column name="select" type="String" xid="xid18"></column></div></div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1" style="background-color:white;"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" title="绑定设备"
          class="x-titlebar" style="background-color:white;">
          <div class="x-titlebar-left"> 
            <a component="$UI/system/components/justep/button/button"
              label="" class="btn btn-link btn-only-icon" icon="icon-chevron-left"
              onClick="{operation:'window.close'}" xid="backBtn" style="color:#808080;"> 
              <i class="icon-chevron-left"/>  
              <span></span> 
            </a> 
          </div>  
          <div class="x-titlebar-title" style="color:#808080;font-weight:lighter;">绑定设备</div>  
          <div class="x-titlebar-right reverse"> 
          </div>
        </div> 
      </div>  
    <div class="x-panel-content x-cards" xid="content1"><div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="deviceData" style="margin-top:10px;">
   <ul class="x-list-template" xid="listTemplateUl1">
    <li xid="li4" class="list-group-item" style="padding:0px;" bind-css=" val(&quot;select&quot;) == 1 ? 'selectstatus':''" bind-click="li4Click">
     <div component="$UI/system/components/justep/row/row" class="x-row" xid="row4">
      <div class="x-col x-col-fixed" xid="col1" style="width:80px;">
       <i xid="i5" class="fa fa-barcode" style="color:#C0C0C0;width:15px;"></i>
       <span xid="span5">设备SN</span></div> 
      <div class="x-col" xid="col2">
       <span xid="span6" bind-text='val("sn")'></span></div> 
      <div class="x-col text-right" xid="col4">
       <i xid="i3" class="fa fa-warning text-danger" bind-visible=' val("status") == 1'></i></div> </div> 
     <div component="$UI/system/components/justep/row/row" class="x-row" xid="row5">
      <div class="x-col x-col-fixed" xid="col5" style="width:80px;">
       <i xid="i6" class="fa fa-map-marker" style="color:#C0C0C0;width:15px;"></i>
       <span xid="span9">地址</span></div> 
      <div class="x-col" xid="col8">
       <span xid="span10" bind-text='val("address")'></span></div> </div> 
  </li> </ul> </div><div component="$UI/system/components/justep/row/row" class="x-row" xid="row1" style="margin-top:10px;">
   <div class="x-col" xid="col7"><a component="$UI/system/components/justep/button/button" class="btn btn-block btn-green" label="绑定" xid="button1" onClick="button1Click">
   <i xid="i1"></i>
   <span xid="span1">绑定</span></a></div></div></div>
  </div> 
</div>