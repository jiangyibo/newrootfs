<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8">
    <script src="js/public.js" type="text/javascript"></script>
    <link rel="stylesheet" href="css/grids-min.css" />
    <link rel="stylesheet" href="css/style.css" type="text/css" />
    <link rel="stylesheet" href="css/cview.css" type="text/css"/>
    <link rel="stylesheet" href="css/button.css" type="text/css"/>
    <title>OTU 基本信息</title>
</head>
<style type="text/css">
.hbox{display:inline-block;margin:3px}
.yui3-u,.cbox {text-align: center; margin:0px auto; width:100%; } 
.cbox {height:auto;}
body{
	min-width: 800px; width:expression(document.body.clientWidth < 800? "800px": "100%" );
}
</style>
<script language="javascript">
window.onload=function(){
//cf_InitUrlParm();
}
function toUrl(p)   
{ 
  //alert("/goform/unit?cid=0&uid=" +document.getElementById("uid").value +"&page=" +p);
  location.href="/goform/slot?cid=0&uid=" +document.getElementById("uid").value +"&page=" +p;   
}

function mod_otu(id,isid,port,iid)
{
  var val=document.getElementById(id).value;
  if (null==val)
     return -1;
  if ("wm"==id)
  {
     if (true==document.getElementById(id).checked)
        val=1;
     else
        val=2;
  }
  //alert("/goform/otu?cid=0&uid=" +document.getElementById("uid").value +"&page=" +"otu.asp" +"&isid=" +isid +"&port=" +port +"&iid=" +iid+"&val=" +val);
 location.href="/goform/otu?cid=0&uid=" +document.getElementById("uid").value +"&page=" +"otu.asp" +"&isid=" +isid +"&port=" +port +"&iid=" +iid+"&val=" +val;  
}
</script>
<body class="yui3-skin-sam">

<ul id="nav">
  <li><span>OTU=></span></li>
  <li><a href="#" id="base" name="navitem" onclick="javascript:toUrl('otubi');">基本信息</a></li>
  <li><a href="#" id="otu" name="navitem" class="current" onclick="javascript:toUrl('otu');">OTU 信息</a></li>
  <li><a href="#" id="ddm" name="navitem" onclick="javascript:toUrl('otuddm');">DDM 信息</a></li>
   <li><a href="#" id="ddmt" name="navitem" onclick="javascript:toUrl('otuddmt');">DDM 告警阈值</a></li>
  <li><a href="../help/otu.htm" target="new">帮助</a></li>
</ul>
<div id="content">
<div class="yui3-g" id="bd">
<input type="hidden" id="pid" name="current_page" value="otu.asp">
<input type="hidden" id="cid" name="cid" value="1"/>
<input type="hidden" id="uid" name="uid" value="<%UnitID();%>"/>
   <div class="yui3-u" id="side" style="padding-top:0;width:90px;">
       <div class="content" style="margin:0;">
            <div id="unitid" class="uh"><%UnitID();%></div>
            <%UnitView(3);%>
      </div>
<div class="uf"></div>
 </div>
 <div class="yui3-u" id="main" style="padding-top:5px;align-text:center;">
        <div id=otu class="cbox" align='center' style="padding-top:5px;">
        <div class="ibox">OTU信息</div>
         <div class="hbox">
         <%UnitInfo(3,1);%>
        </div>
         <div>
         <input class="button white medium" type="button" value="刷新" onclick="javascript:toUrl('otu');" name="refresh"/>
        </div>
        </div>         
    </div>
</div>
</div>
</body>
</html>


