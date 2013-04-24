<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="css/style.css" type="text/css" />
<title>模块列表</title>
</head>

<body>
<style type="text/css">
td {text-align:left;font-size:16px;}

</style>
<ul id="nav">
  <li><a href="module_list.asp" class="current">模块列表</a></li>
</ul>
<div id="content" align="center" >
<table border="1" cellpadding="0" cellspacing="0" class="dt">
 <tr class="toptitle">
    <th>模块号</th>
    <th>模块名称</th>
    <th>模块型号</th>
    <th>模块序列号</th>
    <th>创建日期</th>
    <th>硬件版本</th>
    <th>固件版本</th>
  </tr>
    <%unitList();%>
</table>
</div>
</body>
</html>
<script ></script>
