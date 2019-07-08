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
    public partial class DrRegisterByAdmin : System.Web.UI.Page
    {
        String connectionString = @"Data Source=riazanwar\riazanwar;Initial Catalog=Design_project;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {
            lblUserDetails.Text = "Username :" + Session["username"];

            if (!IsPostBack)
            {
                Clear();
                if (!String.IsNullOrEmpty(Request.QueryString["id"]))
                {
                    int userID = Convert.ToInt32(Request.QueryString["id"]);
                    using (SqlConnection sqlcon = new SqlConnection(connectionString))
                    {
                        sqlcon.Open();
                        SqlDataAdapter sqlda = new SqlDataAdapter("DrUserViewByID", sqlcon);
                        sqlda.SelectCommand.CommandType = CommandType.StoredProcedure;
                        sqlda.SelectCommand.Parameters.AddWithValue("@UserID", userID);
                        DataTable dtbl = new DataTable();
                        sqlda.Fill(dtbl);
                        hfuserID.Value = userID.ToString();
                        txtfname.Text = dtbl.Rows[0][1].ToString();
                        txtlname.Text = dtbl.Rows[0][2].ToString();
                        txtcontact.Text = dtbl.Rows[0][3].ToString();
                        txtemail.Text = dtbl.Rows[0][4].ToString();
                        DropDownListGender.Items.FindByValue(dtbl.Rows[0][5].ToString()).Selected = true;
                        txtaddress.Text = dtbl.Rows[0][6].ToString();
                        txtusername.Text = dtbl.Rows[0][7].ToString();
                        txtpwd.Text = dtbl.Rows[0][8].ToString();
                        txtpwd.Attributes.Add("value", dtbl.Rows[0][8].ToString());
                        txtconfirmpwd.Text = dtbl.Rows[0][8].ToString();
                        txtconfirmpwd.Attributes.Add("value", dtbl.Rows[0][8].ToString());

                    }
                }
            }
        }
        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            if (txtusername.Text == "" || txtpwd.Text == "")
                lblErrorMessage.Text = "Please Fill Mandatory Fields";
            else if (txtpwd.Text != txtconfirmpwd.Text)
                lblErrorMessage.Text = "Password Don't Match";
            else
            {
                using (SqlConnection con = new SqlConnection(connectionString))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("DrUserAddorEdit", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@UserID", Convert.ToInt32(hfuserID.Value == "" ? "0" : hfuserID.Value));
                    cmd.Parameters.AddWithValue("@FirstName", txtfname.Text.Trim());
                    cmd.Parameters.AddWithValue("@LastName", txtlname.Text.Trim());
                    cmd.Parameters.AddWithValue("@Contact", txtcontact.Text.Trim());
                    cmd.Parameters.AddWithValue("@Email", txtemail.Text.Trim());
                    cmd.Parameters.AddWithValue("@Gender", DropDownListGender.SelectedValue);
                    cmd.Parameters.AddWithValue("@Address", txtaddress.Text.Trim());
                    cmd.Parameters.AddWithValue("@Username", txtusername.Text.Trim());
                    cmd.Parameters.AddWithValue("@Password", txtpwd.Text.Trim());
                    cmd.ExecuteNonQuery();
                    Clear();
                    lblSuccessMessage.Text = "Submitted Successfully";
                }
            }
        }
        void Clear()
        {
            txtfname.Text = txtlname.Text = txtcontact.Text = txtemail.Text = txtaddress.Text = txtusername.Text = txtpwd.Text = txtconfirmpwd.Text = "";
            hfuserID.Value = "";
            lblSuccessMessage.Text = lblErrorMessage.Text = "";
        }

        protected void btnbacktologinpage_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("DoctorLogin.aspx");
        }
    }
}