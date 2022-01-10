using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OgrenciBilgiSistemi
{
    public partial class Istatistikler : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSetTableAdapters.DataTable1TableAdapter dt = new DataSetTableAdapters.DataTable1TableAdapter();

            TextBoxTOS.Text = "Toplam öğrenci sayısı: " + dt.TOgrenciSayisi().ToString();
            TextBoxTOS2.Text ="Toplam öğretmen sayısı: " + dt.TOgretmenSayisi().ToString();
            TextBoxTDS.Text ="Toplam ders sayısı: " + dt.TDersSayisi().ToString();
            TextBox1.Text = "Atılan mesaj sayısı: "+ dt.AtilanMesajSayisi().ToString();
            TextBox2.Text = "Sistemdeki toplam duyuru sayısı: " + dt.DuyuruSayisi().ToString();
            TextBox3.Text ="Matematik ortalaması: " + Convert.ToDecimal(dt.MatematikOrtalama()).ToString("0.00");
            TextBox4.Text = "Dil Anlatım ortalaması: " + Convert.ToDecimal(dt.DilAnlatimOrtalama()).ToString("0.00");
            TextBox5.Text = "Edebiyat ortalaması: " + Convert.ToDecimal(dt.EdebiyatOrtalama()).ToString("0.00");
            TextBox6.Text = "Fizik ortalaması: " + Convert.ToDecimal(dt.FizikOrtalama()).ToString("0.00");
            TextBox7.Text = "Kimya ortalaması: " + Convert.ToDecimal(dt.KimyaOrtalama()).ToString("0.00");
            TextBox8.Text = "Biyoloji ortalaması: " + Convert.ToDecimal(dt.BiyolojiOrtalama()).ToString("0.00");
            TextBox9.Text = "İngilizce ortalaması: " + Convert.ToDecimal(dt.IngilizceOrtalama()).ToString("0.00");
            TextBox10.Text = "Felsefe ortalaması: " + Convert.ToDecimal(dt.FelsefeOrtalama()).ToString("0.00");
            TextBox11.Text = "Tarih ve Sanat ortalaması: " + Convert.ToDecimal(dt.TarihOrtalama()).ToString("0.00");
        }
    }
}