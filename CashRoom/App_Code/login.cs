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

/// <summary>
/// Summary description for login
/// </summary>
public class login:dbClass
{
    string sql;
    public login():base()
	{
        
	}
    public object userCheck(string email, string pass)
    {
        sql = "SELECT * FROM Users WHERE emailId='" + email + "' AND password='" + pass + "'";
        //da = new SqlDataAdapter(sql, con);
        //ds = new DataSet();
        //da.Fill(ds, "users");
        //dt = new DataTable();
        //dt = ds.Tables["users"];
        cmd = new SqlCommand(sql, con);
        dr = cmd.ExecuteReader();
        Users ob = new Users();
        while (dr.Read())
        {
            if (dr.HasRows)
            {
                ob.userId = dr.GetInt32(0);
                ob.userName = dr.GetString(1);
                ob.password = dr.GetString(2);
                ob.emailId = dr.GetString(3);
                ob.lastTimeLogin = dr.GetDateTime(4);

            }

        }
        if (ob == null)
        {
            dr.Close();
            //con.Close();
            return null;
        }
        else
        {
            dr.Close();
            // con.Close();
            return ob;
        }
        
    }
}
