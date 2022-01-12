using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OgrenciBilgiSistemi
{
    public partial class OgrenciGuncelle2 : System.Web.UI.Page
    {
        string numara;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == false)
            {
                numara = Request.QueryString["Numara"];
                DataSetTableAdapters.OgrencilerTableAdapter adapter = new DataSetTableAdapters.OgrencilerTableAdapter();
                TextBoxNumara.Text = numara;
                TextBoxAdSoyad.Text = adapter.OgrenciPaneliGetir(numara)[0].OgrenciAd + " " + adapter.OgrenciPaneliGetir(numara)[0].OgrenciSoyad;
                TextBoxMail.Text = adapter.OgrenciPaneliGetir(numara)[0].OgrenciMail;
                TextBoxTel.Text = adapter.OgrenciPaneliGetir(numara)[0].OgrenciTelefon;
                TextBoxSifre.Text = adapter.OgrenciPaneliGetir(numara)[0].OgrenciSifre;
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           

            DataSetTableAdapters.OgrencilerTableAdapter adapter = new DataSetTableAdapters.OgrencilerTableAdapter();
            adapter.OgrenciBilgiGuncelle(TextBoxTel.Text, TextBoxMail.Text, TextBoxSifre.Text, TextBoxNumara.Text);
            Response.Redirect("OgrenciDefault.aspx?Numara="+TextBoxNumara.Text);
        }
    }
}