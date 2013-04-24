<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script src="js/checkip.js" type="text/javascript"></script>
<link rel="stylesheet" href="css/style.css" type="text/css" />
<link rel="stylesheet" href="css/button.css" type="text/css" />
<link rel="stylesheet" href="css/ip.css" type="text/css" />
<title>网络配置</title>
<style type="text/css">
<!--
body {
	background-color: #C0C0C0;
}
.c td{padding:5px;}
-->
</style></head>
<script type="text/javascript">
function check() {
if (checkIp(ipbox.getValue(),"IP地址",0)==false)
{
   return false;
}
if (checkIp(maskbox.getValue(),"子网掩码",0)==false)
   return false;
if (checkIp(gwbox.getValue(),"默认网关",0)==false)
   return false;

if(confirm("你真的要修改网络配置?")==false)
    return false;
var url="/goform/ipconf?ip="+ipbox.getValue() +"&mask="+maskbox.getValue() +"&gw="+gwbox.getValue();
window.location.href(url);
return true;
}
</script>
<body>
<ul id="nav">
  <li><span>系统管理=></span></li>
  <li><a href="ip.asp" class="current">网络配置</a></li>
  <li><a href="restore.htm">恢复出厂设置</a></li>
  <li><a href="reset.htm">重启</a></li>
  <li><a href="upgrade.htm">升级</a></li>
  <li><a href="ie_conf.htm">定时刷新</a></li>
  <li><a href="../help/sys.htm" target="new">帮助</a></li>
</ul>
<div id="content" align="center">

<table  border="0" align="center" cellPadding="0" cellSpacing="0" class="dt">
   <caption>网络配置</caption>
   <tr><th>IP地址</th><td><span id="ipbox"></span></td></tr>
   <tr><th>子网掩码</th><td><span id="maskbox"></span></td></tr>
   <tr><th>默认网关</th><td><span id="gwbox"></span></td></tr>
   <tr><th>MAC 地址</th><td><span id="mac" style="font-size:14px;"></span></td></tr>
   <tr>
   <td colspan="2" align="center">
     <input class="button white medium" type="button" value="应用" onclick="return check();"/> 
   </td>
   </tr>
</table> 
</div>

<script>
<%DeviceIp();%>
var ipbox=new IpV4Box("ipbox");
var maskbox=new IpV4Box("maskbox" , "maskbox");
var gwbox=new IpV4Box("gwbox" , "gwbox");

document.getElementById("ipbox").innerHTML=ipbox;
ipbox.focus(1);//激活输入框的第一部分
ipbox.onEnterKey=function(){
alert("ipbox EnterKey");
}
//每成功输入一个字每都会激发onChange事件
ipbox.onChange=function(){
window.status="ipbox 新ip:"+(this.getValue());
}
ipbox.setValue(ip);
maskbox.setValue(mask);
gwbox.setValue(gateway);
document.getElementById("mac").innerHTML=mac;
</script>
</body>
</html>
