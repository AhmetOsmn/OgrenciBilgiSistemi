using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OgrenciBilgiSistemi
{
    public partial class OgrenciEkle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataSetTableAdapters.OgrencilerTableAdapter dt = new DataSetTableAdapters.OgrencilerTableAdapter();
            dt.OgrenciEkle(TxtOgrenciAd.Text, TextBoxOgrenciSoyad.Text, TextBoxOgrenciTelefon.Text, TextBoxOgrenciMail.Text, TextBoxOgrenciSifre.Text, TextBoxOgrenciFotograf.Text);
            Response.Redirect("Default.aspx");
        }
    }
}