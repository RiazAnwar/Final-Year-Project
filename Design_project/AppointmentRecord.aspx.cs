using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Design_project
{
    public partial class AppointmentRecord : System.Web.UI.Page
    {
        SqlConnection sqlcon = new SqlConnection(@"Data Source=riazanwar\riazanwar;Initial Catalog=Design_project;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            sqlcon.Open();
            //Response.Write("Connection Build");
            string s = "select * from PatientAppointment";
            SqlDataAdapter sqlda = new SqlDataAdapter(s, sqlcon);
            DataSet ds = new DataSet();
            sqlda.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();

            sqlcon.Close();
        }
    }
}