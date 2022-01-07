using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OgrenciBilgiSistemi
{
    public partial class NotGuncelle : System.Web.UI.Page
    {
        int notID;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Page.IsPostBack == false)
            {
                notID = Convert.ToInt32(Request.QueryString["NotID"].ToString());

                DataSetTableAdapters.OgrenciNotlarTableAdapter dt = new DataSetTableAdapters.OgrenciNotlarTableAdapter();
                TextBoxOgrenciID.Text = dt.NotGetir2(notID)[0].OgrenciID.ToString();
                TxtOgrenciAdSoyad.Text = dt.NotGetir2(notID)[0].OGRENCI.ToString();
                TextBoxSinav1.Text = dt.NotGetir2(notID)[0].Sinav1.ToString();
                TextBoxSinav2.Text = dt.NotGetir2(notID)[0].Sinav2.ToString();
                TextBoxSinav3.Text = dt.NotGetir2(notID)[0].Sinav3.ToString();
                TextBoxOrtalama.Text = dt.NotGetir2(notID)[0].Ortalama.ToString();
                TextBoxDurum.Text = dt.NotGetir2(notID)[0].Durum.ToString();
            }
        }

        protected void ButtonHesapla_Click(object sender, EventArgs e)
        {
            double sinav1, sinav2, sinav3;
            double ortalama;
            sinav1 = Convert.ToInt32(TextBoxSinav1.Text);
            sinav2 = Convert.ToInt32(TextBoxSinav2.Text);
            sinav3 = Convert.ToInt32(TextBoxSinav3.Text);
            ortalama = (sinav1 + sinav2 + sinav3) / 3;
            TextBoxOrtalama.Text = ortalama.ToString("0.00");
            if (ortalama >= 50)
            {
                TextBoxDurum.Text = "True";
            }
            else
            {
                TextBoxDurum.Text = "False";
            }
        }

        protected void ButtonGuncelle_Click(object sender, EventArgs e)
        {
            notID = Convert.ToInt32(Request.QueryString["NotID"].ToString());
            DataSetTableAdapters.OgrenciNotlarTableAdapter dt = new DataSetTableAdapters.OgrenciNotlarTableAdapter();
            dt.NotGuncelle(byte.Parse(TextBoxSinav1.Text), byte.Parse(TextBoxSinav2.Text), byte.Parse(TextBoxSinav3.Text),decimal.Parse(TextBoxOrtalama.Text),bool.Parse(TextBoxDurum.Text),notID);
            Response.Redirect("NotListesi.aspx");
        }
    }
}