function checkIp(ip,msg,allowempty)
{
var exp=/^(\d{1,2}|1\d\d|2[0-4]\d|25[0-5])\.(\d{1,2}|1\d\d|2[0-4]\d|25[0-5])\.(\d{1,2}|1\d\d|2[0-4]\d|25[0-5])\.(\d{1,2}|1\d\d|2[0-4]\d|25[0-5])$/;
var reg = ip.match(exp);
var ErrMsg="你输入的是一个非法的"+ msg+"!\n" + msg +"为:xxx.xxx.xxx.xxx（xxx为0-255)";  
if (allowempty)
{
   if (ip.length==0)
      return true;
    ErrMsg+="或为空";
}
if(reg==null)
{
  alert(ErrMsg);
  return false;
}
else
   return (true);
}

function IpV4Box(id,pNode){
this.id = id;
this.onChange=new Function();
this.onEnterKey=new Function();
this.disabled=false;
IpV4Box.all[id]=this;
if(pNode)
{
if(typeof pNode=="string")
{
pNode=document.getElementById(pNode);
}
pNode.innerHTML=this.toString();
}
}
IpV4Box.all={};
IpV4Box.EnabledClassName="ipInput oneInput";//启用时样式
IpV4Box.DisabledClassName="ipInput oneInputDisabled";// 禁用时样式
IpV4Box.prototype={
/**
* 激活IP框
* @param {number} index 1-4　指定激活的位置
*/
focus:function(index){
if(!index)
index=1;
document.getElementById(this.id+"_"+index).focus();
},
setEnable:function(bEnable){
var b=!bEnable;
this.disabled=!bEnable;
var boxes=document.getElementById(this.id).getElementsByTagName("input");
for(var i=0;i<boxes.length;i++)
{
boxes.readOnly=b;
}
document.getElementById(this.id).className=bEnable?IpV4Box.EnabledClassName:IpV4Box.DisabledClassName
},
toString:function(){
return '<span  id="'+this.id+'" class="' + IpV4Box.EnabledClassName + '"  >\
<input onkeypress="IpV4Box.evt.keypress(this,event)" onkeydown="IpV4Box.evt.keydown(this,event)" onfocus="IpV4Box.evt.focus(this,event)" onpaste="IpV4Box.evt.change(this,event);" oninput="IpV4Box.evt.change(this,event);" onchange="IpV4Box.evt.change(this,event);"  type="text" size=3  id="'+this.id+'_1" maxlength=3\
/>.<input onkeypress="IpV4Box.evt.keypress(this,event)" onkeydown="IpV4Box.evt.keydown(this,event)" onfocus="IpV4Box.evt.focus(this,event)" onpaste="IpV4Box.evt.change(this,event);" oninput="IpV4Box.evt.change(this,event);" onchange="IpV4Box.evt.change(this,event);"  type="text" size=3  id="'+this.id+'_2" maxlength=3\
/>.<input onkeypress="IpV4Box.evt.keypress(this,event)" onkeydown="IpV4Box.evt.keydown(this,event)" onfocus="IpV4Box.evt.focus(this,event)" onpaste="IpV4Box.evt.change(this,event);" oninput="IpV4Box.evt.change(this,event);" onchange="IpV4Box.evt.change(this,event);"  type="text" size=3  id="'+this.id+'_3" maxlength=3\
/>.<input onkeypress="IpV4Box.evt.keypress(this,event)" onkeydown="IpV4Box.evt.keydown(this,event)" onfocus="IpV4Box.evt.focus(this,event)" onpaste="IpV4Box.evt.change(this,event);" oninput="IpV4Box.evt.change(this,event);" onchange="IpV4Box.evt.change(this,event);"  type="text" size=3  id="'+this.id+'_4" maxlength=3/>\
</span>';
},
getValue:function(){
var ip=[
document.getElementById(this.id+"_1").value,
document.getElementById(this.id+"_2").value,
document.getElementById(this.id+"_3").value,
document.getElementById(this.id+"_4").value
];
return ip.join(".");
},
setValue:function(ip){
ip=ip.replace(/[^\d.]/g,"");
if(ip=="")
{
ip="..."
}
ip=ip.split(".");
document.getElementById(this.id+"_1").value = ip[0];
document.getElementById(this.id+"_2").value = ip[1];
document.getElementById(this.id+"_3").value = ip[2];
document.getElementById(this.id+"_4").value = ip[3];
}
}
IpV4Box.evt={
focus:function(obj,evt){
obj.select();
},
change:function(obj,evt){
var v=parseInt(obj.value);
if( v >= 0 && v <= 255 )
{
if(v != obj.value)
obj.value=v;
}
else{
obj.value="";
}
IpV4Box.all[ obj.id.replace(/_\d$/,"") ].onChange();
},
keypress:function(obj,evt){
var key=evt.charCode||evt.keyCode;
var pos=IpV4Box.evt.getSelection(obj);
var value=obj.value;
var c=String.fromCharCode(key);
if(key>=48 && key<=57)
{
value=""+value.substring(0,pos.start)
+ c + value.substring(pos.end,value.length);
if(parseInt(value)<=255)
{
var id=obj.id;
/(.*)_(\d)$/.test(id);
var index=RegExp.$2;
IP_id=RegExp.$1;
if(parseInt(value)>=100)
{
if(parseInt(index)<4)
{
id=id.replace(/(\d)$/,parseInt(index)+1 );
setTimeout("document.getElementById('"+id+"').focus();"+
"document.getElementById('"+id+"').select();",200);
}
}
setTimeout("IpV4Box.all['"+IP_id+"'].onChange()",0);
return true;
}
else
{
if(evt.preventDefault)
evt.preventDefault();
evt.returnValue=false;
return false;
}
}
else{
if(evt.preventDefault)
evt.preventDefault();
evt.returnValue=false;
}
},
keydown:function(obj,evt){
var key=evt.charCode||evt.keyCode;
var pos=IpV4Box.evt.getSelection(obj);
var value=obj.value;
var c=String.fromCharCode(key);
var id=obj.id;
/^(.*)_(\d)$/.test(id);
var index=RegExp.$2;
var Ip_Id=RegExp.$1;
switch(key)
{
case 13://回车
IpV4Box.all[Ip_Id].onEnterKey();
break;
case 110://.小键盘
case 190://.主键盘
if(index<4)
{
id=id.replace(/(\d)$/,parseInt(index)+1 );
document.getElementById(id).focus();
document.getElementById(id).select();
}
break;
case 38://up
value=!isNaN(parseInt(value))?parseInt(value):"";
if(value=="")
value=0;
if(value<255)
{
obj.value=value+1;
}
else
obj.value=0;
break;
case 40://down
value=!isNaN(parseInt(value))?parseInt(value):"";
if(value=="")
value=255;
if(value>0)
{
obj.value=value-1;
};
break;
case 8://backspace
if(pos.start>0)
return;
case 37://left
if(pos.end==0 && index>1)
{
id=id.replace(/(\d)$/,parseInt(index)-1 );
document.getElementById(id).focus();
document.getElementById(id).select();
}
break;
case 39://right
if(pos.start==value.length && index<4)
{
id=id.replace(/(\d)$/,parseInt(index)+1 );
document.getElementById(id).focus();
document.getElementById(id).select();
}
break;
}
},
//获取选区位置
getSelection:function(oInput){
var T=this;
if(oInput.createTextRange){
var s=document.selection.createRange().duplicate();
s.moveStart("character",-oInput.value.length);
var p1=s.text.length;
var s=document.selection.createRange().duplicate();
s.moveEnd("character",oInput.value.length);
var p2=oInput.value.lastIndexOf(s.text);
if(s.text=="")p2=oInput.value.length;
return {start:p2,end:p1};
}else {
return {start:oInput.selectionStart,end:oInput.selectionEnd};
}
}
}
