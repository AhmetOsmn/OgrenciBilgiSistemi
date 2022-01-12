using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OgrenciBilgiSistemi
{
    public partial class OgrenciDefault : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {

            TextBoxNumara.Text = Request.QueryString["Numara"];

            DataSetTableAdapters.OgrencilerTableAdapter adapter = new DataSetTableAdapters.OgrencilerTableAdapter();
            string numara = TextBoxNumara.Text;
           
            TextBoxAdSoyad.Text = "AD SOYAD: "+adapter.OgrenciPaneliGetir(numara)[0].OgrenciAd + " "+ adapter.OgrenciPaneliGetir(numara)[0].OgrenciSoyad;
            TextBoxMail.Text = "MAİL:"+ adapter.OgrenciPaneliGetir(numara)[0].OgrenciMail;
            TextBoxTel.Text = "TELEFON: "+ adapter.OgrenciPaneliGetir(numara)[0].OgrenciTelefon;
            TextBoxSifre.Text = "ŞİFRE: "+ adapter.OgrenciPaneliGetir(numara)[0].OgrenciSifre;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("OgrenciGuncelle2.aspx?Numara="+TextBoxNumara.Text);
        }
    }
}