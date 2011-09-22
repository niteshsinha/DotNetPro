<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="login.aspx.cs" Inherits="_Default" Title="Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>CashRoom</title>
    <link rel="stylesheet" href="App_Themes/StyleSheet.css" type="text/css" />
</head>
<body>
<!-- wrap starts here -->
<div id="wrap">
    
    
	
	<!-- navigation starts-->	
		
	
	<!-- content-wrap starts -->
	<div id="content-wrap">
	
	<div id="main">
				
			<form id="form1" >
<table>
<tr><td>Email:</td> <td><input type="text" size="20" /></td></tr>
<tr><td>Password:</td> <td><input type="text" size="20"/></td></tr>
<tr><td>Confirm Password:</td> <td><input type="text" size="20" /></td></tr>
<tr><td>First Name:</td> <td><input type="text" size="20" /></td></tr>
<tr><td>Last Name:</td> <td><input type="text" size="20" /></td></tr>
<tr><td>Security Question:</td> <td><input type="text" size=20 /></td></tr>
<tr><td>Security Answer:</td> <td><input type="text" size="20" /></td></tr>
</table>
<input type="submit" value="Create User"/>
</form>
			
		<!-- main ends -->	
		</div>
	
	<div id="sidebar">
			
        <div id="divLogin" style="margin: 0 auto;">
        <div style="float:right;">
            <form runat="server">
            <asp:Login ID="Login1" runat="server" BackColor="#F7F6F3" BorderColor="#E6E2D8" 
                BorderPadding="4" BorderStyle="Solid" BorderWidth="2px" Font-Names="Verdana" 
                Font-Size="0.8em" ForeColor="#333333" LoginButtonText="Sign In" 
                TitleText="Sign In" UserNameLabelText="Email:" 
                UserNameRequiredErrorMessage="Email is required." 
                onauthenticate="Login1_Authenticate">
                <TextBoxStyle Font-Size="0.8em" />
                <LoginButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" 
                    BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775" />
                <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
                <TitleTextStyle BackColor="#5D7B9D" Font-Bold="True" Font-Size="0.9em" 
                    ForeColor="White" />
            </asp:Login>
            <br />
            <br />
            </form>
        </div>
    </div>		
		</div>
	
	<!-- content-wrap ends -->
	</div>
	
	<!-- footer-wrap-starts -->		
	
<!-- wrap-ends-here -->

</div>
</body>
</html>







