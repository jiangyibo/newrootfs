<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="css/style.css" type="text/css" />
<link rel="stylesheet" href="css/button.css" type="text/css"/>
<script src="js/opt.js" type="text/javascript"></script>
<title>日志配置</title>
</head>
<style type="text/css">
img {border-width:0px;}
a:link {
　　color: #874B46;
　　text-decoration:none;
}
a{color:#874B46; text-decoration: none}
a:visited {color:#874B46; text-decoration: none}
</style>
<script language="javascript">
function del()
{
  return opt_ack(3,'操作该日志');
}
</script>
<body>
<ul id="nav">
  <li><span>日志管理=></span></li>
  <li><a href="optlog.asp" class="current">操作日志</a></li>
  <li><a href="logconf.asp">日志配置</a></li>
  <!--<li><a href="logfilter.asp">日志过滤</a></li>
  <li><a href="sys_log.htm">系统日志</a></li>
 -->
  <li><a href="help/log.htm" target="new">帮助</a></li>
</ul>
<div id="content" align="center">
<table border="1"  cellpadding="0" cellspacing="0" class="dt">
  <thead>
  <tr>
    <th colspan="6">操作日志列表</th>
  </tr>
  </thead>
  <tr class="toptitle">
    <th>操作对象</th>
    <th>操作内容</th>
    <th>动作</th>
    <th>操作时间</th>
    <th>操作方式</th>
    <th>操作</th>
  </tr>
  <%OperateLog();%>
</table>
<div align="center">
<a class="button white medium"  href="/goform/log?grp=1&opt=del&id=0" onclick="return opt_ack(10,'操作日志');">删除全部操作日志</a>
</div>
</div>
</body>
</html>
