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
    public partial class Address : Page
    {
        string connectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            connectionString = "Data Source=XE;User ID=ABC;Password=cw1;Unicode=True";
        }

        [Obsolete]
        protected void Addr_save_Click(object sender, EventArgs e)
        {
            connectionString = "Data Source=XE;User ID=ABC;Password=cw1;Unicode=True";
            OracleConnection con = new OracleConnection(connectionString);
            con.Open();
            OracleCommand cmd = new OracleCommand("insert into Address values ('" + Addr_ID.Text + "','" + Addr_Country.Text + "','" + Addr_City.Text + "','" + Addr_Street.Text + "')", con);
            cmd.ExecuteNonQuery();

            Addr_ID.Text = "";
            Addr_Country.Text = "";
            Addr_City.Text = "";
            Addr_Street.Text = "";
            Response.Redirect(Request.RawUrl);
        }
    }
}