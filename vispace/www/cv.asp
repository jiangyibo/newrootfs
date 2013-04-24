<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="css/style.css" type="text/css" />
<link href="css/cview.css" rel="stylesheet" type="text/css">
<script src="js/cookie.js" type="text/javascript"></script>
<base target="mf"/>
<title>Chaisiss View</title>
</head>
<style type="text/css">
body{
margin-top:1px;
text-align:center;
margin-bottom:1px;
background-color: #CCC0C0;
color:red;
}
A:link {color:black; text-decoration: none}
A:visited {color:black; text-decoration: none}
</style>
<script language="javascript">
function setAlm()
{
 var alm = document.getElementById("severity");
 if (null!=alm)
 {
   alm = document.getElementById("dalm");
   alm.innerHTML="<embed src='" + "alarm1.wav" +"' hidden=true autostart='false' loop=\"" + "true"+ "\"/></embed>";
   alert(alm.innerHTML);
 }
}

window.onload=function(){
var poll=0;

var t=cf_GetCookie("rtime");
//alert(t);
if(t!=null && t!="")
{
  poll=t;
  if (poll<0)
    poll=0;
}
else
   poll=20;
if (poll>0)
{
   /*alert("Refreshing...");*/
   setTimeout("self.location.reload();",1000*poll);
}
var obj;
//var nmu={pwr1:1,pwr2:1,fan:2,run:1};
var nmu={<%NmuStatus();%>};
obj=document.getElementById("pwr1");
obj.src="images/led_" + nmu.pwr1 +".png";
obj=document.getElementById("pwr2");
obj.src="images/led_" + nmu.pwr2 +".png";
obj=document.getElementById("fan");
obj.src="images/led_" + nmu.fan +".png";
//setAlm();
}
</script>
<body>
<div id="cv">
<table width="100%" background="blue">
<tr>
<td width="37" border="0"  background="images/lhanger.png" ></td>
<td>
<div class="uh"><a href="/goform/slot?cid=0&uid=1&page=bi">1&nbsp;</a></div>
<div class="uh"><a href="/goform/slot?cid=0&uid=2&page=bi">2&nbsp;</a></div>
<div class="uh"><a href="/goform/slot?cid=0&uid=3&page=bi">3&nbsp;</a></div>
<div class="uh"><a href="/goform/slot?cid=0&uid=4&page=bi">4&nbsp;</a></div>
<div class="uh"><a href="/goform/slot?cid=0&uid=5&page=bi">5&nbsp;&nbsp</a></div>
<div class="uh"><a href="/goform/slot?cid=0&uid=6&page=bi">6&nbsp;&nbsp</a></div>
<div class="uh"><a href="/goform/slot?cid=0&uid=7&page=bi">7&nbsp;&nbsp</a></div>
<div class="uh"><a href="/goform/slot?cid=0&uid=8&page=bi">8&nbsp;&nbsp</a></div>
<div class="uh"><a href="/goform/slot?cid=0&uid=9&page=bi">9&nbsp;&nbsp</a></div>
<div class="uh"><a href="/goform/slot?cid=0&uid=10&page=bi">10&nbsp;&nbsp;&nbsp;</a></div>
<div class="uh"><a href="/goform/slot?cid=0&uid=11&page=bi">11&nbsp;&nbsp;&nbsp;</a></div>
<div class="uh"><a href="/goform/slot?cid=0&uid=12&page=bi">12&nbsp;&nbsp;&nbsp;</a></div>
<div class="uh"><a href="/goform/slot?cid=0&uid=13&page=bi">13&nbsp;&nbsp;&nbsp;</a></div>
<div class="uh"><a href="/goform/slot?cid=0&uid=14&page=bi">14&nbsp;&nbsp;&nbsp;</a></div>
<div class="uh"><a href="/goform/slot?cid=0&uid=15&page=bi">15&nbsp;&nbsp;&nbsp;</a></div>
<div class="uh"><a href="/sys/nmubi.asp">16&nbsp;&nbsp;&nbsp;</a></div>

<div class="clr"></div>
<%ChassisView();%>
<div class="ubd">
   <div class="un"><a href='sys/sys_info.asp'>NMU</a></div>
   <div class="leds">
    <div class="ll">PWR1</div>
    <div class="led"><img id="pwr1" src="images/led_1.png" /></div>
    <div class="led"><img id="pwr2" src="images/led_2.png" /></div>
    <div class="ll">PWR2</div>
    <div class="ll">FAN</div>
    <div class="led"><img id="fan" src="images/led_1.png" /></div>
    <div class="led"><img id="run" src="images/led_1.png" /></div>
    <div class="ll">RUN</div>
    <div class="ll">SFP1</div>
    <div class="led"><img id="osc1" src="images/led_0.png" /></div>
    <div class="led"><img id="osc2" src="images/led_0.png" /></div>
    <div class="ll">SFP2</div>
    <div class="clr"></div>
   </div>
			
  <div class="port">
  <ul>
   <li>&nbsp;</li>
   <li>OS1</li>
  <li>&nbsp;</li>
  </ul>
 <div class="pimg"><img src='images/p2_0.gif'></div>
    </div>
	<div class="clr"></div>
    <div class="port">
    <ul>
	<li>&nbsp;</li>
	<li>OS2</li>
	<li>&nbsp;</li>
    </ul>
    <div class="pimg"><img src='images/p2_0.gif'></div>
    </div>
    <div class="clr"></div>
    <div class="adpter vsb0">
	 <div class="pl">N1</div>
	 <div class="pimg"><img src='images/p1_2.gif'></div>
    </div>
    <div class="clr"></div>
    <div class="adpter vsb0">
	<div class="pl">N2</div>
	<div class="pimg"><img src='images/p1_2.gif'></div>
    </div>
    <div class="clr"></div>
    
    <div class="adpter vsb0">
	<div class="pl">CON</div>
	<div class="pimg"><img src='images/p1_2.gif'></div>
    </div>
    <div class="clr"></div>
    
    <div class="adpter vsb0">
	<div class="pl">UL</div>
	<div class="pimg"><img src='images/p1_2.gif'></div>
    </div>
    <div class="clr"></div>
</div>
<div class="clr"></div>
<%UnitAlarmView();%>
</td>
<td width="37" border="0"  background="images/rhanger.png"></td>
</tr>
</table>
</div>
<!--
<div id="dalm">
<embed id='soundControl' type="audio/x-wav" src="alarm1.wav" hidden="true" autostart="true" loop="true"></embed>
</div>
--> 
</body>
</html>
