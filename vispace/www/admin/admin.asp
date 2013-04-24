<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script src="../js/public.js" type="text/javascript"></script>
<script src="../js/str.js" type="text/javascript"></script>
<script src="../js/cookie.js" type="text/javascript"></script>
<link rel="stylesheet" href="../css/style.css" type="text/css" />
<link rel="stylesheet" href="../css/uview.css" type="text/css" />
<link rel="stylesheet" href="../css/button.css" type="text/css"/>
<title>出厂信息配置</title>
</head>
<script language="javascript">
/*var vendorcn1="汇信特通信技术有限公司",vendoren="Visint Communication Tech",url="www.visint.com.cn",webname="WebRiver",logo="logo.gif";
*/
<%NmuInfo();%>
var logoid=3;
function toUrl(p)   
{ 
  //alert(otuForm.uid.value);
  location.href="/unit?+cid=0&uid=" +otuForm.uid.value +"&page=" +p;   
}

function vendor()
{
 var obj;
 var sel = document.getElementById('logoid');
 //alert(sel.selectedIndex);
 if (sel.selectedIndex<2)
 {
    obj=document.getElementById("vendorcn");
    obj.disabled= true;
    obj=document.getElementById("vendoren");
    obj.disabled= true;
    obj=document.getElementById("url");
    obj.disabled= true;
    obj=document.getElementById("webname");
    obj.disabled= true;
    obj=document.getElementById("logofr");
    obj.style.display="none";
 }
 else
 {
   obj=document.getElementById("vendorcn");
   obj.disabled= false;
   obj=document.getElementById("vendoren");
   obj.disabled= false;
   obj=document.getElementById("url");
   obj.disabled= false;
   obj=document.getElementById("webname");
   obj.disabled= false;
   obj=document.getElementById("logofr");
   obj.style.display="";
 }
}
function setCookie()
{
    //var ex=cf_GetCookie("expire");
    var u=document.getElementById("usrid");
    var p=document.getElementById("pw");

    //cf_SetCookie("expire",ex.value,ex.value);
    cf_SetCookie("usrid",u.value,60);
    cf_SetCookie("pw",p.value,60);
    return true;
}
function clearCookie()
{
  document.getElementById("usrid").value="";
  document.getElementById("pw").value="";
  setCookie();
}
window.onload=function(){
//expire
var u=cf_GetCookie("usrid");
var p=cf_GetCookie("pw");
	
if (u!=null)
  document.getElementById("usrid").value=u;
if (p!=null)
  document.getElementById("pw").value=p;
  
var obj;
obj=document.getElementById("vendorcn");
obj.value=vendorcn;
obj=document.getElementById("vendoren");
obj.value=vendoren;
obj=document.getElementById("url");
obj.value=url;
obj=document.getElementById("webname");
obj.value=webname;

var sel = document.getElementById('logoid');
for(var i = 0;i < 3; ++i) {
  if(sel.options[i].value == logoid) {
       sel.selectedIndex = i;
           break;
   }
 }
}
</script>
<body>
<ul id="nav">
  <li><span>出厂信息配置=></span></li>
  <li><a href="nmubi.asp" class="current">客户信息</a></li>
  <li><a href="#">板卡信息</a></li>
  <li><a href="#" target="new">帮助</a></li>
</ul>
<div id="content">
<form name="sysForm" method="post" action="/goform/sys">
<input type="hidden" id="pid" name="page" value="admin/admin">
<input type="hidden" id="cid" name="cid" value="0"/>
<input type="hidden" id="uid" name="uid" value="16"/>
<input type="hidden" id="act" name="act" value="4"/>
<table width="100%" align="center" cellpadding="0" cellspacing="0">
 <tr>
 <td>
 <table border="1" align="center" cellpadding="0" cellspacing="0" class="dt">
  <tr> <th>客户中文名称</th>
  <td><input id="vendorcn" name="vendorcn" size='30' maxlength='30' value=""/></td>
  <th>客户英文名称</th>
  <td><input id="vendoren" name="vendoren" size='30' maxlength='30' value="" /></td>
  </tr>
 <tr>
  <th>客户网址</th>
  <td><input id="url" name="url" size='30' maxlength='30' value=""/></td>
  <th>Web名称</th>
 <td><input id="webname" name="webname" size='30' maxlength='30' value=""/></td></tr>
<tr>
 <th>Logo</th>
 <td>
  <select id="logoid" name="logoid" onchange="vendor();">
  <option value="1">中性</option>
  <option value="2">汇信特</option>
  <option value="3">客户指定</option>
 </select>
 </td>
<td colspan='2'>
<div id="logofr">
<iframe src="/admin/logo.htm"  width="400px" height="60px">
</iframe>
</div>
</td>
</tr>
 <tr> <th>用户名</th>
  <td><input type="text" id="usrid" name="usrid" size='20' maxlength='20' value=""/></td>
  <th>密码</th>
  <td>
   <input type="password" id="pw" name="pw" size='20' maxlength='20' value="" />
   <input type="button" value="保存" name="apply" onClick="setCookie();"/>
   <input type="button" value="清除" name="clear" onClick="clearCookie();"/>
  </td>
  </tr>
<tr>
 <td height="29" colspan="2" align="center">
   <input class="button white medium" type="button" value="刷新" onclick="window.location.href('admin.asp');" name="refresh" onsubmit="return check();"/>
    </td>
   <td height="29" colspan="2" align="center">
    <input class="button white medium" type="submit" value="应用" name="apply" />
   </td>
  </tr>
  </table>
 </td>
  </tr>
</table>
   </td>
  </tr>
</table>
</form>
</div>
</body>
</html>
