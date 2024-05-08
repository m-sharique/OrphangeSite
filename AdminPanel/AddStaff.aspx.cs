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
    public partial class WebForm6 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=F:\asp.net\AutomatedOrphanageHomeManagementSystem\AutomatedOrphanageHomeManagementSystem\DataBase\OrphanageDataBase.mdf;Integrated Security=True;Connect Timeout=30");
        SqlCommand cmd;
        SqlDataAdapter das = new SqlDataAdapter();
        DataSet dds = new DataSet();
        int idd1 = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
            string str = "select max(staffId) as staffId from StaffTbl";
            das = new SqlDataAdapter(str, con);
            das.Fill(dds);

            idd1 = 1;
            idd1 = int.Parse(dds.Tables[0].Rows[0]["staffId"].ToString());
            if (idd1 > 0)
            {
                idd1++;
            }
            else
            {
                idd1 = 1;
            }
            Label1.Text = idd1.ToString();
        }

        protected void btnAddStaff_Click(object sender, EventArgs e)
        {
            try
            {
                string str1 = "insert into StaffTbl values("+Label1.Text+",'"+txtFullName.Text+"','"+RadioButtonListGender.SelectedValue.ToString()+"','"+txtJoinDate.Text+"','"+Image3.ImageUrl+"')";
                cmd = new SqlCommand(str1, con);
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Staff Member Added')</script>");
            }
            catch(Exception ex)
            {
                Response.Write("<script>alert('Staff Member Added')</script>");
                Response.Write(ex.ToString());
            }
            finally
            {
                con.Close();
            }
        }

        protected void btnupload_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
                try
                {
                    string file_name = FileUpload1.FileName;
                    FileUpload1.SaveAs(Server.MapPath("~img1" + file_name));
                    Image3.ImageUrl = "~img1" + file_name;
                }
                catch (Exception ex)
                {
                    Response.Write(ex.ToString());
                }
        }
    }
}