﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OgrenciBilgiSistemi
{
    public partial class DuyuruSil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["DuyuruID"]);
            DataSetTableAdapters.DuyurularTableAdapter dt = new DataSetTableAdapters.DuyurularTableAdapter();
            dt.DuyuruSil(id);
            Response.Redirect("DuyuruListesi.aspx");

        }
    }
}