<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="top:26px;left:31px;height:auto;" onLoad="modelLoad" onParamsReceive="modelParamsReceive" onunLoad="modelUnLoad"> 
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="provinceData" idColumn="province"><column name="province" type="String" xid="xid1"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="cityData" idColumn="city"><column name="city" type="String" xid="xid2"></column></div></div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" title="提交设备"
          class="x-titlebar" style="background-color:white;">
          <div class="x-titlebar-left"> 
            <a component="$UI/system/components/justep/button/button"
              label="" class="btn btn-link btn-only-icon" icon="icon-chevron-left"
              onClick="{operation:'window.close'}" xid="backBtn" style="color:#808080;"> 
              <i class="icon-chevron-left"/>  
              <span></span> 
            </a> 
          </div>  
          <div class="x-titlebar-title" style="color:#808080;font-weight:lighter;">提交设备</div>  
          <div class="x-titlebar-right reverse"> 
          </div>
        </div> 
      </div>  
    <div class="x-panel-content x-cards" xid="content1"><div component="$UI/system/components/bootstrap/accordion/accordion" class="panel-group" xid="accordion1" style="margin-bottom:0px;">
   <div class="panel panel-default" component="$UI/system/components/bootstrap/panel/panel" xid="panel2">
     
    <div class="panel-collapse collapse in" xid="div1">
     <div xid="div2"><ul xid="ul1" style="margin-bottom:0px;margin-top:10px;"><li xid="li1" class="list-group-item" style="padding:0px;"><div class="input-group" component="$UI/system/components/bootstrap/inputGroup/inputGroup" xid="inputGroup4">
   <span class="input-group-addon" xid="span4"><![CDATA[设备SN]]></span>
   <input class="form-control" component="$UI/system/components/justep/input/input" xid="snInput" dataType="String" readonly="true"></input></div></li></ul><ul xid="ul2" style="margin-bottom:0px;"><li xid="li2" class="list-group-item" style="padding:0px;"><div class="input-group" component="$UI/system/components/bootstrap/inputGroup/inputGroup" xid="inputGroup1">
   <span class="input-group-addon" xid="span1"><![CDATA[设备型号]]></span>
   <input class="form-control" component="$UI/system/components/justep/input/input" xid="input1" dataType="String"></input></div></li></ul><ul xid="ul3" style="margin-bottom:0px;"><li xid="li3" class="list-group-item" style="padding:0px;"><div class="input-group" component="$UI/system/components/bootstrap/inputGroup/inputGroup" xid="inputGroup2">
   <span class="input-group-addon" xid="span3"><![CDATA[所在楼层]]></span>
   <input class="form-control" component="$UI/system/components/justep/input/input" xid="input2" dataType="String"></input></div></li></ul><ul xid="ul4" style="margin-bottom:0px;"><li xid="li4" class="list-group-item" style="padding:0px;"><div class="input-group" component="$UI/system/components/bootstrap/inputGroup/inputGroup" xid="inputGroup3" style="width:100%;">
   <span class="input-group-addon" xid="span5"><![CDATA[坐标位置]]></span>
   <input class="form-control" component="$UI/system/components/justep/input/input" xid="input3" dataType="String" placeHolder="坐标格式 102.750388,25.043742"></input></div></li></ul><ul xid="ul5" style="margin-bottom:0px;"><li xid="li5" class="list-group-item" style="padding:0px;"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row2" style="padding:0px;">
   <div class="x-col" xid="col6" style="padding:0px;"><select component="$UI/system/components/justep/distpicker/provinceSelect" class="form-control" xid="provinceSelect1" onChange="provinceSelect1Change"></select></div>
  <div class="x-col" xid="col7" style="padding:0px;"><select component="$UI/system/components/justep/distpicker/citySelect" class="form-control" xid="citySelect1" bind-provinceRef='$model.provinceData.val("province")' onChange="citySelect1Change"></select></div>
  <div class="x-col" xid="col8" style="padding:0px;"><select component="$UI/system/components/justep/distpicker/districtSelect" class="form-control" xid="districtSelect1" bind-cityRef='$model.cityData.val("city")' onChange="districtSelect1Change"></select></div></div></li></ul>
  <ul xid="ul6" style="margin-bottom:0px;">
   <li xid="li6" class="list-group-item" style="padding:0px;">
    <div class="input-group" component="$UI/system/components/bootstrap/inputGroup/inputGroup" xid="inputGroup5" style="width:100%;">
     <input class="form-control" component="$UI/system/components/justep/input/input" xid="input4" dataType="String" placeHolder="详细地址" bind-keyup="input4Keyup" valueUpdateMode="keyup"></input></div> </li> </ul></div></div> <div class="panel-heading text-center" xid="heading1">
     <h4 class="panel-title" xid="h41">
      <a xid="a1"><![CDATA[]]><i xid="i1" class="fa fa-sort"></i></a></h4> 
  </div></div> </div>
  <div xid="allmap" style="height:100%;width:100%;"></div></div>
  <div class="x-panel-bottom" xid="bottom1"><a component="$UI/system/components/justep/button/button" class="btn btn-block btn-green" label="提交" xid="submitbtn" onClick="submitbtnClick">
   <i xid="i2"></i>
   <span xid="span6">提交</span></a></div></div> 
<resource xid="resource2"><require xid="require1" url="css!$UI/smokefront/font-awesome-4.7.0/css/fa.icons"></require></resource></div>