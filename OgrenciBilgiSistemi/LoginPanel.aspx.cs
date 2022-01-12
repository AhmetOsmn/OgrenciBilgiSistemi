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
                Response.Redirect("OgrenciDefault.aspx?Numara="+TextBoxKullaniciAdi.Text);
            }
            else
            {
                TextBoxSifre.Text = "Şifre hatalı.";
            }
            connection.Close();
        }
    }
}