//显示信息
function showMsg(CheckCtl,Msg)
{
    if (Msg!="")
    {
        alert(Msg);
        //CheckCtl.focus();
    }
}

function showWait(oid,show,msg)
{
 var obj=document.getElementById(oid);
 
 if (show)
 {
   if (null==msg || msg.length<1)
     obj.innerHTML="正在提交,请稍后...";
   else
     obj.innerHTML=msg;
  obj.style.display='block';
 }
 else
  obj.style.display='none';
}




