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
    public partial class Contact_us : System.Web.UI.Page
    {
        String connectionString = @"Data Source=riazanwar\riazanwar;Initial Catalog=Design_project;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Clear();
            }
        }
        protected void BtnSend_Click(object sender, EventArgs e)
        {
            if (txtname.Text == "" || txtcontactno.Text == "" || txtemail.Text == "" || txtsubject.Text == "" || txtmessage.Text == "")
                lblErrorMessage.Text = "Please Fill Mandatory Fields";

            else
            {
                using (SqlConnection con = new SqlConnection(connectionString))
                {
                    if (con.State == ConnectionState.Closed)
                        con.Open();
                    SqlCommand cmd = new SqlCommand("ContactCreate", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@ContactID", Convert.ToInt32(hfContactID.Value == "" ? "0" : hfContactID.Value));
                    cmd.Parameters.AddWithValue("@Name", txtname.Text.Trim());
                    cmd.Parameters.AddWithValue("@ContactNumber", txtcontactno.Text.Trim());
                    cmd.Parameters.AddWithValue("@Email", txtemail.Text.Trim());
                    cmd.Parameters.AddWithValue("@Subject", txtsubject.Text.Trim());
                    cmd.Parameters.AddWithValue("@Message", txtmessage.Text.Trim());
                    cmd.ExecuteNonQuery();
                    Clear();
                    lblSuccessMessage.Text = "Submitted Successfully";
                }
            }
        }
        protected void BtnClear_Click(object sender, EventArgs e)
        {
            Response.Redirect("Contact us.aspx");
        }
        void Clear()
        {
            hfContactID.Value = "";
            txtname.Text = txtcontactno.Text = txtemail.Text = txtsubject.Text = txtmessage.Text  = "";
            lblSuccessMessage.Text = lblErrorMessage.Text = "";
        }

    }
}