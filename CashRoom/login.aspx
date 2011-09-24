<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="login.aspx.cs" Inherits="_Default" Title="Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head >
<title>CashRoom Login</title>
<link href="App_Themes/StyleSheet.css" rel="stylesheet" type="text/css" />
</head>

<body>
<div id="wrapper">
	<div id="content_wrap">
    	<div id="header">
        	<p>Login</p>
        </div>
        <div id="mainbar">
            <div style="border:1px solid; padding:4px; margin:2px;">
        	    
        
            <form id="Form1" runat="server">
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
            </form>
        </div>
        </div><!-- mainbar end-->
        
        <div style="clear: both;"></div>
      </div><!-- content_wrap end-->
    &nbsp;
</div><!-- wrapper end-->
</body>
</html>
