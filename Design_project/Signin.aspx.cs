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
    public partial class Signin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
                txtusername.Focus();
        }
        protected void btnreset_Click(object sender, EventArgs e)
        {
            txtusername.Text = txtpwd.Text = "";
            txtusername.Focus();
        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            string usname = txtusername.Text;
            SqlConnection con = new SqlConnection("Data Source=RIAZANWAR\\RIAZANWAR;Initial Catalog=Design_project;Integrated Security=True");
            SqlDataAdapter sda = new SqlDataAdapter("select * from signin where username = '" + txtusername.Text + "' AND password = '" + txtpwd.Text + "' AND usertype = '" + DropDownList1.SelectedItem.ToString() + "'", con);
            //'" + txtusername.Text+"' , '"+txtpwd.Text+"' , '" + DropDownList1.SelectedItem.ToString() + "'", con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                Response.Write("<script>alert('You are logined as " + dt.Rows[0][2] + "')</script>");
                if (DropDownList1.SelectedIndex == 0)
                {
                    Server.Transfer("~/Admin.aspx");
                }
                else if (DropDownList1.SelectedIndex == 1)
                {

                    Server.Transfer("~/Doctor.aspx");
                }

                else if (DropDownList1.SelectedIndex == 2)
                {

                    Server.Transfer("~/Patient.aspx");
                }
                else if (DropDownList1.SelectedIndex == 3)
                {

                    Server.Transfer("~/Receptionist.aspx");
                }
            }
            else
            {
               // MessageBox.show("Check Your Username or Password");
                Response.Write("Error in Ur input");
            }
        }
    }
}
