using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OgrenciBilgiSistemi
{
    public partial class LoginPanel : System.Web.UI.Page
    {

        SqlConnection connection = new SqlConnection(@"Data Source=DESKTOP-BHGN45D\AHMETSDBSERVER;Initial Catalog=(MY)OgrenciBilgiSistemi;Integrated Security=True");


        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            connection.Open();
            SqlCommand cmd = new SqlCommand("select * from Ogrenciler where OgrenciNumara=@p1 and OgrenciSifre=@p2", connection);
            cmd.Parameters.AddWithValue("@p1",TextBoxKullaniciAdi.Text);
            cmd.Parameters.AddWithValue("@p2",TextBoxSifre.Text);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Session.Add("Numara", TextBoxKullaniciAdi.Text);
                Response.Redirect("OgrenciDefault.aspx");
            }
            else
            {
                TextBoxSifre.Text = "Şifre hatalı.";
            }
            connection.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            connection.Open();
            SqlCommand cmd = new SqlCommand("select * from Ogretmenler where OgretmenNumara=@p1 and OgretmenSifre=@p2", connection);
            cmd.Parameters.AddWithValue("@p1", TextBoxKullaniciAdi.Text);
            cmd.Parameters.AddWithValue("@p2", TextBoxSifre.Text);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Session.Add("OgretmenNumara", TextBoxKullaniciAdi.Text);
                Response.Redirect("Default.aspx");
            }
            else
            {
                TextBoxSifre.Text = "Şifre hatalı.";
            }
            connection.Close();
        }
    }
}