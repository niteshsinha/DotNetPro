using System;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class _Default : System.Web.UI.Page 
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
    {
        login ob = new login();   
        Users obj = (Users)ob.userCheck(Login1.UserName, Login1.Password);
        if(obj.userId != 0)
        {
            
            FormsAuthentication.RedirectFromLoginPage(Login1.UserName,false);
        }
        else
        {
            Login1.FailureText="This is not a valid login.";
        }

    }

}
