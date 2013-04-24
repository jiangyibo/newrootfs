<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script src="js/checknum.js" type="text/javascript"></script>
<script src="js/checkip.js" type="text/javascript"></script>
<link rel="stylesheet" href="css/style.css" type="text/css" />
<link rel="stylesheet" href="css/button.css" type="text/css" />
<title>SNMP configure</title>
</head>
<style type="text/css">
img {border-width:0px;}
.imgl {float:left;}
.imgr {float:right;padding:0; margin:0;}
</style>
<script type="text/javascript">
var canAdd=true;
function ro(obj,id)
{
  var sc;
  sc=document.getElementById('setc'+id);
  //alert(sc.readOnly);
  if(obj.checked==true)
  {
    sc.readOnly=true;
    sc.style.background="#C0C0C0";
  }
  else
  {
   sc.readOnly=false;
   sc.style.background="#FFFFFF";
  }
}
function check_addhost() {
if (canAdd==true)
  document.getElementById("addhost").disabled=false;
else
  document.getElementById("addhost").disabled=true;
if(canAdd==true && document.getElementById('addhost').checked==true) 
{
   document.getElementById('hostIp0').disabled=false;
   document.getElementById('ena0').disabled=false;
   document.getElementById('getc0').disabled=false;
   document.getElementById('setc0').disabled=false;
   document.getElementById('port0').disabled=false;
   document.getElementById('ro0').disabled=false;
   //document.getElementById("addhost").disabled=false;
   document.getElementById('hostIp0').style.background="#FFFFFF";
   document.getElementById('getc0').style.background="#FFFFFF";
   document.getElementById('setc0').style.background="#FFFFFF";
   return true;
   //document.getElementById('ro0').style.background="#FFFFFF";
}
else{
   document.getElementById('hostIp0').disabled=true;
   document.getElementById('getc0').disabled=true;
   document.getElementById('setc0').disabled=true;
   document.getElementById('ro0').disabled=true;
   document.getElementById('port0').disabled=true;
   document.getElementById('ena0').disabled=true;
   document.getElementById('hostIp0').style.background="#C0C0C0";
   document.getElementById('getc0').style.background="#C0C0C0";
   document.getElementById('setc0').style.background="#C0C0C0";
   //document.getElementById("addhost").disabled=true;
   return false;
   //document.getElementById('ro0').style.background="#C0C0C0";
  }
}
function ackdel()
{
  if(confirm("你真的要删除该SNMP 团体名吗?")==false)
       return false;
  return true;
}
function app(id){
  var url="/goform/comm?opt=";
  var ip="";
  
  if (id!=0)
   {
     ip=document.getElementById('hostIp' +id).value;
     if (true!=checkIp(ip,"主机IP地址",1))
           return false;

     if(confirm("你真的要修改该SNMP 团体名吗?")==false)
        return false;
        url+="mod";
   }
  else
   {
     if (true!=check_addhost())
     return false;
     ip=document.getElementById('hostIp' +id).value;
     if (true!=checkIp(ip,"主机IP地址",1))
           return false;
     if(confirm("你真的要添加SNMP 团体名吗?")==false)
       return false;
     url+="add";
   }
  url+="&hostIp=" + document.getElementById('hostIp' +id).value + "&getc=" + document.getElementById('getc' +id).value + "&setc=" + document.getElementById('setc' +id).value;
    url+= "&ro=";
    if (document.getElementById('ro' +id).checked==true)
          url+="on";
     else
          url+="off";
     url+= "&ena=";
     if (document.getElementById('ena' +id).checked==true)
          url+="on";
     else
          url+="off";
     if (id!=0)
         url+="&id=" +document.getElementById('id' +id).value;
      else
          url+="&id=0";
     //alert(url);
     window.location.href(url);
     return true;
}
window.onload=function(){check_addhost();}
</script>
<body>
<ul id="nav">
  <li><span>SNMP=></span></li>
  <li><a href="snmpconf.asp" class="current">SNMP 团体名配置</a></li>
  <li><a href="desthost.asp">目标主机</a></li>
  <li><a href="help/snmp.htm" target="new">帮助</a></li>
</ul>
<div id="content" align="center">
<table border="1" cellpadding="0" cellspacing="0" class="dt">
  <thead>
  <tr>
  <th colspan="7">SNMP 团体名配置</th>
 </tr>
  </thead>
  <tr class="toptitle">
    <th>主机IP地址</th>
    <th>读团体名</th>
    <th>写团体名</th>
    <th>端口</th>
    <th>是否只读?</th>
    <th>启用/禁用</th>
    <th>操作</th>
  </tr>
  <%Community();%>
  <tr>
    <td><input id="hostIp0" name="hostIp0" maxlength="15" size="15" value=""/></td>
    <td><input id="getc0" name="getc0" maxlength="15" size="15" value="public"/></td>
    <td><input id="setc0" maxlength="15" size="15" value="private"/></td>
    <td><input id="port0" maxlength="5" size="5" value="161" onkeyup="uIntInput(this);"/></td>
    <td><INPUT TYPE="checkbox" id="ro0"></td>
    <td><INPUT TYPE="checkbox" id="ena0" checked  VALUE="on">启用</td>
    <td><INPUT TYPE="checkbox" id ="addhost" VALUE="on" onclick="javascript:check_addhost();">添加&nbsp;&nbsp;<a href='#'><img src='../images/pen.gif' onclick="app(0);" /></a></td>
  </tr>
</table>

<br/>
</div>
</body>
</html>
