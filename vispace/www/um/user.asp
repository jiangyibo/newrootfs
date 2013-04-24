<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="../css/style.css" type="text/css" />
<link rel="stylesheet" href="../css/button.css" type="text/css" />
<title>用户管理</title>
</head>
<style type="text/css" media="all">
a img
{ 
border:none;
}
</style>
<script language="javascript">
function mod_user(opt,uid)
{
  if (2==opt)
   location.href="/goform/DeleteUser?ok=ok&user="+uid;
  else
  {
    var ul,en;
    ul=document.getElementById("ul_"+uid);
    en=document.getElementById("en_"+uid);
    location.href="/goform/ModifyUser?user="+uid +"&level="+ul.value+"&enable="+en.value;
  }
}
</script>

<body>
<ul id="nav">
  <li><span>用户管理=></span></li>
  <li><a href="ugroup.asp">用户组</a></li>
  <li><a href="user.asp"  class="current">用户列表</a></li>
  <li><a href="adduser.asp">添加用户</a></li>
  <li><a href="pw.htm">修改密码</a></li>
  <li><a href="limit.asp">访问权限</a></li>
  <li><a href="savecfg.asp">保存</a></li>
  <li><a href="../help/sys.htm" target="new">帮助</a></li>
</ul>

<table border="1" align="center" cellpadding="0" cellspacing="0"  class="dt">
  <thead>
     <tr>
       <th colspan="5">用户列表</th>
     </tr>
  </thead>
  <tr>
    <th>用户名</th>
    <th>用户组</th>
    <th>用户级别</th>
    <th>状态</th>
    <th>操作</th>
  </tr>
  <tr>
    <% MakeUserList(2); %>
  </tr>
</table>

</body>
</html>
