<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script src="js/checknum.js" type="text/javascript"></script>
<script src="js/checkip.js" type="text/javascript"></script>
<link rel="stylesheet" href="css/style.css" type="text/css" />
<link rel="stylesheet" href="css/button.css" type="text/css" />
<title>Destination Host</title>
</head>
<style type="text/css">
img {border-width:0px;}
.imgl {float:left;}
.imgr {float:right;padding:0; margin:0;}
</style>
<script type="text/javascript">
function check_addhost() {  
if(document.getElementById('addhost').checked==true) 
{
   document.getElementById('tname0').disabled=false;
   document.getElementById('destIp0').disabled=false;
   document.getElementById('ena0').disabled=false;
   document.getElementById('udp0').disabled=false;
   document.getElementById('addbtn').disabled=false;
   document.getElementById('destIp0').style.background="#FFFFFF";
   document.getElementById('tname0').style.background="#FFFFFF";
   document.getElementById('udp0').style.background="#FFFFFF";
}
else{
   document.getElementById('tname0').disabled=true;
   document.getElementById('destIp0').disabled=true;
   document.getElementById('udp0').disabled=true;
   document.getElementById('ena0').disabled=true;
   document.getElementById('addbtn').disabled=true;
   document.getElementById('tname0').style.background="#C0C0C0";
   document.getElementById('destIp0').style.background="#C0C0C0";
   document.getElementById('udp0').style.background="#C0C0C0";
  }
}
function ackdel()
{
  if(confirm("你真的要删除该告警目标主机吗?")==false)
    return false;
  return true;
}
function apply(id){
  var ip=document.getElementById('destIp' +id).value;

  if (true!=checkIp(ip,"目标主机IP地址",0))
           return false;
  else
  {
     var url="/goform/dhost?opt=";
     if (true!=checkNumber(document.getElementById('udp' +id),1,65535,"最大端口号"))
        return false;
     if (id!=0)
        url+="mod";
     else
        url+="add";
     url+="&destIp=" + document.getElementById('destIp' +id).value + "&udp=" + document.getElementById('udp' +id).value + "&ena=";
     if (document.getElementById('ena' +id).checked==true)
          url+="on";
     else
          url+="off";
     if (id!=0)
         url+="&id=" +document.getElementById('id' +id).value;
      else
      {
        if (document.getElementById('tname0').value=="")
        {
           alert("目标主机IP名称不能为空!");
           return false;
        }
        url+="&id=0&tname=" +document.getElementById('tname0').value;
      }
     //alert(url);
     window.location.href(url);
     return true;
  }
}

window.onload=function(){check_addhost();}
</script>
<body>
<ul id="nav">
  <li><span>SNMP=></span></li>
  <li><a href="snmpconf.asp">SNMP 团体名配置</a></li>
  <li><a href="desthost.asp" class="current">目标主机</a></li>
  <li><a href="help/snmp.htm" target="new">帮助</a></li>
</ul>
<div id="content" align="center">
<table border="1" cellpadding="0" cellspacing="0" class="dt">
  <thead>
  <tr>
   <th colspan="4">告警目标主机</th>
  </tr>
  </thead>
  <tr class="toptitle">
    <th>目标地址名称</th>
    <th>目标主机IP地址</th>
    <th>UDP端口</th>
    <th>启用/禁用</th>
    <th>操作</th>
  </tr>
  <%DestHostList();%>
  <tr>
    <td><input id="tname0" name="tname0" maxlength='15' size="15" value=""/></td>
    <td><input id="destIp0" name="destIp0" maxlength='15' size="15" value=""/></td>
    <td><input id="udp0" name="udp0" maxlength='5' size="6" value="9162"  onkeyup="uIntInput(this);"/></td>
    <td><INPUT TYPE="checkbox" id="ena0" checked  VALUE="on">启用</td>
    <td><INPUT TYPE="checkbox" id ="addhost" VALUE="on" onclick="javascript:check_addhost();">添加&nbsp;&nbsp;<a href='#'><img src='../images/pen.gif' id="addbtn" onclick="apply(0);" /></a></td>
  </tr>
</table>

</div>
</body>
</html>
