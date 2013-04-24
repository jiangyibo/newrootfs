function opt_ack(opt,msg)
{
  var oname="";
  if (opt==1)
   oname="修改";
  else if (opt==2)
   oname="添加";
  else if (opt==3)
   oname="删除";
  else if (opt==4)
   oname="确认";
  else if (opt==5)
   oname="清除";
  else if (opt==10)
   oname="删除全部 ";
  if(confirm("你真的要 "+oname +  msg +"?")==false)
       return false;
  return true;
}
