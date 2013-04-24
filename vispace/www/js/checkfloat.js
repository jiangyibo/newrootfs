function checkFloatRange(obj,minv,maxv,msg)
{
    //var v = parseFloat(obj.value);
    //alert(obj.value);
     if(parseFloat(obj.value)==obj.value && parseFloat(obj.value)>=minv && parseFloat(obj.value)<=maxv)
        return true;
    //if  ((v<Min) || (v>Max))
    else
    {
        if (msg!="")
           showMsg(obj,"请输入浮点数," + msg +"范围为" + minv +"~"+maxv);
        else
           showMsg(obj,"请输入浮点数,范围为" + minv +"~"+maxv);
        return false;
    }
}

function inputFloat(oInput)  
{  
   
} 

//控制文本框只能输入整数或带一位小数的浮点数
 function regInput(obj, inputStr)
 {
  var reg=/^\d*\.?\d{0,1}$/;
  var docSel = document.selection.createRange();
  if (docSel.parentElement().tagName != "INPUT") return false;
  oSel = docSel.duplicate();
  oSel.text = "";
  var srcRange = obj.createTextRange();
  oSel.setEndPoint("StartToStart", srcRange);
  var str = oSel.text + inputStr + srcRange.text.substr(oSel.text.length);
  return reg.test(str);
 }





