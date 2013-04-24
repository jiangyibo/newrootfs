function checkNumber(obj,minv,maxv,msg)
{
 if(parseInt(obj.value)==obj.value && parseInt(obj.value)>=minv && parseInt(obj.value)<=maxv)
  return true;
 else
 {
   alert(msg+"有误!\n请输入数字,范围为" + minv +"-"+maxv);
   return false;
 }
}

function isInteger( str ){  
    var regu = /^[-]{0,1}[0-9]{1,}$/;
    return regu.test(str);
}

function uIntInput(obj)
{
 obj.value=obj.value.replace(/[^\d]/g,'');
}

function intInput(obj)
{
 obj.value=obj.value.replace(/[^\-?\d]/g,'');
}
