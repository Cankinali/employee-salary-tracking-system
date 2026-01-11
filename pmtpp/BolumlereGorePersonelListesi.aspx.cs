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
    public partial class BolumlereGorePersonelListesi : System.Web.UI.Page
    {
        SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings[0].ConnectionString);
        DataSet data = new DataSet();

        protected void Page_Load(object sender, EventArgs e)
        {
            string idD = Request.QueryString["id"];
            if (idD != null)
            {
                string sorgu = "SELECT empl_id,empl_name,title_id,empl_bdate,empl_cell,empl_phone,empl_email,dept_id,is_empl_active FROM employees WHERE dept_id=" + idD;
                SqlCommand cmd = new SqlCommand(sorgu, cnn);

                cnn.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                GridView1.DataSource = dr;
                GridView1.DataBind();

                cnn.Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
        }
    }
}