using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppUI
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection("server=LUCIAN-12;database=RainbowSChoolDB;trusted_connection=true;");
                SqlCommand cmd = new SqlCommand("select * from  Classes", con);
                con.Open();
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                sda.Fill(ds);
                Label2.Text = "Number of Classes are:" + ds.Tables[0].Rows.Count;
                //GV2.DataSource = ds.Tables[0];
               // GV2.DataBind();
                con.Close();
            }
            catch (Exception ex)
            {
                Label2.Text += "Error!!!" + ex.Message;
            }
        }
    }
}