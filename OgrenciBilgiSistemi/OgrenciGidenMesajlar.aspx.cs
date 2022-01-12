using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OgrenciBilgiSistemi
{
    public partial class OgrenciGidenMesajlar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSetTableAdapters.MesajlarTableAdapter adapter = new DataSetTableAdapters.MesajlarTableAdapter();
            Repeater1.DataSource = adapter.OgrenciGidenKutusu1(Session["Numara"].ToString());
            DataBind();
        }
    }
}