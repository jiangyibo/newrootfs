function trimStr(str){return str.replace(/(^\s*)|(\s*$)/g,"");}
function getBytesLen(str)
{
  var bytelen = 0;
  var chars = str.split('');
  for(i = 0; i<chars.length; i++){
     var char = chars[i];
     var urichar = encodeURI(char);
     bytelen += urichar.length == 1 ? 1 : urichar.length / 3;
  }
  return bytelen;
}
function checkud()
{
  var ud;
  var err="长度必须小于31个字节,汉字占3个字节!";
  ud=document.getElementsByName("uname");
  //alert(getBytesLen(ud[0].value));
  if (getBytesLen(ud[0].value)>30)
  {
    alert("单元盘名称"+err);
    return false;
  }
  ud=document.getElementsByName("uloc");
  if (getBytesLen(ud[0].value)>30)
  {
    alert("单元盘位置"+err);
    return false;
  }
  ud=document.getElementsByName("ucon");
  if (getBytesLen(ud[0].value)>30)
  {
    alert("用户联系"+err);
    return false;
  }
  ud=document.getElementsByName("udata");
  if (getBytesLen(ud[0].value)>30)
  {
    alert("用户自定义数据("+getBytesLen(ud[0].value) +")" + err);
    return false;
  }
  ud=document.getElementsByName("updev");
  if (getBytesLen(ud[0].value)>30)
  {
    alert("上联设备("+getBytesLen(ud[0].value) +")" + err);
    return false;
  }
  ud=document.getElementsByName("userv");
  if (getBytesLen(ud[0].value)>30)
  {
    alert("开通的业务"+err);
    return false;
  }
  return true;
}
