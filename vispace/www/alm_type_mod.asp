<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="css/style.css" type="text/css" />
<link rel="stylesheet" href="css/button.css" type="text/css"/>
<title>告警策略管理</title>
</head>
<style type="text/css">
td {text-align:left;}
img {border-width:0px 0px 0px 0px;}
</style>
<script language="javascript">
function submit()   
{ 
  var n;
  var url="/goform/atype?operate=mod";
  var unit;

  url+="&ac="+document.getElementById("ac").value;
  url+="&severity="+document.getElementById("severity").value;
  if (document.getElementById("enable").checked)
     url+="&enable=on";
  else
     url+="&enable=off";
  url+="&slots=";
  for (n=1;n<16;n++){
    unit=document.getElementById("u"+n);
    if (unit!=null && unit.checked==true)
       url=url+n+";";
  }
 // alert(url);
 window.location.href(url);
 return false;
}
function checkEnable() 
{
  var unit,ena;
 
  ena=document.getElementById("enable").checked;
  for(var i=1;i<16;i++){
  //alert("u"+slots[i]);
  unit=document.getElementById("u"+i);
  if (unit!=null)
  { unit.disabled=!ena;}
 } 
}
window.onload=function(){
 //var ss=s.split(";");
 var slots;
 var unit;
 slots=document.getElementById("slots").value.split(";");
 //alert(slots);
for(var i=0;i<slots.length && i<16;i++){
  //alert("u"+slots[i]);
  unit=document.getElementById("u"+slots[i]);
  if (unit!=null)
    unit.checked=true;
}
checkEnable();
}
</script>
<body>

<ul id="nav">
 <li><span>告警管理=></span></li>
  <li><a href="alarm_list.asp">当前告警</a></li>
  <li><a href="alarm_his.asp">历史告警</a></li>
  <li><a href="alm_type.asp" class="current">告警策略</a></li>
  <!--<li><a href="almconf.asp">告警配置</a></li>-->
  <li><a href="help/alarm.htm" target="new">帮助</a></li>
</ul>
<div id="content" align="center">
 <input type="hidden" name="operate" value="mod"/>
 <table  border="1" cellpadding="0" cellspacing="0" class="dt">
  <caption>告警过滤配置</caption>
  <%AlarmType();%>
  <tr>
   <th>屏蔽槽位:</th>
   <td>
      <INPUT type='checkbox' id='u1' name='chk' value='on'>#1
      <INPUT type='checkbox' id='u2' name='chk' value='on'>#2
      <INPUT type='checkbox' id='u3' name='chk' value='on'>#3
      <INPUT type='checkbox' id='u4' name='chk' value='on'>#4
      <INPUT type='checkbox' id='u5' name='chk' value='on'>#5
      <INPUT type='checkbox' id='u6' name='chk' value='on'>#6
      <INPUT type='checkbox' id='u7' name='chk' value='on'>#7
      <INPUT type='checkbox' id='u8' name='chk' value='on'>#8
      <INPUT type='checkbox' id='u9' name='chk' value='on'>#9
      <INPUT type='checkbox' id='u10' name='chk' value='on'>#10
      <INPUT type='checkbox' id='u11' name='chk' value='on'>#11
      <INPUT type='checkbox' id='u12' name='chk' value='on'>#12
      <INPUT type='checkbox' id='u13' name='chk' value='on'>#13
      <INPUT type='checkbox' id='u14' name='chk' value='on'>#14
      <INPUT type='checkbox' id='u15' name='chk' value='on'>#15
   </td>
  <tr>
</table>
<div align="center">
<a class="button white medium" href="#" onclick="return submit();">应用</a>
<a class="button white medium" href="alm_type.asp">返回</a>
</div>
  </div>
</div>
</body>
</html>
<script ></script>
