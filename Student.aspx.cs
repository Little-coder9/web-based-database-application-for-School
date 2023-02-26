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
    public partial class Student : Page
    {
        string connectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            connectionString = "Data Source=XE;User ID=ABC;Password=cw1;Unicode=True";
        }

        [Obsolete]
        protected void save_st_Click(object sender, EventArgs e)
        {
            connectionString = "Data Source=XE;User ID=ABC;Password=cw1;Unicode=True";
            OracleConnection con = new OracleConnection(connectionString);
            con.Open();
            OracleCommand cmd = new OracleCommand("insert into Student values ('" + St_ID.Text + "','" + St_Name.Text + "','" + St_a1.Text + "','" + St_a2.Text + "')", con);
            cmd.ExecuteNonQuery();

            St_ID.Text = "";
            St_Name.Text = "";
            St_a1.Text = "";
            St_a2.Text = "";
            Response.Redirect(Request.RawUrl);
        }
    }
}