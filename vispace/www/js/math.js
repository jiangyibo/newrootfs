function isMin(obj1,obj2,n1,n2)
{
 /*alert( "o1=" +obj1.value+ ":o2=" +obj2.value);
 alert(parseInt(obj1.value)==obj1.value);
 alert(obj1.value<obj2.value);
 alert(parseInt(obj2.value)==obj2.value);
 */
 var v1,v2;
 v1=parseInt(obj1.value);
 v2=parseInt(obj2.value);
 //alert(v1<v2);
 if(v1==obj1.value && v2==obj2.value && v1<v2)
  return true;
 else
 {
   alert(n1 +"必须小于" + n2);
   return false;
 }
}
