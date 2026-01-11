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
    public partial class MaasVeriGiris : System.Web.UI.Page
    {
        SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings[0].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox2.Text != "" && TextBox1.Text != "")
            {
                DateTime dt = DateTime.Today;
                int yil = dt.Year;
                int ay = dt.Month;
                int sayi1, sayi2,sonuc;
                sayi1 = Convert.ToInt32(TextBox1.Text);
                sayi2 = Convert.ToInt32(TextBox2.Text);
                sonuc = sayi1 + sayi2;

                SqlCommand sorgula = new SqlCommand("INSERT INTO wages (empl_id,wage_date,wage_amount,wage_commission,wage_total,wage_year,month_id) VALUES (@empl_id,@wage_date,@wage_amount,@wage_commission,@wage_total,@wage_year,@month_id)", cnn);
                sorgula.Parameters.AddWithValue("@empl_id", DropDownList1.SelectedValue);
                sorgula.Parameters.AddWithValue("@wage_date", txtTarih.Text);
                sorgula.Parameters.AddWithValue("@wage_amount", TextBox1.Text);
                sorgula.Parameters.AddWithValue("@wage_commission", TextBox2.Text);
                sorgula.Parameters.AddWithValue("@wage_year", yil);
                sorgula.Parameters.AddWithValue("@month_id", ay);

                sorgula.Parameters.AddWithValue("@wage_total", sonuc.ToString());



                cnn.Open();
                sorgula.ExecuteNonQuery();
                cnn.Close();
                Label4.Text = "Salary Successfully Given.";
            }
            else
            {
                Label4.Text = "Please do not leave any spaces.";
            }
        }


    }
}