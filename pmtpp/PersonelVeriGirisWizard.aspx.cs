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
    public partial class PersonelVeriGirisWizard : System.Web.UI.Page
    {
        SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings[0].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void Wizard1_NextButtonClick(object sender, WizardNavigationEventArgs e)
        {
            Label26.Text = txtad.Text;
            Label27.Text = txtsoyad.Text;
            Label28.Text = txtdogum.Text;
            Label29.Text = txtgiristarih.Text;
            Label30.Text = unvan.SelectedValue;
            Label31.Text = txttel.Text;
            Label32.Text = txtcep.Text;
            Label33.Text = txtemail.Text;
            Label34.Text = bolum.SelectedValue;

        }
        protected void Wizard1_FinishButtonClick(object sender, WizardNavigationEventArgs e)
        {
            if (txtad.Text != "" && txtsoyad.Text != "")
            {
                SqlCommand sorgula = new SqlCommand("INSERT INTO employees (empl_fname,empl_lname,empl_bdate,empl_start_date,title_id,empl_phone,empl_cell,empl_email,dept_id) VALUES (@empl_fname,@empl_lname,@empl_bdate,@empl_start_date,@title_id,@empl_phone,@empl_cell,@empl_email,@dept_id)", cnn);
                sorgula.Parameters.AddWithValue("@empl_fname", txtad.Text);
                sorgula.Parameters.AddWithValue("@empl_lname", txtsoyad.Text);
                sorgula.Parameters.AddWithValue("@empl_bdate", txtdogum.Text);
                sorgula.Parameters.AddWithValue("@empl_start_date", txtgiristarih.Text);
                sorgula.Parameters.AddWithValue("@title_id", unvan.SelectedIndex+1);
                sorgula.Parameters.AddWithValue("@empl_phone", txttel.Text);
                sorgula.Parameters.AddWithValue("@empl_cell", txtcep.Text);
                sorgula.Parameters.AddWithValue("@empl_email", txtemail.Text);
                sorgula.Parameters.AddWithValue("@dept_id", bolum.SelectedIndex+1);



                cnn.Open();
                sorgula.ExecuteNonQuery();
                cnn.Close();
                Label35.Text = "New Personnel Information: " + txtad.Text + txtsoyad.Text;
            }
            else
            {
                Label35.Text = "Name-Surname can not be left blank.";
            }

        }


    }
}