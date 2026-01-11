using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace pmtp2
{
    public partial class Giris : System.Web.UI.Page
    {
        SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings[0].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand sorgula = new SqlCommand("SELECT * FROM users WHERE user_name=@user_name AND user_psw=@user_psw", cnn);
            sorgula.Parameters.AddWithValue("@user_name", userName.Text);
            sorgula.Parameters.AddWithValue("@user_psw", userPsw.Text);
            cnn.Open();
            SqlDataReader oku = sorgula.ExecuteReader();
            if (oku.Read())
            {
                Session["user_name"] = oku["user_name"].ToString();
                Response.Redirect("Default.aspx");
            }
            else
            {
                Label5.Visible = true;
                Label5.Text = "Please enter your password or name correctly.";

            }

            oku.Close();
            cnn.Close();
            cnn.Dispose();
        }
    }
}