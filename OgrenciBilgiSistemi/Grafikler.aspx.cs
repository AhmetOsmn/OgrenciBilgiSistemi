using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.DataVisualization.Charting;
using System.Web.UI.WebControls;

namespace OgrenciBilgiSistemi
{
    public partial class Grafikler : System.Web.UI.Page
    {
        SqlConnection connection = new SqlConnection(@"Data Source=DESKTOP-BHGN45D\AHMETSDBSERVER;Initial Catalog=(MY)OgrenciBilgiSistemi;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {

            //Grafik 1
            connection.Open();
            SqlCommand cmd = new SqlCommand("Execute Graf2", connection);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                Chart2.Series["Öğretmen Sayısı"].Points.AddXY(Convert.ToString(dr[0]), int.Parse(dr[1].ToString()));
            }
            connection.Close();

            //Grafik 2
            connection.Open();
            SqlCommand cmd2 = new SqlCommand("Execute Graf1",connection);
            SqlDataReader dr2 = cmd2.ExecuteReader();
            while (dr2.Read())
            {
                Chart1.Series["Not Sayısı"].Points.AddXY(Convert.ToString(dr2[0]), int.Parse(dr2[1].ToString()));
            }
            connection.Close();

            //Grafik 3
            connection.Open();
            SqlCommand cmd3 = new SqlCommand("Execute Graf3", connection);
            SqlDataReader dr3 = cmd3.ExecuteReader();
            while (dr3.Read())
            {
                Chart3.Series["Notlar"].Points.AddXY(Convert.ToString(dr3[0]), int.Parse(dr3[1].ToString()));
            }
            connection.Close();



            //Grafik 4
            connection.Open();
            SqlCommand cmd4 = new SqlCommand("Execute Graf4", connection);
            SqlDataReader dr4 = cmd4.ExecuteReader();
            while (dr4.Read())
            {
                Chart4.Series["Cinsiyet"].Points.AddXY(Convert.ToString(dr4[0]), int.Parse(dr4[1].ToString()));
            }
            connection.Close();
            foreach (DataPoint p in Chart4.Series["Cinsiyet"].Points)
            {
                p.Label = "#PERCENT\n#VALX";
            }

        }
    }
}