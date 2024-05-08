using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace AutomatedOrphanageHomeManagementSystem.AdminPanel
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=F:\asp.net\AutomatedOrphanageHomeManagementSystem\AutomatedOrphanageHomeManagementSystem\DataBase\OrphanageDataBase.mdf;Integrated Security=True;Connect Timeout=30");
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
        }

        protected void txtWholeSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                string strrr = "insert into WholeTbl values("+txtWholeNo.Text+",'"+txtWholeName.Text+"','"+txtmember.Text+"','"+txtNoRooms.Text+"','"+txtDescrtiption.Text+"')";
                cmd = new SqlCommand(strrr, con);
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Whole Detail Added')</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Whole Detail Added')</script>");
                Response.Write(ex.ToString());
            }
            finally
            {
                con.Close();
            }
        }
    }
}