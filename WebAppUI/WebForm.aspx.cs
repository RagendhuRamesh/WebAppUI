using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppUI
{
    public partial class WebForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection("server=LUCIAN-12;database=RainbowSChoolDB;trusted_connection=true;");
                SqlCommand cmd = new SqlCommand("select * from  Student", con);
                con.Open();
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                sda.Fill(ds);
                Label1.Text = "Number of Students are:" + ds.Tables[0].Rows.Count;
               // GV1.DataSource = ds.Tables[0];
               // GV1.DataBind();
                con.Close();
            }
            catch (Exception ex)
            {
                Label1.Text += "Error!!!" + ex.Message;
            }
            finally { }
        }
    }
}