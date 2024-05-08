using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


namespace AutomatedOrphanageHomeManagementSystem.MainMaster
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=F:\asp.net\AutomatedOrphanageHomeManagementSystem\AutomatedOrphanageHomeManagementSystem\DataBase\OrphanageDataBase.mdf;Integrated Security=True;Connect Timeout=30");
            SqlCommand cmd;
            con.Open();

            try
            {
                string str = "insert into FeedbackTbl values('"+txtName.Text+"','"+txtEmail.Text+"',"+txtMobile.Text+",'"+txtMessage.Text+"')";
                cmd = new SqlCommand(str, con);
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Feedback Send Sucessfully')</script>");
            }
            catch(Exception ex)
            {
                Response.Write(ex.ToString());
            }
            finally
            {
                con.Close();
            }
            
        }
    }
}