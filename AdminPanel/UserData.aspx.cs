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
    public partial class WebForm2 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=F:\asp.net\AutomatedOrphanageHomeManagementSystem\AutomatedOrphanageHomeManagementSystem\DataBase\OrphanageDataBase.mdf;Integrated Security=True;Connect Timeout=30");
        SqlCommand cmd;
        SqlDataAdapter daa = new SqlDataAdapter();
        DataSet dss = new DataSet();
        DataTable dtt = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
            if(!IsPostBack)
            {
                bindudata();
            }

        }
        void bindudata()
        {
            try
            {


                string strcamp = "select * from UsersTbl";
                daa = new SqlDataAdapter(strcamp, con);
                daa.Fill(dss);

                GridView01User.DataSource = dss;
                GridView01User.DataBind();
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