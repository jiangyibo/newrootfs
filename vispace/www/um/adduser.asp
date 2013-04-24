<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<!- Copyright (c) Go Visint Inc., 2000-2000. All Rights Reserved. ->
<head>
<title>Add a User</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="../css/style.css" type="text/css" />
<link rel="stylesheet" href="../css/button.css" type="text/css" />
<% language=javascript %>

</head>

<body>
<ul id="nav">
  <li><span>用户管理=></span></li>
  <li><a href="ugroup.asp">用户组</a></li>
  <li><a href="user.asp">用户列表</a></li>
  <li><a href="adduser.asp" class="current">添加用户</a></li>
  <li><a href="pw.htm">修改密码</a></li>
  <li><a href="limit.asp">访问权限</a></li>
  <li><a href="savecfg.asp">保存</a></li>
  <li><a href="../help/sys.htm" target="new">帮助</a></li>
</ul>
<div id="content">
<form action=/goform/AddUser method=POST>
<table border="1" align="center" cellpadding="0" cellspacing="0" class="dt">
<caption>添加用户</caption>
<tr>
	<th>用户名:</th>
<td>
	<input type=text name=user title="User ID" maxsize=15 size=15 value="">
</td>
</tr>
<tr>
	<th>用户组:</td><td><% MakeGroupList(); %></th>
</tr>
<tr>
	<th>启用:</th>
<td>
	<INPUT TYPE=checkbox CHECKED name=enabled title="Enabled">
</td>
</tr>
<tr>
	<th>密码:</th>
<td>
	<input type=password name=password maxsize=15 size=15 title="Enter Password" value="">
</td>
</tr>
<tr>
	<th>确认密码:</th>
<td>
	<input type=password name=passconf maxsize=15 size=15 title="Confirm Password" value="">
</td>
</tr>
<tr>
    <td></td>
     <td ALIGN="CENTER"> 
        <input class="button white medium bw" type=submit name=ok value="OK"> <input class="button white medium bw" type=submit name=ok value="Cancel"></td>
</tr>
</table>

</form>
</div>
</body>
</html>
