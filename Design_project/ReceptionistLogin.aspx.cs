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
    public partial class ReceptionistLogin : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            lblErrorMessage.Visible = false;

        }
        protected void btnlogin_Click(object sender, EventArgs e)
        {
            String connectionString = @"Data Source=riazanwar\riazanwar;Initial Catalog=Design_project; Integrated Security=True";

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                con.Open();
                String query = "SELECT COUNT(1) FROM ReceptionistUserRegistration WHERE username=@Username AND password=@Password";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@Username", txtusername.Text.Trim());
                cmd.Parameters.AddWithValue("@Password", txtpwd.Text.Trim());
                int count = Convert.ToInt32(cmd.ExecuteScalar());
                if (count == 1)
                {
                    Session["username"] = txtusername.Text.Trim();
                    Response.Redirect("Receptionistwork.aspx");
                }
                else { lblErrorMessage.Visible = true; }
            }
        }
    }
}