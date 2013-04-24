<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script src="../js/checknum.js" type="text/javascript"></script>
<script src="../js/math.js" type="text/javascript"></script>
<script src="../js/msg.js" type="text/javascript"></script>
<link rel="stylesheet" href="../css/style.css" type="text/css" />
<link rel="stylesheet" href="../css/button.css" type="text/css"/>
<title>电源/风扇</title>
</head>
<style type="text/css">
.c td{padding:3px;}
body{ font-size:12px;} 
img{ vertical-align:middle;} 
</style>
<script language="javascript">
//var fs =[1,1,2,1];
//var psinfo =new Array(new ps(1,2,1,11.9),new ps(1,1,2,12));

<%UnitInfo(0,0);%>
function ps(exist,state,pstype,volt) 
{ 
this.exist=exist; 
this.state = state; 
this.pstype=pstype; 
this.volt=volt;
return this;
}

function show_volt(p,t)
{
	if (psinfo[p].exist==2)
	   return;
	document.write("当前电压:"+  psinfo[p].volt +"伏");
}
function show_alarm_volt()
{
	document.write("最低告警电压:\
<input type='text' id ='minvolt' name='minvolt' maxlength='3' size='3' value='" + minvolt + "' onkeyup='uIntInput(this);' onblur='return check();'/>伏");

document.write("最高告警电压:<input type='text' id ='maxvolt' name='maxvolt' maxlength='3' size='3' value='" +  maxvolt + "' onkeyup='uIntInput(this);' onblur='return check();'/>伏");
}
function show_power(p)
{
	if (psinfo[p].exist==2)
	   return;
var state=0;
if (psinfo[p].state!=2)
   state=1;
document.write("<td>\
<img style='margin-right:30px;' src='../images/psfan.png'/>\
</td>\
<td>\
<table>\
<tr>\
<td>\
	PWR<img style='margin-left:2px;' src='../images/led_"+state +".png'/>\
</td>\
</tr>\
<tr>\
<td>\
<img src='../images/ptype_" +psinfo[p].pstype+ ".gif'/>\
</td>\
</tr>\
</table>\
</td>");
}

function check()
{
  var minobj,maxobj;
  var m1="最低电压",m2="最高电压";
  minobj=document.getElementById("minvolt");
  if (true!=checkNumber(minobj,2,10,m1))
      return false;
  maxobj=document.getElementById("maxvolt");
  if (true!=checkNumber(maxobj,10,20,m2))
      return false;
  if (isMin(minobj,maxobj,m1,m2)!=true)
      return false;
  return true;
}
function app()
{
   alert("submit");
  if (true!=check())
    return false;
   return true;
}
</script>
<body>
<ul id="nav">
  <li><span>系统信息=></span></li>
  <li><a href="nmubi.asp">系统基本信息</a></li>
  <li><a href="sys_info.asp">系统信息</a></li>
  <li><a href="chassis.asp" class="current">电源/风扇</a></li>
  <li><a href="cpumem.htm">CPU/内存</a></li>
  <li><a href="disk.htm">Flash</a></li>
  <li><a href="proc.htm">进程状态</a></li>
  <li><a href="help/sys_info.htm" target="new">帮助</a></li>
</ul>
<div id="content">
<!--机箱背面-->
<table  border="0"  cellpadding="0" cellspacing="0" style="background:url(../images/cbg.png);">
<tr >
<td colspan=2 style="background:url(../images/fant.png);height:26px;">
</td>
</tr>

<tr >
<td colspan=2 style="height:60px;">
<table width="100%" align="center" border="0" cellpadding="0" cellspacing="0">
<tr>
<td style="background:url(../images/pl.png) repeat-y;" width="2%"></td>
<script type="text/javascript">
var i;
for (i=0;i<4;i++)
document.write("<td width='24%' style='text-align:center;'><img src='../images/fan"+fs[i]+".gif'/></td>");
</script>
<td style="background:url(../images/pr.png) repeat-y right;" width="2%"></td>
</tr>
</table>
<tr >
<td colspan=2 style="background:url(../images/fanb.png);height:12px;">
</td>
</tr>
<tr>
<!--
power supply 1
-->
<td>
<table width="512" border="0"  cellpadding="0" cellspacing="0">
<tr>
<td width="59" style="background:url(../images/plt.png);height:30px;"></td>
<td width="392" style="background:url(../images/pt.png) no-repeat;height:30px;"></td>
<td width="59" style="background:url(../images/prt.png) no-repeat right;height:30px;"></td>
</tr>

<tr>
<td width="59" style="background:url(../images/pl.png);"></td>
<td width="392" align="center" height="130">
<table>
<tr>
<script type="text/javascript">
show_power(0);
</script>
</tr>
</table>
</td>
<td width="59" style="background:url(../images/pr.png) repeat-y right;"></td>
</tr>

<tr>
<td style="background:url(../images/plb.png);height:38px;"></td>
<td align="center" style="background:url(../images/pb.png);">
<script type="text/javascript">
show_volt(0);
</script>
</td>
<td style="background:url(../images/prb.png) no-repeat right;"></td>
</tr>

</table>
</td>

<!--
power supply 2
-->
<td>
<table width="512" border="0"  cellpadding="0" cellspacing="0">
<tr>
<td width="59" style="background:url(../images/plt.png);height:30px;"></td>
<td width="392" style="background:url(../images/pt.png) no-repeat;height:30px;"></td>
<td width="59" style="background:url(../images/prt.png) no-repeat right;height:30px;"></td>
</tr>

<tr>
<td width="59" style="background:url(../images/pl.png);"></td>
<td width="392" align="center" height="130">
<table>
<tr>
<script type="text/javascript">
show_power(1);
</script>
</tr>
</table>
</td>
<td width="59" style="background:url(../images/pr.png) repeat-y right;"></td>
</tr>

<tr>
<td style="background:url(../images/plb.png);height:38px;"></td>
<td align="center" style="background:url(../images/pb.png);">
<script type="text/javascript">
show_volt(1);
</script>
</td>
<td style="background:url(../images/prb.png) no-repeat right;"></td>
</tr>

</table>
</td>
</tr>
<tr >
<td align="center" valign="middle" colspan=2>
<form name="genForm" method="POST" action="/goform/sys" onsubmit="return check();" style="margin-top:0;" >
<INPUT type="hidden" name="act" value="3">
<script type="text/javascript">
show_alarm_volt();
</script>
<!--
最低告警电压:
<input type='text' id ='minvolt' name='minvolt' maxlength='3' size='3' value='5' onkeyup='uIntInput(this);' onblur='return check();'/>伏
最高告警电压:<input type='text' id ='maxvolt' name='maxvolt' maxlength='3' size='3' value='20' onkeyup='uIntInput(this);' onblur='return check();'/>伏
-->
<input class="button white medium" type="button" value="刷新" onclick="window.location.href('chassis.asp');">
<input class="button white medium" type="submit" value="应用" name="apply">
</form>
</td>
</tr>
</table>
</div>
</body>
</html>

