using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OgrenciBilgiSistemi
{
    public partial class OgrenciGuncelle : System.Web.UI.Page
    {
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                try
                {
                    id = Convert.ToInt32(Request.QueryString["OgrenciID"].ToString());

                    TextBoxOgrenciID.Text = id.ToString();

                    DataSetTableAdapters.OgrencilerTableAdapter dt = new DataSetTableAdapters.OgrencilerTableAdapter();
                    TxtOgrenciAd.Text = dt.OgrenciSec(id)[0].OgrenciAd;
                    TextBoxOgrenciSoyad.Text = dt.OgrenciSec(id)[0].OgrenciSoyad;
                    TextBoxOgrenciTelefon.Text = dt.OgrenciSec(id)[0].OgrenciTelefon;
                    TextBoxOgrenciMail.Text = dt.OgrenciSec(id)[0].OgrenciMail;
                    TextBoxOgrenciSifre.Text = dt.OgrenciSec(id)[0].OgrenciSifre;
                    TextBoxOgrenciFotograf.Text = dt.OgrenciSec(id)[0].OgrenciFotograf;
                }
                catch (Exception)
                {

                    TextBoxOgrenciFotograf.Text = "Link girin";
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataSetTableAdapters.OgrencilerTableAdapter dt = new DataSetTableAdapters.OgrencilerTableAdapter();
            dt.OgrenciGuncelle(TxtOgrenciAd.Text, TextBoxOgrenciSoyad.Text, TextBoxOgrenciTelefon.Text, TextBoxOgrenciMail.Text, TextBoxOgrenciSifre.Text, TextBoxOgrenciFotograf.Text, Convert.ToInt32(TextBoxOgrenciID.Text));
            Response.Redirect("Default.aspx");
        }
    }
}