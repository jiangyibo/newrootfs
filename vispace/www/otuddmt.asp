<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script src="js/checknum.js" type="text/javascript"></script>
<script src="js/math.js" type="text/javascript"></script>
<script src="js/opt.js" type="text/javascript"></script>
<link rel="stylesheet" href="css/style.css" type="text/css" />
<link rel="stylesheet" href="css/cview.css" type="text/css" />
<link rel="stylesheet" href="css/button.css" type="text/css"/>
<title>DDM 告警阈值</title>
</head>
<script language="javascript">
window.onload=function(){
//cf_InitUrlParm();
}
function toUrl(p)   
{ 
  //alert(p);
  location.href="/goform/slot?cid=0&uid=" +otuForm1.uid.value +"&page=" +p;   
}
function check(obj,item,port)
{
  var msg="光口" +port +":";
  var ret,minv,maxv,n1,n2,o1,o2;
  
  if (item % 2)
  {
     n1=document.getElementById('t'+item).innerText;
     n2=document.getElementById('t'+(item+1)).innerText;
     o1=obj;
     o2=document.getElementById('i'+port+(item+1));
  }
  else
  {
     n1=document.getElementById('t'+(item-1)).innerText;
     n2=document.getElementById('t'+item).innerText;
     o1=document.getElementById('i'+port+(item-1));
     o2=obj;
  }
  
  if (item>0 && item<11)
  {
    if (item==1 ||item==2)
       msg+="接收端";
    else if (item==3 ||item==4)
       msg+="发送端";
    switch (item){
     case 1:
     case 3:
          ret=checkNumber(obj,-50,0,msg +n1);
          break;
     case 2:
     case 4:
           ret=checkNumber(obj,-20,5,msg +n2);
          break;
     case 5:
          ret=checkNumber(obj,-20,20,msg +n1);
          break;
     case 6:
          ret=checkNumber(obj,30,100,msg +n2);
          break;
     case 7:
          ret=checkNumber(obj,3,6,msg +n1);
          break;
     case 8:
          ret=checkNumber(obj,3,10,msg +n2);
          break;
     case 9:
          ret=checkNumber(obj,3,30,msg +n1);
          break;
     case 10:
          ret=checkNumber(obj,20,100,msg +n2);
          break;
    }
    if (ret!=true)
      return false;
    //alert(o1.value+ ":" +o2.value);
    if (isMin(o1,o2,msg+n1,n2)!=true)
      return false;
    else
      return true;
  }
  return false;
}

function checkAll(p)
{
 var f;
 
 f=document.getElementById('F'+p);
 //alert(f.minrx.value);
 if (check(f.minrx,1,p)!=true || check(f.maxrx,2,p)!=true ||check(f.mintx,3,p)!=true || check(f.maxtx,4,p)!=true)
   return false;
 //if (check(f.mintx,3,p)!=true || check(f.maxtx,4,p)!=true)
  // return false;
 if (check(f.mintemp,5,p)!=true ||check(f.maxtemp,6,p)!=true)
   return false;
 if (check(f.minvolt,7,p)!=true ||check(f.maxvolt,8,p)!=true)
   return false;
if (check(f.minbias,9,p)!=true ||check(f.maxbias,10,p)!=true)
   return false;
 return true;
 //alert(f.minrx);
}
function app(c,s,p)
{
  var msg=" 第" +s +"槽 光口" +p +":";
  //alert(msg);
  if (checkAll(p)!=true)
     return false;
  var ret=opt_ack(1,msg + "DDM 告警阈值");
  //alert(ret);
  return ret;
}
</script>
<body>
<ul id="nav">
  <li><span>OTU=></span></li>
  <li><a href="#" id="base" name="navitem" onclick="javascript:toUrl('otubi');">基本信息</a></li>
  <li><a href="#" id="otu" name="navitem" onclick="javascript:toUrl('otu');">OTU 信息</a></li>
  <li><a href="#" id="ddm" name="navitem" onclick="javascript:toUrl('otuddm');">DDM 信息</a></li>
  <li><a href="#" id="ddmt" name="navitem" class="current" onclick="javascript:toUrl('otuddmt');">DDM 告警阈值</a></li>
  <li><a href="../help/otu.htm" target="new">帮助</a></li>
</ul>
<div id="content">
<input type="hidden" id="pid" name="page" value="otuddmt"/>
<input type="hidden" id="cid" name="cid" value="0"/>
<input type="hidden" id="uid" name="uid" value="<%UnitID();%>"/>
<table width="100%" align="center" cellpadding="0" cellspacing="0">
 <tr>
     <td width="100px">
      <table align="center" cellpadding="0" cellspacing="0" class="ut">
    	<tr>
        <th id="unitid" class="uh"><%UnitID();%></th>
      </tr>
      <tr>
      <td><%UnitView(3);%></td>
      </tr>
      <tr class="uf">
      <td></td>
      </tr>
     </table>
    </td>
  <td valign="top">
   <table border="1" align="center" cellpadding="0" cellspacing="0" class="dt">
   <thead>
   <tr>
     <th colspan="12">DDM 告警阈值</th>
   </tr>
   </thead>
   <tr class="toptitle">
    <th></th>
    <th colspan="2">接收光功率(dBm)</th>
    <th colspan="2">发送光功率(dBm)</th>
    <th colspan="2">温度(℃)</th>
    <th colspan="2">电压(V)</th>
    <th colspan="2">偏置电流(mA)</th>
    <th></th>
    </tr>
    <tr>
    <th>光口</th>
    <th id=t1>最小光功率</th>
    <th id=t2>最大光功率</th>
    <th id=t3>最小光功率</th>
    <th id=t4>最大光功率</th>
    <th id=t5>最小温度</th>
    <th id=t6>最大温度</th>
    <th id=t7>最小电压</th>
    <th id=t8>最大电压</th>
    <th id=t9>最小偏置电流</th>
    <th id=t10>最大偏置电流</th>
    <th>修改</th>
  </tr>
   <%DDM(3,2);%>
   <tr>
   <td colspan="12" align="center"><a class="button gray medium" href="otuddmt.asp">刷新</a></td>
  </tr>
   </table>   
   </td>
  </tr>
</table>
</div>
</body>
</html>
