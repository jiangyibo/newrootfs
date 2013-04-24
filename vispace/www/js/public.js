function cf_GetUrlParm()
{
var hrefstr,pos,parastr;
hrefstr = window.location.href;
pos = hrefstr.indexOf("?");
if (pos>-1)
  p = hrefstr.substring(pos);
else
	p="";
//alert(p);
return p;
}
function cf_GetParaVal(paraStr, url)    
{    
    var result = "";    
    //获取URL中全部参数列表数据    
    var str = "&" + url.split("?")[1];    
    var paraName = paraStr + "=";    
    //判断要获取的参数是否存在    
    if(str.indexOf("&"+paraName)!=-1)    
    {    
        //如果要获取的参数到结尾是否还包含“&”    
        if(str.substring(str.indexOf(paraName),str.length).indexOf("&")!=-1)    
        {    
            //得到要获取的参数到结尾的字符串    
            var TmpStr=str.substring(str.indexOf(paraName),str.length);    
            //截取从参数开始到最近的“&”出现位置间的字符    
            result=TmpStr.substr(TmpStr.indexOf(paraName),TmpStr.indexOf("&")-TmpStr.indexOf(paraName));      
        }    
        else    
        {      
            result=str.substring(str.indexOf(paraName),str.length);      
        }    
    }      
    else    
    {      
        result="";      
    }      
    return (result.replace("&",""));      
}    

function cf_InitUrlParm()
{
var urlp=cf_GetUrlParm();
if(urlp!=null || urlp!="")
{		
	var nis=document.getElementsByName("navitem");
	var unitid=document.getElementById("unitid");
	var pid=document.getElementById("pid");
	var uid=document.getElementById("uid");
	for(var i = 0; i < nis.length; i++)
  {
   if(nis[i].href.indexOf("?")<0)
	   nis[i].href=nis[i].href+ urlp;
  }
  if (pid!=null)
     pid.value=pid.value+ urlp;;
  if (unitid!=null)
     unitid.innerText=cf_GetParaVal("uid",urlp).split("=")[1];
  if (uid!=null)
     uid.value=unitid.innerText;
  
	//alert(document.getElementById("otu").href);
}
}