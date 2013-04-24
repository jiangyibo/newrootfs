<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="css/style.css" type="text/css" />
<link rel="stylesheet" href="css/button.css" type="text/css" />
<title>System Manager</title>
<style type="text/css">
<!--
body {
	background-color: #C0C0C0;
}
h2 { color:#FFFFFF;}
-->
</style></head>

<body>
<script language="javascript" type="text/javascript">
function chkSelect(sel) 
{ 
   var a= document.getElementsByName("chk");
   for(var i=0;i<a.length;i++) 
   { 
      if(a[i].type=="checkbox") 
      { 
      	if (sel==0)
      	  a[i].checked=false;
      	else if (sel==1)
      		a[i].checked=true;
      	else
      		a[i].checked=!a[i].checked;
      } 
   } 
}


function Apply(flag){
var msg;
if (flag==1)
   msg="你真的要重启系统吗?";
else
   msg="你真的恢复出厂设置吗吗?";
if (confirm(msg)){
 document.getElementsByName("default_setting")[0].value=flag;
 document.setcfg.submit();
}
else
 return(false);
}
</script>
<ul id="nav">
  <li><span>系统管理=></span></li>
  <li><a href="system.htm"  class="current">复位</a></li>
  <li><a href="restore.htm">恢复出厂设置</a></li>
  <li><a href="upgrade.htm">升级</a></li>
  <li><a href="ip.htm">IP地址配置</a></li>
  <li><a href="pw.htm">修改密码</a></li>
  <li><a href="ie_conf.htm">定时刷新</a></li>
  <li><a href="help/sys.htm" target="new">帮助</a></li>
</ul>
<div id="content">
<h3 style="text-align:center"><font COLOR="#003399">复位</font></h3>
<center>
<form NAME="setcfg" METHOD="get" ACTION="system.htm">
  <table border="1" align="center" cellpadding="0" cellspacing="0" class="dt">
  <caption>请选择需要复位的单元盘</caption>
  <br/>
  <tr>
    <td><INPUT type="checkbox" id="u0" name="chk" value="on">背板</td>
    <td><INPUT type="checkbox" id="u1" name="chk" value="on">单元盘1</td>
    <td><INPUT type="checkbox" id="u2" name="chk" value="on">单元盘2</td>
    <td><INPUT type="checkbox" id="u3" name="chk" value="on">单元盘3</td>
    <td><INPUT type="checkbox" id="u4" name="chk" value="on">单元盘4</td>
    <td><INPUT type="checkbox" id="u5" name="chk" value="on">单元盘5</td>
    <td><INPUT type="checkbox" id="u6" name="chk" value="on">单元盘6</td>
    <td><INPUT type="checkbox" id="u7" name="chk" value="on">单元盘7</td>
    <td></td>
  </tr>
  <tr>
    <td><INPUT type="checkbox" id="u8" name="chk" value="on">单元盘8</td>
    <td><INPUT type="checkbox" id="u9" name="chk" value="on">单元盘9</td>
    <td><INPUT type="checkbox" id="u10" name="chk" value="on">单元盘10</td>
    <td><INPUT type="checkbox" id="u11" name="chk" value="on">单元盘11</td>
    <td><INPUT type="checkbox" id="u12" name="chk" value="on">单元盘12</td>
    <td><INPUT type="checkbox" id="u13" name="chk" value="on">单元盘13</td>
    <td><INPUT type="checkbox" id="u14" name="chk" value="on">单元盘14</td>
    <td><INPUT type="checkbox" id="u15" name="chk" value="on">单元盘15</td>
    <td><INPUT type="checkbox" id="u17" name="chk" value="on" checked=true>网管卡</td>
  </tr>
</table>
<br/>
<table align="center" cellpadding="0" cellspacing="0">
	<tr>
    <td><input type="button" id="sel" style="width:80px;" value="全选" onclick="chkSelect(1);"/></td>
    <td><input type="button" id="nosel" style="width:80px;" value="全不选" onclick="chkSelect(0);"/></td>
    <td><input type="button" id="unsel" style="width:80px;" value="反选" onclick="chkSelect(2);"/></td>
    <td><input type="submit" value="复位" id="b0" style="width:80px;" onclick="return Apply(1);"/></td>
  </tr>
</table>
</form>
</div>
</body>
</html>
