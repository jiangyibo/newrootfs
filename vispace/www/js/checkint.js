function checkIntRange(CheckCtl,Min, Max,Msg)
{
    var v = parseInt(CheckCtl.value);
    if  ((v<Min) || (v>Max))
    {
        if (Msg!="")
           showMsg(CheckCtl,Msg);
        else
           showMsg(CheckCtl,"请输入整数,范围为" + Min +"-"+Max);
        return false;
    }
    return true;
}
//控制文本框只能输入整数或带一位小数的浮点数
 function regIntInput(obj, inputStr)
 {
  //var reg=/^\d*\.?\d{0,1}$/;
  var reg= /\D/g;
  var docSel = document.selection.createRange();
  if (docSel.parentElement().tagName != "INPUT") return false;
  oSel = docSel.duplicate();
  oSel.text = "";
  var srcRange = obj.createTextRange();
  oSel.setEndPoint("StartToStart", srcRange);
  var str = oSel.text + inputStr + srcRange.text.substr(oSel.text.length);
  return reg.test(str);
 }

function intInput(obj)
{
 obj.value=obj.value.replace(/\D/g,'');
}





