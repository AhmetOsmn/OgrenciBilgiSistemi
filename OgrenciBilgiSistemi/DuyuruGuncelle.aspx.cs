using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OgrenciBilgiSistemi
{
    public partial class DuyuruGüncelle : System.Web.UI.Page
    {
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                id = Convert.ToInt32(Request.QueryString["DuyuruId"].ToString());
                DataSetTableAdapters.DuyurularTableAdapter dt = new DataSetTableAdapters.DuyurularTableAdapter();

                TextBoxDuyuruID.Text = id.ToString();
                TextBoxDuyuruBaslik.Text = dt.DuyuruSec(id)[0].DuyuruBaslik;
                TextArea1.Value = dt.DuyuruSec(id)[0].DuyuruIcerik;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataSetTableAdapters.DuyurularTableAdapter dt = new DataSetTableAdapters.DuyurularTableAdapter();
            dt.DuyuruGuncelle(TextBoxDuyuruBaslik.Text, TextArea1.Value, Convert.ToInt32(TextBoxDuyuruID.Text));
            Response.Redirect("DuyuruListesi.aspx");
        }
    }
}