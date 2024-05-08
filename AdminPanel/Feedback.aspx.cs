using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace AutomatedOrphanageHomeManagementSystem.AdminPanel
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=F:\asp.net\AutomatedOrphanageHomeManagementSystem\AutomatedOrphanageHomeManagementSystem\DataBase\OrphanageDataBase.mdf;Integrated Security=True;Connect Timeout=30");
        SqlCommand cmd;
        SqlDataAdapter da1 = new SqlDataAdapter();
        DataSet ds1 = new DataSet();
        DataTable dt1 = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
            if(!IsPostBack)
            {
                bindFeed();
            }
        }
        void bindFeed()
        {
            try
            {


                string strcamp = "select * from FeedbackTbl";
                da1 = new SqlDataAdapter(strcamp, con);
                da1.Fill(ds1);

                GridView01feedback.DataSource = ds1;
                GridView01feedback.DataBind();
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

        protected void GridView01feedback_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView01feedback_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            GridView01feedback.PageIndex = e.NewSelectedIndex;
            bindFeed();
        }
    }
}