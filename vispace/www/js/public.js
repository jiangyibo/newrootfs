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
    //��ȡURL��ȫ�������б�����    
    var str = "&" + url.split("?")[1];    
    var paraName = paraStr + "=";    
    //�ж�Ҫ��ȡ�Ĳ����Ƿ����    
    if(str.indexOf("&"+paraName)!=-1)    
    {    
        //���Ҫ��ȡ�Ĳ�������β�Ƿ񻹰�����&��    
        if(str.substring(str.indexOf(paraName),str.length).indexOf("&")!=-1)    
        {    
            //�õ�Ҫ��ȡ�Ĳ�������β���ַ���    
            var TmpStr=str.substring(str.indexOf(paraName),str.length);    
            //��ȡ�Ӳ�����ʼ������ġ�&������λ�ü���ַ�    
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