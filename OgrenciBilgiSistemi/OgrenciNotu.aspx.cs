using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OgrenciBilgiSistemi
{
    public partial class OgrenciNotu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSetTableAdapters.OgrenciNotlarTableAdapter adapter = new DataSetTableAdapters.OgrenciNotlarTableAdapter();
            Repeater1.DataSource = adapter.OgrenciNotu("1005");
            Repeater1.DataBind();
        }
    }
}