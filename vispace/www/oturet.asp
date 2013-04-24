<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
   <title>OTU 设置</title>
   <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
   <link rel="stylesheet" href="css/style.css" type="text/css" />
   <link rel="stylesheet" href="css/button.css" type="text/css"/>
</head>
<script language="javascript">
//var slot=<%UnitID();%>;
function goOtu()
{ 
  parent.window.frames['topFrame'].location.href="/cv.asp";
  //alert("/goform/unit?cid=0&uid=" +document.getElementById("uid").value +"&page=" +p);
  location.href="/goform/slot?cid=0&uid=" +<%UnitID();%> +"&page=otu";
}

function showSubmit(oid,msg)
{
  var obj=document.getElementById(oid);
  if (null==obj)
    return false;
  if (null==msg || msg.length<1)
     obj.innerHTML="设置完毕";
   else
     obj.innerHTML=msg;
  obj=document.getElementById("retbtn");
  if (null!=obj)
  {
     obj.disabled=false;
  }
  //window.clearTimeOut();
  obj=document.getElementById("bd");
  if (null!=obj)
  {
     obj.style.cursor="default";
  }
  alert("OTU 信息 设置完毕");
  goOtu();
}

function toUrl(p)   
{ 
  //parent.window.frames['topFrame'].location.href="/cv.asp";
  location.href="/goform/slot?cid=0&uid=<%UnitID();%>&page=" +p;   
}
window.onload=function(){
//document.getElementById('retbtn').disabled= true;
window.setTimeout("showSubmit('ibox',null);",3000);
}
</script>
<body>
<ul id="nav">
  <li><span>OTU=></span></li>
  <li><a href="#" id="base" name="navitem" onclick="javascript:toUrl('otubi');">基本信息</a></li>
  <li><a href="#" id="otu" name="navitem" class="current" onclick="javascript:toUrl('otu');">OTU 信息</a></li>
  <li><a href="#" id="ddm" name="navitem" onclick="javascript:toUrl('otuddm');">DDM 信息</a></li>
   <li><a href="#" id="ddmt" name="navitem" onclick="javascript:toUrl('otuddmt');">DDM 告警阈值</a></li>
  <li><a href="../help/otu.htm" target="new">帮助</a></li>
</ul>
<div class="cbox vst10">
<div id="ibox">正在提交,请稍后...</div>
</div>
</body>
</html>

