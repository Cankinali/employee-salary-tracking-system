using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Configuration;


namespace pmtp2
{
    public partial class PersoneleGoreMaasListesi : System.Web.UI.Page
    {
        SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings[0].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            string idD = Request.QueryString["id"];


                object kullanici = Session["user_name"];
                if (kullanici != null)
                {
                if (idD != null)
                {
                    string sorgu = "SELECT wage_year,month_id,wage_amount,wage_commission,wage_total FROM wages WHERE empl_id=" + idD;
                    SqlCommand cmd = new SqlCommand(sorgu, cnn);

                    cnn.Open();
                    SqlDataReader dr = cmd.ExecuteReader();
                    GridView1.DataSource = dr;
                    GridView1.DataBind();

                    cnn.Close();
                }
            }
                else
                {
                    Response.Redirect("giris.aspx?izinsiz");


                }
            
        }
    }
}