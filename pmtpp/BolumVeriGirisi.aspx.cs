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
    public partial class BolumVeriGirisi : System.Web.UI.Page
    {
        SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings[0].ConnectionString);


        protected void Page_Load(object sender, EventArgs e)
        {
            Panel1.Visible = false;
            Label4.Visible = false;
            Label5.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel1.Visible = true;
            Button1.Visible = false;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text != "" && TextBox2.Text != "")
            {
                SqlCommand sorgula = new SqlCommand("INSERT INTO departments (dept_name,dept_phone,manager_id) VALUES (@dept_name,@dept_phone,@manager_id)", cnn);
                sorgula.Parameters.AddWithValue("@dept_name", TextBox1.Text);
                sorgula.Parameters.AddWithValue("@dept_phone", TextBox2.Text);
                sorgula.Parameters.AddWithValue("@manager_id", DropDownList1.SelectedIndex+1);
       


                cnn.Open();
                sorgula.ExecuteNonQuery();
                cnn.Close();
                Label4.Text = "New department data : " + TextBox1.Text;
                Label5.Text = "Successfully added.";
            }
            else
            {
                Label4.Text = "Please do not leave any spaces.";
            }
        }
    }
}