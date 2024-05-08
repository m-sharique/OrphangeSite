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
    public partial class WebForm6 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=F:\asp.net\AutomatedOrphanageHomeManagementSystem\AutomatedOrphanageHomeManagementSystem\DataBase\OrphanageDataBase.mdf;Integrated Security=True;Connect Timeout=30");
        SqlCommand cmd;
        SqlDataAdapter daa = new SqlDataAdapter();
        DataSet dss = new DataSet();
        int id2 = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
            string str = "select max(sponserId) as sponserId from SponserTbl";
            daa = new SqlDataAdapter(str, con);
            daa.Fill(dss);

            id2 = 1;
            id2 = int.Parse(dss.Tables[0].Rows[0]["sponserId"].ToString());
            if (id2 > 0)
            {
                id2++;
            }
            else
            {
                id2 = 1;
            }
            lblSID.Text = id2.ToString();
        }

        protected void btnConfirmRegiistration_Click(object sender, EventArgs e)
        {
            try
            {
                string str2= "insert into SponserTbl values("+lblSID.Text+",'"+txtName.Text+"','"+RadioButtonListGenders.SelectedValue.ToString()+"','"+DropDownList_HireChild.SelectedValue.ToString()+"','"+txtCity.Text+"','"+txtAdsress.Text+"')";
                cmd = new SqlCommand(str2, con);
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Sponser MemberShip Sucessfully')</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Sponser MemberShip Sucessfully')</script>");
                Response.Write(ex.ToString());
            }
            finally
            {
                con.Close();
            }

        }
    }
}