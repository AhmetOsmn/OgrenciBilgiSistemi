using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OgrenciBilgiSistemi
{
    public partial class MesajOlustur : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBoxGonderen.Text = "0001";
        }

        protected void ButtonGonder_Click(object sender, EventArgs e)
        {
            DataSetTableAdapters.MesajlarTableAdapter dt = new DataSetTableAdapters.MesajlarTableAdapter();
            dt.MesajGonder(TextBoxGonderen.Text, TextBoxAlici.Text, TextBoxMBaslik.Text, TextAreaMIcerik.Value);
            Response.Redirect("GidenMesajlar.aspx");

        }
    }
}