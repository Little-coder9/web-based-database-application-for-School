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
    public partial class Teacher : Page
    {
        string connectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            connectionString = "Data Source=XE;User ID=ABC;Password=cw1;Unicode=True";
        }

        [Obsolete]
        protected void Save_tea_Click(object sender, EventArgs e)
        {
            connectionString = "Data Source=XE;User ID=ABC;Password=cw1;Unicode=True";
            OracleConnection con = new OracleConnection(connectionString);
            con.Open();
            OracleCommand cmd = new OracleCommand("insert into Teacher values ('" + Tea_ID.Text + "','" + Tea_name.Text + "','" + Tea_d_id.Text + "','" + Tea_a1.Text + "','" + Tea_a2.Text + "','" + Tea_email.Text + "')", con);
            cmd.ExecuteNonQuery();

            Tea_ID.Text = "";
            Tea_name.Text = "";
            Tea_d_id.Text = "";
            Tea_a1.Text = "";
            Tea_a2.Text = "";
            Tea_email.Text = "";
            Response.Redirect(Request.RawUrl);
        }
    }
}