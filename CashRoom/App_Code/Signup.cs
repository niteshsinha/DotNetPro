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
    // to return the userid
    public int returnUserId()
    {
        return (GetMaxId("userId","Users",1,1));
    }
    // to return the groupid
    public int returnGroupId()
    {
        return (GetMaxId("groupId", "Groups", 1000, 1));
    }


    // if there is a new user of the system
    public bool InsertNewUser(Users ob1, RegisterationDetails ob2)
    {
       
        int userid=returnUserId();
        
        cmd = new SqlCommand("insertUser", con);
        SqlParameter sp_uid = new SqlParameter("@uid",userid);
        SqlParameter sp_pass = new SqlParameter("@pass", ob1.password);
        SqlParameter sp_email = new SqlParameter("@email", ob1.emailId);
        SqlParameter sp_ltl = new SqlParameter("@ltl",ob1.lastTimeLogin);
        SqlParameter sp_fname = new SqlParameter("@fname", ob2.firstName);
        SqlParameter sp_lname = new SqlParameter("@lname", ob2.lastName);
        SqlParameter sp_con = new SqlParameter("@con", ob2.contact);
        SqlParameter sp_dob = new SqlParameter("@dobb", ob2.dob);
        SqlParameter sp_doj = new SqlParameter("@dojj", ob2.doj);
        SqlParameter sp_status = new SqlParameter("@status", ob2.status);
        SqlParameter sp_sq = new SqlParameter("@secQuesId", ob2.secQuesId);
        SqlParameter sp_sa = new SqlParameter("@secAns", ob2.secAns);
            
        cmd.Parameters.Add(sp_uid);
        cmd.Parameters.Add(sp_pass);
        cmd.Parameters.Add(sp_email);
        cmd.Parameters.Add(sp_ltl);
        cmd.Parameters.Add(sp_fname);
        cmd.Parameters.Add(sp_lname);
        cmd.Parameters.Add(sp_con);
        cmd.Parameters.Add(sp_dob);
        cmd.Parameters.Add(sp_doj);
        cmd.Parameters.Add(sp_status);
        cmd.Parameters.Add(sp_sq);
        cmd.Parameters.Add(sp_sa);
        
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.ExecuteNonQuery();

        // insert into groups table
        
        return true;
    }

    public bool insertGroup(Groups obj,int uid)
    {
        // create a new base group
         
        //Groups obj = new Groups();
        int gid=returnGroupId();
        cmd = new SqlCommand("insertGroup", con);
        SqlParameter sp_gid = new SqlParameter("@gid", gid);
        SqlParameter sp_gn = new SqlParameter("@gn", obj.groupName);
        SqlParameter sp_card = new SqlParameter("@card", obj.cardinality);
        SqlParameter sp_gtid = new SqlParameter("@gtid", obj.groupTypeId);
        cmd.Parameters.Add(sp_gid);
        cmd.Parameters.Add(sp_gn);
        cmd.Parameters.Add(sp_card);
        cmd.Parameters.Add(sp_gtid);
        cmd.CommandType = CommandType.StoredProcedure;
        int res1 = cmd.ExecuteNonQuery(); // check for res1

        // now insert the value in Users_Group Table cor cross-referencing.
        
        return true;
    }
    public bool insertUsers_Group(int gid,int uid)
    {
        sql = "INSERT INTO Users_Group VALUES ("+gid+","+uid+")";
        cmd = new SqlCommand(sql, con);
        int res = cmd.ExecuteNonQuery();//check for res
        return true;
    }

    public bool sendInvitations(Invitation ob)
    {
        
        //send actual invitation here..

        int inviId = GetMaxId("invitationId", "Invitation", 1, 1);
        //Invitation ob = new Invitation();
        ob.invitationId = inviId;
        ob.fromId = 1;// from session session['userid']
        ob.groupId = 1; // get this value inserted first.
        ob.hashId=getHashId();
        ob.accepted = '0';
        sql = "INSERT INTO Invitation VALUES(" + inviId + ",'" + ob.name + "','" + ob.toEmail + "'," + ob.fromId + "," + ob.groupId + "," + ob.hashId + "," + ob.accepted + ")";
        cmd = new SqlCommand(sql, con);
        int res = cmd.ExecuteNonQuery();
            //check for value of res

        return true;

    }
    public bool insertInvitedUser(Users ob1,RegisterationDetails ob2,string hash)
    {
        int userid = returnUserId();
        cmd = new SqlCommand("insertInvitedUser", con);
        SqlParameter sp_uid = new SqlParameter("@uid", userid);
        SqlParameter sp_pass = new SqlParameter("@pass", ob1.password);
        SqlParameter sp_email = new SqlParameter("@email", ob1.emailId);
        SqlParameter sp_ltl = new SqlParameter("@ltl", ob1.lastTimeLogin);
        SqlParameter sp_fname = new SqlParameter("@fname", ob2.firstName);
        SqlParameter sp_lname = new SqlParameter("@lname", ob2.lastName);
        SqlParameter sp_con = new SqlParameter("@con", ob2.contact);
        SqlParameter sp_dob = new SqlParameter("@dobb", ob2.dob);
        SqlParameter sp_doj = new SqlParameter("@dojj", ob2.doj);
        SqlParameter sp_status = new SqlParameter("@status", ob2.status);
        SqlParameter sp_sq = new SqlParameter("@secQuesId", ob2.secQuesId);
        SqlParameter sp_sa = new SqlParameter("@secAns", ob2.secAns);
        SqlParameter sp_hash = new SqlParameter("@hash",hash);

        cmd.Parameters.Add(sp_uid);
        cmd.Parameters.Add(sp_pass);
        cmd.Parameters.Add(sp_email);
        cmd.Parameters.Add(sp_ltl);
        cmd.Parameters.Add(sp_fname);
        cmd.Parameters.Add(sp_lname);
        cmd.Parameters.Add(sp_con);
        cmd.Parameters.Add(sp_dob);
        cmd.Parameters.Add(sp_doj);
        cmd.Parameters.Add(sp_status);
        cmd.Parameters.Add(sp_sq);
        cmd.Parameters.Add(sp_sa);
        cmd.Parameters.Add(sp_hash);

        cmd.CommandType = CommandType.StoredProcedure;
        int res = cmd.ExecuteNonQuery();
        return true;
    }
}
