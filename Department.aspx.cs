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
    public partial class Department : Page
    {
        string connectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            connectionString = "Data Source=XE;User ID=ABC;Password=cw1;Unicode=True";
        }

        [Obsolete]
        protected void Save_Dept_Click(object sender, EventArgs e)
        {
            connectionString = "Data Source=XE;User ID=ABC;Password=cw1;Unicode=True";
            OracleConnection con = new OracleConnection(connectionString);
            con.Open();
            OracleCommand cmd = new OracleCommand("insert into Department values ('" + Dept_ID.Text + "','" + Dept_Name.Text + "')", con);
            cmd.ExecuteNonQuery();

            Dept_ID.Text = "";
            Dept_Name.Text = "";
            Response.Redirect(Request.RawUrl);
        }
    }
}