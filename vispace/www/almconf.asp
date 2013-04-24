<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script src="../js/checknum.js" type="text/javascript"></script>
<link rel="stylesheet" href="css/style.css" type="text/css" />
<link rel="stylesheet" href="css/button.css" type="text/css"/>
<title>告警配置管理</title>
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
 window.location.href(url);
 return false;
}
function check() 
{
  var ena;
  var by1,by2;
 
  ena=document.getElementById("issave").checked;
  by1=document.getElementById("by1");
  by2=document.getElementById("by2");
  if (ena!=true)
  {
    by1.disabled=true;
    by2.disabled=true;
    document.getElementById("maxcnt").disabled=true;
    document.getElementById("days").disabled=true;
  }
  else
  {
     by1.disabled=false;
     by2.disabled=false;
    if (by1.checked==true)
    {
       document.getElementById("maxcnt").disabled=false;
       document.getElementById("days").disabled=true;
    }
    else
    {
       document.getElementById("maxcnt").disabled=true;
       document.getElementById("days").disabled=false;
    }
  }
}
window.onload=function(){
check();
}
</script>
<body>

<ul id="nav">
 <li><span>告警管理=></span></li>
  <li><a href="alarm_list.asp">当前告警</a></li>
  <li><a href="alarm_his.asp">历史告警</a></li>
  <li><a href="alm_type.asp">告警策略</a></li>
  <li><a href="almconf.asp" class="current">告警配置</a></li>
  <li><a href="help/alarm.htm" target="new">帮助</a></li>
</ul>
<div id="content" align="center">
 <input type="hidden" name="operate" value="mod"/>
 <table  border="1" cellpadding="0" cellspacing="0" class="dt">
  <caption>告警配置</caption>
  <%AlarmConf();%>
</table>
<div align="center">
<a class="button gray medium" href="#" onclick="return submit();">应用</a>
<a class="button gray medium" href="alm_type.asp">返回</a>
</div>
  </div>
</div>
</body>
</html>
<script ></script>
