using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OgrenciBilgiSistemi
{
    public partial class DersGuncelle : System.Web.UI.Page
    {
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Page.IsPostBack == false)
            {
                id = Convert.ToInt32(Request.QueryString["DersID"].ToString());
                DataSetTableAdapters.DerslerTableAdapter dt = new DataSetTableAdapters.DerslerTableAdapter();
                TextBoxDersAdi.Text = dt.DersSec(id)[0].DersAd.ToString();
            }
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            id = Convert.ToInt32(Request.QueryString["DersID"].ToString());
            DataSetTableAdapters.DerslerTableAdapter dt = new DataSetTableAdapters.DerslerTableAdapter();
            dt.DersGuncelle(TextBoxDersAdi.Text, id);
            Response.Redirect("DersListesi.aspx");
        }
    }
}