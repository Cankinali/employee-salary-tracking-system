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
    public partial class YillaraGoreMaasGrafigi : System.Web.UI.Page
    {
        SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings[0].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            cnn.Open();
            SqlCommand komut = new SqlCommand("SELECT employees.empl_name, wages.wage_total FROM employees INNER JOIN wages ON wages.empl_id = employees.empl_id", cnn);
            SqlDataReader oku = komut.ExecuteReader();
            while (oku.Read())
            {
                Chart1.Series["Series1"].Points.AddXY(oku[0].ToString(), oku[1].ToString());
            }
            cnn.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}