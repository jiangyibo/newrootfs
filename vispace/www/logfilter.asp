<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<script src="js/opt.js" type="text/javascript"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="css/style.css" type="text/css" />
<link rel="stylesheet" href="css/button.css" type="text/css"/>
<title>日志过滤</title>
</head>
<style type="text/css">
td {text-align:left;}
img {border-width:0px;}
</style>
<script type="text/javascript">
function apply(id) {
var msg=""
if (true==document.getElementById('ena'+id).checked)
    msg="启用该项日志";
else
    msg="禁用该项日志";
if (opt_ack(1,msg)==false)
   return false;
var url="/goform/log?grp=2&opt=mod&id=" +id;
url+= "&ena=" + document.getElementById('ena'+id).value;
alert(url);
window.location.href(url);
return true;
}
</script>
<body>
<ul id="nav">
  <li><span>日志管理=></span></li>
  <li><a href="optlog.asp">操作日志</a></li>
  <li><a href="logconf.asp">日志配置</a></li>
  <li><a href="logfilter.asp" class="current">日志过滤</a></li>
  <li><a href="sys_log.htm">系统日志</a></li>
  <li><a href="help/log.htm" target="new">帮助</a></li>
</ul>
<div id="content" align="center">
<table border="1" cellpadding="0" cellspacing="0" class="dt">
  <thead>
  <tr>
    <th colspan="4">操作日志配置</th>
  </tr>
  </thead>
  <tr class="toptitle">
    <th>ID</th>
    <th>操作内容</th>
    <th>启用</th>
    <th>操作</th>
  </tr>
  <%LogConf();%>
</table>
</div>
</body>
</html>
