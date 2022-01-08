﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OgrenciBilgiSistemi
{
    public partial class NotListesi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSetTableAdapters.OgrenciNotlarTableAdapter dt = new DataSetTableAdapters.OgrenciNotlarTableAdapter();
            Repeater1.DataSource = dt.NotlarıGetir();
            Repeater1.DataBind();
        }
    }
}