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
    public partial class PersonelVeriGiris : System.Web.UI.Page
    {
        SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings[0].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
     
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (txtAd.Text != "" && txtSoyad.Text != "")
            {
                SqlCommand sorgula = new SqlCommand("INSERT INTO employees (empl_fname,empl_lname,empl_name,empl_bdate,empl_start_date,empl_adress,empl_city,empl_province,empl_phone,empl_cell,empl_email,dept_id,gender_id,title_id,entered_by,entered_date,is_empl_active) VALUES (@empl_fname,@empl_lname,@empl_name,@empl_bdate,@empl_start_date,@empl_adress,@empl_city,@empl_province,@empl_phone,@empl_cell,@empl_email,@dept_id,@gender_id,@title_id,@entered_by,@entered_date,@is_empl_active)", cnn);
                sorgula.Parameters.AddWithValue("@empl_fname", txtAd.Text);
                sorgula.Parameters.AddWithValue("@empl_lname", txtSoyad.Text);
                sorgula.Parameters.AddWithValue("@empl_name", txtAd.Text + txtSoyad.Text);
                sorgula.Parameters.AddWithValue("@empl_bdate", txtDgmTarih.Text);
                sorgula.Parameters.AddWithValue("@empl_start_date", txtGirisTarih.Text);
                // sorgula.Parameters.AddWithValue("@empl_left_date", txtPilotSampiyonluk.Text);
                sorgula.Parameters.AddWithValue("@empl_adress", txtAdres.Text);
                sorgula.Parameters.AddWithValue("@empl_city", il.SelectedValue);
                sorgula.Parameters.AddWithValue("@empl_province", ilce.Text);
                sorgula.Parameters.AddWithValue("@empl_phone", txtistel.Text);
                sorgula.Parameters.AddWithValue("@empl_cell", txtCepTel.Text);
                sorgula.Parameters.AddWithValue("@empl_email", txtMail.Text);
                sorgula.Parameters.AddWithValue("@dept_id", bolum.SelectedIndex+1);
                sorgula.Parameters.AddWithValue("@gender_id", cinsiyet.SelectedIndex);
                sorgula.Parameters.AddWithValue("@title_id", unvan.SelectedIndex+1);
                sorgula.Parameters.AddWithValue("@entered_by", Session["user_name"].ToString());
                sorgula.Parameters.AddWithValue("@entered_date", DateTime.Now);
                sorgula.Parameters.AddWithValue("@is_empl_active", CheckBox1.Checked);


                cnn.Open();
                sorgula.ExecuteNonQuery();
                cnn.Close();
                Label5.Text = "Staff Added Successfully.";
            }
            else
            {
                Label5.Text = "Please do not leave any spaces.";
            }

        }

        protected void Button2_Click1(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
    }
}