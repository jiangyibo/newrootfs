<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="../css/style.css" type="text/css" />
<link rel="stylesheet" href="../css/button.css" type="text/css" />
<title>访问权限</title>
<style type="text/css">
<!--
body {
	background-color: #C0C0C0;
}
.c td{padding:5px;}
-->
</style></head>
<script type="text/javascript">
function is_add() {  
  if(document.getElementById('operate').checked==true) 
  {
        document.getElementById('group').disabled=false;
        document.getElementById('url').disabled=false;
    	document.getElementById('group').style.background="#FFFFFF";
        document.getElementById('url').style.background="#FFFFFF";
  }
  else{
      document.getElementById('group').disabled=true;
      document.getElementById('url').disabled=true;
      document.getElementById('group').style.background="#C0C0C0";
      document.getElementById('url').style.background="#C0C0C0";
    }
}
 window.onload=function(){is_add();}
</script>
<body>
<ul id="nav">
  <li><span>用户管理=></span></li>
  <li><a href="ugroup.asp">用户组</a></li>
  <li><a href="user.asp">用户列表 </a></li>
  <li><a href="adduser.asp">添加用户</a></li>
  <li><a href="pw.htm">修改密码</a></li>
  <li><a href="limit.asp" class="current">访问权限</a></li>
  <li><a href="savecfg.asp">保存</a></li>
  <li><a href="../help/sys.htm" target="new">帮助</a></li>
</ul>
<div id="content">
<form action="/goform/AddAccessLimit" method="POST">
<table border="1" align="center" cellpadding="0" cellspacing="0" class="dt">
  <thead>
  	<tr>
	 <th colspan="3">访问权限</th>
	</tr>
  </thead>
  <tr class="toptitle">
    <th>组名</th>
    <th>页面</th>
    <th>操作</th>
  </tr>
  <tr>
 <% MakeAccessLimitList(1); %>
  <tr>
    <input type="hidden" value="2" name="method" />
    <td><% MakeGroupList(1); %></td>
    <td><select name="url" id="url"  size="1">
<option value="/" SELECTED>全部
<option value="/index.htm">主页
<option value="/sys_info.asp">系统信息
<option value="/module_list.asp">模块列表
<option value="/alarm_list.asp">告警管理
<option value="/optlog.asp">日志管理
<option value="/snmpconf.asp">SNMP配置
<option value="/ip.asp">系统管理
<option value="/um/">用户管理
</select></td>
    <td><INPUT TYPE="checkbox" id ="operate" name="operate" VALUE="add" onclick="javascript:is_add();">添加</td>
  </tr>
</table> 
<div align="center">
<input class="button white medium" type=submit name=ok value="OK"> 
</div>
</form>
</div>
</body>
</html>
