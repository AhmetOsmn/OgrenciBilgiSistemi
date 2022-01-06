using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OgrenciBilgiSistemi
{
    public partial class DuyuruEkle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Page.IsPostBack == false)
            {
                DataSetTableAdapters.OgretmenlerTableAdapter dt = new DataSetTableAdapters.OgretmenlerTableAdapter();
                DropDownList1.DataSource = dt.OgretmenListesi();
                DropDownList1.DataTextField = "OgretmenAdSoyad";
                DropDownList1.DataValueField = "OgretmenID";
                DropDownList1.DataBind();
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataSetTableAdapters.DuyurularTableAdapter dt = new DataSetTableAdapters.DuyurularTableAdapter();
            dt.DuyuruEkle(TextBoxDuyuruBaslik.Text,TextArea1.Value.ToString(),Convert.ToInt32(DropDownList1.SelectedValue));
            Response.Redirect("DuyuruListesi.aspx");
        }
    }
}