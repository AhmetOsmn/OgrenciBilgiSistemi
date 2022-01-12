using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OgrenciBilgiSistemi
{
    public partial class OgrenciMesajOlustur : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBoxGonderen.Text = Session["Numara"].ToString();
        }

        protected void ButtonGonder_Click(object sender, EventArgs e)
        {
            DataSetTableAdapters.MesajlarTableAdapter adapter = new DataSetTableAdapters.MesajlarTableAdapter();
            adapter.MesajGonder(TextBoxGonderen.Text,TextBoxAlici.Text,TextBoxMBaslik.Text,TextAreaMIcerik.Value.ToString());
            Response.Redirect("OgrenciGidenMesajlar.aspx");
        }
    }
}