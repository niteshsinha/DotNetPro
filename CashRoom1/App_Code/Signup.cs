using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using System.Data;

/// <summary>
/// Summary description for Signup
/// </summary>
public class Signup:dbClass
{
	public Signup():base()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public bool InsertNewUser(Users ob1, RegisterationDetails ob2)
    {
        Signup ob=new Signup();
        int userid=ob.GetMaxId("userId","Users",1,1);
        //da = new SqlDataAdapter("inserUser", con);
        cmd = new SqlCommand("insertUser", con);
        SqlParameter sp_uid = new SqlParameter("@uid",userid);
        SqlParameter sp_pass = new SqlParameter("@pass", pass);

        cmd.Parameters.Add(sp_uid);
        cmd.Parameters.Add(sp_pass);

        cmd.CommandType = CommandType.StoredProcedure;
        cmd.ExecuteNonQuery();
        
    }
}
