using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Design_project
{
    public partial class PatientRecord : System.Web.UI.Page
    {
        SqlConnection sqlcon = new SqlConnection(@"Data Source=riazanwar\riazanwar;Initial Catalog=Design_project;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                btndeletepatient.Enabled = false;
                FillGridView();
            }
        }
        protected void btnaddpatient_Click(object sender, EventArgs e)
        {
            if (sqlcon.State == ConnectionState.Closed)
                sqlcon.Open();
            SqlCommand cmd = new SqlCommand("PatientCreateorUpdate", sqlcon);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@UserID", Convert.ToInt32(hfUserID.Value == "" ? "0" : hfUserID.Value));
            cmd.Parameters.AddWithValue("@FirstName", txtfname.Text.Trim());
            cmd.Parameters.AddWithValue("@MiddleName", txtmname.Text.Trim());
            cmd.Parameters.AddWithValue("@LastName", txtlname.Text.Trim());
            cmd.Parameters.AddWithValue("@Age", txtage.Text.Trim());
            cmd.Parameters.AddWithValue("@Gender", DropDownListGender.SelectedValue);
            cmd.Parameters.AddWithValue("@PatientType", DropDownListpatienttype.SelectedValue);
            cmd.Parameters.AddWithValue("@MaritalStatus", DropDownListmarry.SelectedValue);
            cmd.Parameters.AddWithValue("@CNIC", txtcnic.Text.Trim());
            cmd.Parameters.AddWithValue("@Contact", txtcontact.Text.Trim());
            cmd.Parameters.AddWithValue("@Address", txtaddress.Text.Trim());
            cmd.ExecuteNonQuery();
            sqlcon.Close();
            // string hfUserID = hfUserID.Value;
            Clear();
            if (hfUserID.Value == "")
                lblSuccessMessage.Text = "Add Patient Successfully";
            else
                lblSuccessMessage.Text = "Update Patient Successfully";
            FillGridView();
        }

        protected void btndeletepatient_Click(object sender, EventArgs e)
        {
            if (sqlcon.State == ConnectionState.Closed)
                sqlcon.Open();
            SqlCommand cmd = new SqlCommand("PatientDeleteByID", sqlcon);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@UserID", Convert.ToInt32(hfUserID.Value));
            cmd.ExecuteNonQuery();
            sqlcon.Close();
            Clear();
            FillGridView();
            lblSuccessMessage.Text = "Deleted Successfully";
        }

        protected void btnclear_Click(object sender, EventArgs e)
        {
            Clear();
        }
        public void Clear()
        {
            hfUserID.Value = "";
            txtfname.Text = txtmname.Text = txtlname.Text = txtage.Text = txtcnic.Text = txtcontact.Text = txtaddress.Text = "";
            //DropDownListGender.Items.Clear();
            //DropDownListmarry.Items.Clear();
            //DropDownListpatienttype.Items.Clear();
            lblSuccessMessage.Text = lblErrorMessage.Text = "";
            btnaddpatient.Text = "Save";
            btndeletepatient.Enabled = false;
        }
        void FillGridView()
        {
            if (sqlcon.State == ConnectionState.Closed)
                sqlcon.Open();
            SqlDataAdapter sqlda = new SqlDataAdapter("PatientViewAll", sqlcon);
            sqlda.SelectCommand.CommandType = CommandType.StoredProcedure;
            DataTable dtbl = new DataTable();
            sqlda.Fill(dtbl);
            sqlcon.Close();
            gvpatient.DataSource = dtbl;
            gvpatient.DataBind();

        }

        protected void Viewlnk_Click(object sender, EventArgs e)
        {
            int UserID = Convert.ToInt32((sender as LinkButton).CommandArgument);
            if (sqlcon.State == ConnectionState.Closed)
                sqlcon.Open();
            SqlDataAdapter sqlda = new SqlDataAdapter("PatientViewByID", sqlcon);
            sqlda.SelectCommand.CommandType = CommandType.StoredProcedure;
            sqlda.SelectCommand.Parameters.AddWithValue("@UserID", UserID);
            DataTable dtbl = new DataTable();
            sqlda.Fill(dtbl);
            sqlcon.Close();
            hfUserID.Value = UserID.ToString();
            txtfname.Text = dtbl.Rows[0][1].ToString();
            txtmname.Text = dtbl.Rows[0][2].ToString();
            // txtfname.Text = dtbl.Rows[0]["FirstName"].ToString();
            //txtmname.Text = dtbl.Rows[0]["MiddleName"].ToString();
            txtlname.Text = dtbl.Rows[0]["Lastname"].ToString();
            txtage.Text = dtbl.Rows[0]["Age"].ToString();
            //DropDownListGender.Items.FindByValue(dtbl.Rows[0]["Gender"].ToString()).Selected = true;
            //DropDownListpatienttype.Items.FindByValue(dtbl.Rows[0]["PatientType"].ToString()).Selected = true;
            //DropDownListmarry.Items.FindByValue(dtbl.Rows[0]["MaritalStatus"].ToString()).Selected = true;
            txtcnic.Text = dtbl.Rows[0]["CNIC"].ToString();
            txtcontact.Text = dtbl.Rows[0]["Contact"].ToString();
            txtaddress.Text = dtbl.Rows[0]["Address"].ToString();
            btnaddpatient.Text = "Update";
            btndeletepatient.Enabled = true;

        }
    }
}