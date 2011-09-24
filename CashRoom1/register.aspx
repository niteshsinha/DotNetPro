<%@ Page Language="C#" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head >
<title>CashRoom</title>
  <!--  <link href="App_Themes/StyleSheet.css" rel="stylesheet" type="text/css" /> -->
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
<body>
   


    
<!-- wrap starts here -->
    <div id="wrap">
    
    
	
	<!-- navigation starts-->	
		
	
	<!-- content-wrap starts -->
	    <div id="content-wrap">
            <div id="main">
                <form id="form1">
                <table>
                    <tr>
                        <td>
                            Email:</td>
                        <td>
                            <input size="20" type="text" name="txtEmail" id="txtEmail" /></td>
                    </tr>
                    <tr>
                        <td>
                            Password:</td>
                        <td>
                            <input size="20" type="text" name="txtPass" id="txtPass" /></td>
                    </tr>
                    <tr>
                        <td>
                            Confirm Password:</td>
                        <td>
                            <input size="20" type="text" name="txtCPass" id="txtCPass"  /></td>
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
			
		<!-- main ends -->	
		    </div>
		    <div id="main1">
		    <form id="form2" >
		        <table>
		            <tr>
		                <td>Group Name: </td>
		                <td><input type="text" name="txtgname" id="txtgname" /></td>
		            </tr>
		            <tr>
		                
		                <td style="text-align:right;"><input type="button" name="btnaddmem" id="btnaddmem" value="Add Members" onclick="addmem()"/> </td>
		            </tr>
		        </table>
		        
		                <div id="memdiv">
		                    
		                </div>
		         <input type="button" name="btnsumbit" id="btnsubmit" value="Submit" />
                </form>
                
		    </div>
            
	
	<!-- content-wrap ends -->
	    </div>
	
	<!-- footer-wrap-starts -->		
	
<!-- wrap-ends-here -->

    </div>
   
</body>
</html>
