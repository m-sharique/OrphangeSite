using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace AutomatedOrphanageHomeManagementSystem.MainMaster
{
    public partial class WebForm8 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=F:\asp.net\AutomatedOrphanageHomeManagementSystem\AutomatedOrphanageHomeManagementSystem\DataBase\OrphanageDataBase.mdf;Integrated Security=True;Connect Timeout=30");
        SqlCommand cmd;
        SqlDataAdapter da = new SqlDataAdapter();
        DataSet ds = new DataSet();
        DataTable dt = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
        }

        protected void btnSignUp_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registration.aspx");
        }

        protected void btnLogins_Click(object sender, EventArgs e)
        {
            try
            {
                if (DropDownListLogins.SelectedValue.ToString() == "USER")
                {
                    //if(txtUserNames.Text=="jayesh123" && txtPasswords.Text=="123456")
                    //{
                    //    Response.Redirect("../UserMaster/UserHome.aspx");
                    //}
                    string str1 = "select * from UsersTbl where email='" + txtUserNames.Text + "' and pass='" + txtPasswords.Text + "'";
                    da = new SqlDataAdapter(str1, con);
                    da.Fill(dt);

                    if (dt.Rows.Count > 0)
                    {

                        Response.Redirect("../UserMaster/UserHome.aspx");
                    }
                    else
                    {
                        Response.Write("<script>alert('Please try registration')</script>");
                    }
                }
                else if (DropDownListLogins.SelectedValue.ToString() == "ADMIN")
                {
                    string str2 = "select * from AdminTbl where username='" + txtUserNames.Text + "' and aPass='" + txtPasswords.Text + "'";
                    da = new SqlDataAdapter(str2, con);
                    da.Fill(dt);

                    if (dt.Rows.Count > 0)
                    {
                        //Response.Write("<script>alert('Ok')</script>");
                        Response.Redirect("../AdminPanel/Home.aspx");
                    }
                    else
                    {
                        Response.Write("<script>alert('User name or password rong')</script>");
                    }

                }
            }
            catch (Exception ex)
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