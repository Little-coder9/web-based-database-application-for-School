using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OracleClient;

namespace CW_19031004
{
    public partial class Module : Page
    {
        string connectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            connectionString = "Data Source=XE;User ID=ABC;Password=cw1;Unicode=True";
        }

        protected void mo_save_Click(object sender, EventArgs e)
        {
            connectionString = "Data Source=XE;User ID=ABC;Password=cw1;Unicode=True";
            OracleConnection con = new OracleConnection(connectionString);
            con.Open();
            OracleCommand cmd = new OracleCommand("insert into Module values ('" + Mo_ID.Text + "','" + Mo_Name.Text + "','" + Mo_cr.Text + "','" + Mo_asi1.Text + "','" + Mo_asi2.Text + "','" + Mo_asi3.Text + "')", con);
            cmd.ExecuteNonQuery();

            Mo_ID.Text = "";
            Mo_Name.Text = "";
            Mo_cr.Text = "";
            Mo_asi1.Text = "";
            Mo_asi2.Text = "";
            Mo_asi3.Text = "";
            Response.Redirect(Request.RawUrl);
        }
    }
}