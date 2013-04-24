<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="css/style.css" type="text/css" />
<link rel="stylesheet" href="css/button.css" type="text/css"/>
<title>告警策略管理</title>
</head>
<style type="text/css">
td {text-align:left;}
.s1 {color:red;}
.s2 {color:orange;}
.s3 {color:#663366;}
.s4 {color:#FF9999;}
.s5 {color:blue;}
img {border-width:0px 0px 0px 0px;}
</style>
<script language="javascript">
function query(pg)
{
  var url="/goform/atpg?pg=" +pg;
  window.location.href(url);
}
</script>
<body>

<ul id="nav">
 <li><span>告警管理=></span></li>
  <li><a href="alarm_list.asp">当前告警</a></li>
  <li><a href="alarm_his.asp">历史告警</a></li>
  <li><a href="alm_type.asp" class="current">告警策略</a></li>
  <!--<li><a href="almconf.asp">告警配置</a></li>-->
  <li><a href="help/alarm.htm" target="new">帮助</a></li>
</ul>
<div id="content" align="center">
 <table  border="1" cellpadding="0" cellspacing="0" class="dt">
  <caption>告警类型</caption>
  <tr class="toptitle">
    <th>告警代码</th>
    <th>告警信息</th>
    <th>物理实体</th>
    <th>告警级别</th>
    <th>启用状态</th>
    <th>屏蔽槽位</th>
    <th>修改</th>
  </tr>
  <%AlarmTypeList();%>
</table>
</div>
</body>
</html>
<script ></script>
