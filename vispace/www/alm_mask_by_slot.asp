<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="css/style.css" type="text/css" />
<link rel="stylesheet" href="css/button.css" type="text/css"/>
<title>告警过滤</title>
</head>
<body>

<ul id="nav">
 <li><span>告警管理=></span></li>
  <li><a href="alarm_list.asp">告警信息</a></li>
  <li><a href="alm_mask_by_type.asp">告警屏蔽(按类型)</a></li>
  <li><a href="alm_mask_by_slot.asp" class="current">告警屏蔽(按槽位)</a></li>
  <li><a href="help/alarm.htm" target="new">帮助</a></li>
</ul>
<div id="content">
<form action="trap_filter.htm" method="GET">
    <table  border="1" align="center" cellpadding="0" cellspacing="0" class="dt">
    	<thead>
      <tr>
      <th colspan="2" valign="middle" scope="col">
      请选择单元盘
      <select name="mid" id="mid">
      <option value='0' selected="true">机箱</option>             
      <option value='1'>单元盘1</option>
      <option value='2'>单元盘2</option>
      <option value='3'>单元盘3</option>
      <option value='4'>单元盘4</option>
      <option value='17'>网管卡</option>
      </select>
      </th>
      </thead>
      </tr>
      <tr>
        <th>电源关闭</th>
        <td>
          允许
           <INPUT TYPE="checkbox" NAME="powerOffFlag" VALUE="on"></td>
      </tr>
      <tr>
        <th>电源打开</th>
        <td>允许
          <INPUT TYPE="checkbox" NAME="powerOnFlag" VALUE="on">
        </td>
      </tr>
      <tr>
        <th>线路端断开</th>
        <td>允许
          <INPUT TYPE="checkbox" NAME="fiberport1linkdownFlag" VALUE="on">
        </td>
      </tr>
      <tr>
        <th>线路端连接</th>
        <td>允许
          <INPUT TYPE="checkbox" NAME="fiberport1linkupFlag" VALUE="on">
        </td>
      </tr>
      <tr>
        <th scope="row">用户端断开</th>
        <td>允许
          <INPUT TYPE="checkbox" NAME="fiberport2linkdownFlag" VALUE="on">
        </td>
      </tr>
      <tr>
        <th scope="row">用户端连接</th>
        <td>允许
          <INPUT TYPE="checkbox" NAME="fiberport2linkupFlag" VALUE="on">
        </td>
      </tr>
  </table>
<br />
<div align="center">
<a class="button gray" href="alarm_list.asp?operate=ack&aid=0">应用</a>
</div>
  </div>
</form>
</div>
</body>
</html>
<script ></script>
