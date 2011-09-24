<%@ Page Language="C#" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head >
<title>CashRoom</title>
<link href="App_Themes/StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<script type="text/javascript" language="javascript">
function addmem()
{
var newdiv=document.createElement("div");
var newtext=document.createTextNode("Name :");
var newemail=document.createTextNode("Email :");
var aTextBox1=document.createElement('input');
aTextBox1.type = 'text';
//aTextBox.value = 'Input Element';
aTextBox1.id = 'txtN';
var aTextBox2=document.createElement('input');
aTextBox2.type = 'text';
//aTextBox.value = 'Input Element';
aTextBox2.id = 'txtE';
newdiv.appendChild(newtext); //append text to new div
newdiv.appendChild(aTextBox1); //append text to new div
newdiv.appendChild(newemail); //append text to new div
newdiv.appendChild(aTextBox2); //append text to new div
document.getElementById("memdiv").appendChild(newdiv); //append new div to another 
}
</script>
<script>
function addEvent() {
  var ni = document.getElementById('myDiv');
  var numi = document.getElementById('theValue');
  var num = (document.getElementById("theValue").value -1)+ 2;
  numi.value = num;
  var divIdName = "my"+num+"Div";
  var newdiv = document.createElement('div');
  newdiv.setAttribute("id",divIdName);
  
var newtext=document.createTextNode("Name :");
var newemail=document.createTextNode("Email :");
var aTextBox1=document.createElement('input');
aTextBox1.type = 'text';
//aTextBox.value = 'Input Element';
aTextBox1.id = 'txtN';
var aTextBox2=document.createElement('input');
aTextBox2.type = 'text';
//aTextBox.value = 'Input Element';
aTextBox2.id = 'txtE';
var abutton=document.createElement('input');
abutton.type = 'button';
abutton.id="btnDelete";
abutton.name="btnDelete";
abutton.value="delete";
var ev = "removeElement(\'"+divIdName+"\')";
abutton.setAttribute('onclick',ev);


newdiv.appendChild(newtext); //append text to new div
newdiv.appendChild(aTextBox1); //append text to new div
newdiv.appendChild(newemail); //append text to new div
newdiv.appendChild(aTextBox2); //append text to new div
newdiv.appendChild(abutton); // append button to div
  
  //newdiv.innerHTML = "Element Number " + num + " has been added! <a href=\"javascript:;\" onclick=\"removeElement(\'"+divIdName+"\')\">Remove the element &quot;"+divIdName+"&quot;</a>";
 //newdiv.innerHTML = "<a href=\"javascript:;\" onclick=\"removeElement(\'"+divIdName+"\')\">Delete</a>";
  ni.appendChild(newdiv);
}

function removeElement(divNum) {
  var d = document.getElementById('myDiv');
  var olddiv = document.getElementById(divNum);
  d.removeChild(olddiv);
}
</script>

<body>
<div id="wrapper">
	<div id="content_wrap">
    	<div id="header">
        	<p>Register here</p>
        </div>
        <div id="mainbar" style="width:440px;">
            <form id="form4" action="#">
                <table>
                    <tr>
                        <td>
                            Email:</td>
                        <td>
                            <input size="20" type="text" name="txtEmail" id="Text2" /></td>
                    </tr>
                    <tr>
                        <td>
                            Password:</td>
                        <td>
                            <input size="20" type="text" name="txtPass" id="Text3" /></td>
                    </tr>
                    <tr>
                        <td>
                            Confirm Password:</td>
                        <td>
                            <input size="20" type="text" name="txtCPass" id="Text4"  /></td>
                    </tr>
                    <tr>
                        <td>
                            First Name:</td>
                        <td>
                            <input size="20" type="text" /></td>
                    </tr>
                    <tr>
                        <td>
                            Last Name:</td>
                        <td>
                            <input size="20" type="text" /></td>
                    </tr>
                    <tr>
                        <td>
                            Security Question:</td>
                        <td>
                            <input size="20" type="text" /></td>
                    </tr>
                    <tr>
                        <td>
                            Security Answer:</td>
                        <td>
                            <input size="20" type="text" /></td>
                    </tr>
                </table>
                <input type="submit" value="Create User" />
                </form>
        </div><!-- mainbar end-->
        <div id="rightbar" style="width: 440px;">
        
            <div style="border:1px solid; padding:4px; margin:2px;">
        	    <form id="form3" >
		        <table>
		            <tr>
		                <td>Group Name: </td>
		                <td><input type="text" name="txtgname" id="Text1" /></td>
		            </tr>
		            <tr>
		                
		                <td style="text-align:right;"><input type="button" name="btnaddmem" id="Button1" value="Add Members" onclick="addmem()"/> </td>
		            </tr>
		        </table>
		        
		                <div id="memdiv">
		                    
		                </div>
		         <input type="button" name="btnsumbit" id="Button2" value="Submit" />
                </form>
        	</div>
        		<br />
        		<br />
        		<div>
        		<input type="hidden" value="0" id="theValue" />
	<p><a href="javascript:;" onclick="addEvent();">Add Some Elements</a></p>
	<div id="myDiv"> </div>
        		
        		</div>
        		
        		
        		
        	
        </div><!-- rightbar end -->
        <div style="clear: both;"></div>
      </div><!-- content_wrap end-->
    &nbsp;
</div><!-- wrapper end-->
</body>
</html>
