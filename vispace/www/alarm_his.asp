<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script src="js/opt.js" type="text/javascript"></script>
<script src="js/calendar.js" type="text/javascript"></script>
<link rel="stylesheet" href="css/style.css" type="text/css" />
<link rel="stylesheet" href="css/button.css" type="text/css"/>
<title>告警信息</title>
</head>
<style type="text/css">
td {text-align:left;}
.s1 {color:red;}
.s2 {color:orange;}
.s3 {color:#663366;}
.s4 {color:#FF9999;}
.s5 {color:blue;}
img {border-width:0px;}
fieldset{margin:10px 0 0 10px;}
.w180{width:110px;margin-top:0px;}
a:link {
　　color: #874B46;
　　text-decoration:none;
}
a{color:#874B46; text-decoration: none}
a:visited {color:#874B46; text-decoration: none}
</style>
<script language="javascript">
function query(act,field,order,pg)
{
  var url="/goform/almqry?flag=2";
  var fdate,edate;
  if (act!=0)
  {
  fdate=document.getElementById('fromdate').value;
  edate=document.getElementById('enddate').value;
  url+="&fd="+fdate;
  url+="&ed=" +edate;
  if (act!=1)
     url+="&field="+field+"&order="+order;
  else
   {
     if (fdate.length>8 && edate.length>8 && fdate>edate)
       {
        alert("起始日期必须小于等于截止日期!");
        return;
       }
   }
   url+="&pg=";
   if (pg>0)
      url+=pg;
   else if (-1==pg) 
      url+=document.getElementById('pg').value;
   else 
      url+="0";
   url+="&slot=" + document.getElementById('slot').value;
  }
  //alert(url);
  window.location.href(url);
}
function del_alarm(flag)
{
 var msg;
 if (flag==0)
    msg="全部告警";
 else
    msg="满足条件的告警";
 if (true!=opt_ack(3,msg))
     return false;
 var url="/goform/alarm?operate=del";
 if (flag==0)
   url+="&aid=0";
 else
 {
   var fdate,edate,slot;
   //url+="";
   fdate=document.getElementById('fromdate').value;
   edate=document.getElementById('enddate').value;
   slot=document.getElementById('slot').value;
   if (fdate.length>8)
    url+="&fd="+fdate;
   if (edate.length>8)
    url+="&ed="+edate;
   if (slot>-1)
     url+="&slot="+slot;
 }
 //alert(url);
 window.location.href(url);
}
window.onload=function(){
document.getElementById('fromdate').value=document.getElementById('fdate').value;
document.getElementById('enddate').value=document.getElementById('edate').value;
}
</script>
<body>
<ul id="nav">
  <li><span>告警管理=></span></li>
  <li><a href="alarm_list.asp">当前告警</a></li>
  <li><a href="alarm_his.asp" class="current">历史告警</a></li>
  <li><a href="alm_type.asp">告警策略</a></li>
  <!--<li><a href="almconf.asp">告警配置</a></li>-->
  <li><a href="help/alarm.htm" target="new">帮助</a></li>
</ul>
<div id="content" align="center">
<table  border="0" cellpadding="0" cellspacing="0">
<tr>
<td valign="top">
<table  border="1" cellpadding="0" cellspacing="0" class="dt">
  <caption>历史告警信息</caption>
  <tr class="toptitle">
    <th>位置&nbsp;&nbsp;<a href="#" onclick="query(2,1,1,-1);"><img src='images/up.gif'/></a>&nbsp;&nbsp;<a href="#" onclick="query(2,1,2,-1);"><img src='images/down.gif'/></a></th>
    <th>告警信息&nbsp;&nbsp;<a href="#" onclick="query(2,2,1,-1);"><img src='images/up.gif'/></a>&nbsp;&nbsp;<a href="#" onclick="query(2,2,2,-1);"><img src='images/down.gif'/></a></th>
    <th>告警状态&nbsp;&nbsp;<a href="#" onclick="query(2,3,1,-1);"><img src='images/up.gif'/></a>&nbsp;&nbsp;<a href="#" onclick="query(2,3,2,-1);"><img src='images/down.gif'/></a></th>
    <th>发生时间&nbsp;&nbsp;<a href="#" onclick="query(2,4,1,-1);"><img src='images/up.gif'/></a>&nbsp;&nbsp;<a href="#" onclick="query(2,4,2,-1);"><img src='images/down.gif'/></a></th>
    <th>告警级别&nbsp;&nbsp;<a href="#" onclick="query(2,5,1,-1);"><img src='images/up.gif'/></a>&nbsp;&nbsp;<a href="#" onclick="query(2,5,2,-1);"><img src='images/down.gif'/></a></th>
<th>删除</th>
</tr>
  <%AlarmList(2,4,1);%>
</table>
</td>
<td  valign="top" style="width:192px;">
<fieldset>
   <legend>查询条件:</legend>
   <label for="fromdate">起始日期:</label>
   <input type="text" id="fromdate" size="10" readonly="readonly" onclick="setday(this,this);"/>
   <br/>
   <label for="enddate">截止日期:</label>
   <input type="text" id="enddate" size="10" readonly="readonly" onclick="setday(this,this);"/>
   <br/>
   <label for="slot">选择槽号:</label>
<select name="slot" id="slot">
  <option value="-1">全部</option>
  <option value="0">机箱</option>
  <option value="1">第1槽</option>
  <option value="2">第2槽</option>
  <option value="3">第3槽</option>
  <option value="4">第4槽</option>
  <option value="5">第5槽</option>
  <option value="6">第6槽</option>
  <option value="7">第7槽</option>
  <option value="8">第8槽</option>
  <option value="9">第9槽</option>
  <option value="10">第10槽</option>
  <option value="11">第11槽</option>
  <option value="12">第12槽</option>
  <option value="13">第13槽</option>
  <option value="14">第14槽</option>
  <option value="15">第15槽</option>
  <option value="16">第16槽</option>
</select>
<br/>
<!--
    <label for="ao">与或操作 :</label>
    <label for="and">与</label>
    <input type="radio" checked value="1" id="and" name="ao" />
    <label for="or">或</label>
    <input type="radio" value="2" id="or" name="ao" />
   <br/>
 -->
   <a class="button white medium" href="#" onclick="query(1,0,0,0);">查询</a><a class="button white medium" href="#" onclick="query(0,0,0,0);">重置</a>
</fieldset>
<fieldset>
   <legend>操作:</legend>
<br/>
<a class="button white medium w180" href="#" onclick="return del_alarm(1);">删除满足条件的告警</a>
<br/>
<a class="button white medium w180" href="#" onclick="return del_alarm(0);">删除全部告警</a>
<br/>
</fieldset>
</td>
</tr>
</table>
</div>
</body>
</html>
