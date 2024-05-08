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
    public partial class WebForm8 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=F:\asp.net\AutomatedOrphanageHomeManagementSystem\AutomatedOrphanageHomeManagementSystem\DataBase\OrphanageDataBase.mdf;Integrated Security=True;Connect Timeout=30");
        SqlCommand cmd;
        SqlDataAdapter ddaa = new SqlDataAdapter();
        DataSet ddss = new DataSet();
        DataTable ddtt = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
            if(!IsPostBack)
            {
                bindop();
            }
        }
        void bindop()
        {
            try
            {


                string strcamp = "select * from ChildrenTbl";
                ddaa = new SqlDataAdapter(strcamp, con);
                ddaa.Fill(ddss);

                GridView01Orphane.DataSource = ddss;
                GridView01Orphane.DataBind();
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
            GridView01Orphane.PageIndex = e.NewSelectedIndex;
            bindop();
        }
    }
}