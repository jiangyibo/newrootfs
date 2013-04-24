<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<script src="../js/datetime.js" type="text/javascript"></script>
<script src="../js/calendar.js" type="text/javascript"></script>
<script src="../js/checknum.js" type="text/javascript"></script>
<script src="../js/validate.js" type="text/javascript"></script>
<script src="../js/math.js" type="text/javascript"></script>
<link rel="stylesheet" href="../css/style.css" type="text/css" />
<link rel="stylesheet" href="../css/button.css" type="text/css" />
<title>System Info</title>
</head>
<style type="text/css">
.c td{padding:3px;}
</style>
<script language="javascript">
function check()
{
  var minobj,maxobj;
  var m1="最低温度",m2="最高温度";
  minobj=document.getElementById("mintemp");
  if (true!=checkNumber(minobj,-20,10,m1))
      return false;
  maxobj=document.getElementById("maxtemp");
  if (true!=checkNumber(maxobj,0,100,m2))
      return false;
  if (isMin(minobj,maxobj,m1,m2)!=true)
      return false;
  return true;
}
</script>
<body>
<ul id="nav">
  <li><span>系统信息=></span></li>
  <li><a href="nmubi.asp">系统基本信息</a></li>
  <li><a href="sys_info.asp" class="current">系统信息</a></li>
  <li><a href="chassis.asp">电源/风扇</a></li>
  <li><a href="cpumem.htm">CPU/内存</a></li>
  <li><a href="disk.htm">Flash</a></li>
  <li><a href="proc.htm">进程状态</a></li>
  <!--<li><a href="logusr.htm">登录用户</a></li>-->
  <li><a href="help/sys_info.htm" target="new">帮助</a></li>
</ul>
<div id="content">
<form name="genForm" method="post" action="/goform/date" onsubmit="return check();">
<input type="hidden" id="pid" name="current_page" value="/sys/sys_info.asp">
<table border="1" align="center" cellpadding="0" cellspacing="0" class="dt">
  <caption>
    系统信息
  </caption>
  <%UnitInfo(1);%>
</table>
<table align="center">
<tr>
 <td>
  <input class="button white medium" type="button" value="刷新" onclick="window.location.href('sys_info.asp');" name="refresh">
 </td>
 <td>
      <input class="button white medium" type="submit" value="应用" name="apply">
 </td>
 </tr>	
</table>
</form>
</div>
</body>
</html>
