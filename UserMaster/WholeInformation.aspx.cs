using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace AutomatedOrphanageHomeManagementSystem.UserMaster
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=F:\asp.net\AutomatedOrphanageHomeManagementSystem\AutomatedOrphanageHomeManagementSystem\DataBase\OrphanageDataBase.mdf;Integrated Security=True;Connect Timeout=30");
        SqlCommand cmd;
        SqlDataAdapter da3 = new SqlDataAdapter();
        DataSet ds3 = new DataSet();
        DataTable dt3 = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
            if(!IsPostBack)
            {
                bindwhole();
            }
        }
        void bindwhole()
        {
            try
            {


                string strcamp = "select * from WholeTbl";
                da3 = new SqlDataAdapter(strcamp, con);
                da3.Fill(ds3);

                GridView1Whole.DataSource = ds3;
                GridView1Whole.DataBind();
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

        protected void GridView01_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}