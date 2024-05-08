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
    public partial class WebForm7 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=F:\asp.net\AutomatedOrphanageHomeManagementSystem\AutomatedOrphanageHomeManagementSystem\DataBase\OrphanageDataBase.mdf;Integrated Security=True;Connect Timeout=30");
        SqlCommand cmd;
        SqlDataAdapter da = new SqlDataAdapter();
        DataSet ds = new DataSet();
        DataTable dt = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
            if(!IsPostBack)
            {
                bindsponser();
            }
        }
        void bindsponser()
        {
            try
            {


                string strcamp = "select * from SponserTbl";
                da = new SqlDataAdapter(strcamp, con);
                da.Fill(ds);

                GridView01Osponser.DataSource = ds;
                GridView01Osponser.DataBind();
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
        protected void GridView01Orphane_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void GridView01Orphane_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {

        }

        protected void GridView01Orphane_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView01Osponser.PageIndex = e.NewPageIndex;
            bindsponser();
        }
    }
}