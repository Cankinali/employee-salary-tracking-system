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
    public partial class PersonelIetisimRaporu : System.Web.UI.Page
    {
        SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings[0].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {

            string sorgu = "SELECT employees.empl_id,employees.empl_email,employees.empl_phone,employees.empl_cell,employees.empl_name,employees.dept_id, departments.dept_name FROM employees INNER JOIN departments ON departments.dept_id = employees.dept_id";

            SqlCommand cmd = new SqlCommand(sorgu, cnn);

            cnn.Open();

            SqlDataReader dr = cmd.ExecuteReader();
            lstyazilar.DataSource = dr;
            lstyazilar.DataBind();

            cnn.Close();
        }
    }
}