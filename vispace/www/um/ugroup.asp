<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="../css/style.css" type="text/css" />
<link rel="stylesheet" href="../css/button.css" type="text/css" />
<title>用户组</title>
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
    	document.getElementById('group').style.background="#FFFFFF";
  }
  else{
      document.getElementById('group').disabled=true;
      document.getElementById('group').style.background="#C0C0C0";
    }
}
 window.onload=function(){is_add();}
</script>
<body>
<ul id="nav">
  <li><span>用户管理=></span></li>
  <li><a href="ugroup.asp" class="current">用户组</a></li>
  <li><a href="user.asp">用户列表 </a></li>
  <li><a href="adduser.asp">添加用户</a></li>
  <li><a href="pw.htm">修改密码</a></li>
  <li><a href="limit.asp">访问权限</a></li>
  <li><a href="savecfg.asp">保存</a></li>
  <li><a href="../help/sys.htm" target="new">帮助</a></li>
</ul>
<div id="content">
<form action="/goform/AddGroup" method="POST">
<table border="1" align="center" cellpadding="0" cellspacing="0" class="dt">
  <thead>
  <tr>
   <th colspan="4">用户组管理</th>
  </tr>
  </thead>
  <tr class="toptitle">
    <th>组名</th>
    <th colspan="2">操作</th>
  </tr>
  <% MakeGroupList(2); %>
  <tr>
    <input type="hidden" value="2" name="method" />
    <td><input id="group" name="group" size="15" value=""/></td>
    <td><INPUT TYPE="checkbox" id="enabled" name="enabled" title="Enabled">启用</td>
    <td><input type="hidden" id="privilege" name="privilege" size="6" value="4"/><INPUT TYPE="checkbox" id ="operate" name="operate" VALUE="add" onclick="javascript:is_add();">添加</td>
  </tr>
</table>
<div align="center">
<input class="button white medium" type=submit name=ok value="OK"> 
</div>
</form>
</div>
</body>
</html>
