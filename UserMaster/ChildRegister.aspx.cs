using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace AutomatedOrphanageHomeManagementSystem.UserMaster
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=F:\asp.net\AutomatedOrphanageHomeManagementSystem\AutomatedOrphanageHomeManagementSystem\DataBase\OrphanageDataBase.mdf;Integrated Security=True;Connect Timeout=30");
        SqlCommand cmd;
        SqlDataAdapter da = new SqlDataAdapter();
        DataSet ds = new DataSet();
        int id1 = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();

            string str = "select max(childrenId) as childrenId from ChildrenTbl";
            da = new SqlDataAdapter(str, con);
            da.Fill(ds);

            id1 = 1;
            id1 = int.Parse(ds.Tables[0].Rows[0]["childrenId"].ToString());
            if (id1 > 0)
            {
                id1++;
            }
            else
            {
                id1 = 1;
            }
            lblCID.Text = id1.ToString();

        }

        protected void btnSubmits_Click(object sender, EventArgs e)
        {
            try
            {
                string str1 = "insert into ChildrenTbl values("+lblCID.Text+",'"+txtNames.Text+"','"+RadioButtonListGender.SelectedValue.ToString()+"','"+txtDOB.Text+"','"+txtdescription.Text+"','"+txtJoinDate.Text+"')";
                cmd = new SqlCommand(str1, con);
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Child Registration Sucessfully')</script>");
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