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
using System.Data;
using System.Data.SqlClient;
using System.Collections;

/// <summary>
/// Summary description for dbClass
/// </summary>
public class dbClass
{
         public SqlConnection con;
         public SqlCommand cmd;
         public SqlDataReader dr, dr1;
         public SqlDataAdapter da;
         public DataSet ds;
         public DataTable dt;
         public string sql;
        public dbClass()
        {
            con = new SqlConnection("Integrated Security=SSPI;database=CashRoomdb;data source=TRAINING-7\\SQLEXPRESS");
            con.Open();
        }
        public bool returnState()
        {
            if(con.State.Equals(true))
                return true;
            else 
                return false;
        }
        public void CloseCon()
        {
            con.Close();
        }
        public int GetMaxId(string idField, string tablename, int initval, int diff)
        {
                sql = "SELECT MAX(" + idField + ") AS id FROM " + tablename;
                cmd = new SqlCommand(sql, con);
                con.Close(); con.Open();
                dr = cmd.ExecuteReader();

                int mid = 0;
                while (dr.Read())
                {
                    if (dr.IsDBNull(0))
                        mid = initval;
                    else
                        mid = dr.GetInt32(0) + diff;

                }
                con.Close();
                return mid;  
        }
        public string getDate()
        {
            DateTime dt = DateTime.Now;
            return (String.Format("{0:dd/MM/yyyy}", dt));
        }
        public bool isNumeric(string value)
        {
            // Return true if this is a number.
            int number1;
            return int.TryParse(value, out number1);
        }
}

public class Activity
{
    public int activityId { get; set; }
    public string name { get; set; }
    public char isPerson { get; set; }
}
public class UserCredit
{
    public int userId { get; set; }
    public float cd_amount { get; set; }
}
public class Events
{
    public int eventId { get; set; }
    public string fileName { get; set; }
    public string doc { get; set; }
    public int userId { get; set; }
    public int groupId { get; set; }
}
public class FinalTransaction
{
    public int transactionId { get; set; }
    public float amount { get; set; }
    public int fromId { get; set; }
    public int toId { get; set; }
    public int eventId { get; set; }
    public int groupId { get; set; }
}
public class Groups
{
    public int groupId { get; set; }
    public string groupName { get; set; }
    public int cardinality { get; set; }
    public int groupTypeId { get; set; }
}
public class GroupType
{
    public int groupTypeId { get; set; }
    public string groupType { get; set; }
}
public class Hashtable
{
    public int hashId { get; set; }
    public string hash { get; set; }
}
public class Invitation
{
    public int invitationId { get; set; }
    public string toEmail { get; set; }
    public int fromId { get; set; }
    public int hashId { get; set; }
    public char accepted { get; set; }
}
public class InvitedUsers
{
    public int inviUserId { get; set; }
    public string email { get; set; }
    public int groupId { get; set; }
    public int noApproval { get; set; }
    public char inviSent { get; set; }
    public int invitationId { get; set; }
}
public class MemberTransaction
{
    public int transactionId { get; set; }
    public float amount { get; set; }
    public int fromId { get; set; }
    public int toId { get; set; }
    public int eventId { get; set; }
    public int groupId { get; set; }
}
public class Notifications
{
    public int notificationId { get; set; }
    public int fromId { get; set; }
    public int toId { get; set; }
    public string content { get; set; }
    public DateTime doc { get; set; }
}
public class PersonalTransaction
{
    public int transactionId { get; set; }
    public float amount { get; set; }
    public int fromId { get; set; }
    public int toId { get; set; }
    public int eventId { get; set; }
    public int groupId { get; set; }
}
public class RegisterationDetails
{
    public int userId { get; set; }
    public string firstName { get; set; }
    public string lastName { get; set; }
    public int contact { get; set; }
    public DateTime dob { get; set; }
    public DateTime doj { get; set; }
    public char status { get; set; }
}
public class Settlement
{
    public int settlementId { get; set; }
    public float amount { get; set; }
    public int approval { get; set; }
    public int fromId { get; set; }
    public int toId { get; set; }
    public int finalTransactionId { get; set; }
}
public class Users_Group
{
    public int groupId { get; set; }
    public int userId { get; set; }
}
public class Users_Notification
{
    public int userId { get; set; }
    public int notificationId { get; set; }
}
