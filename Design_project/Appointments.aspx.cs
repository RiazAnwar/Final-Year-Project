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
    public partial class Appointments : System.Web.UI.Page
    {
        SqlConnection sqlcon = new SqlConnection(@"Data Source=riazanwar\riazanwar;Initial Catalog=Design_project;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                
            }
        }

        protected void btnaddpatient_Click(object sender, EventArgs e)
        {
            if (sqlcon.State == ConnectionState.Closed)
                sqlcon.Open();
            SqlCommand cmd = new SqlCommand("PatientAppointmentDone", sqlcon);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@AppointmentID", Convert.ToInt32(hfAppointmentID.Value == "" ? "0" : hfAppointmentID.Value));
            cmd.Parameters.AddWithValue("@AppicantName", txtapplicantname.Text.Trim());
            cmd.Parameters.AddWithValue("@ApplicantContactNumber", txtapplicantcontactnumber.Text.Trim());
            cmd.Parameters.AddWithValue("@PatientName", txtpatientname.Text.Trim());
            cmd.Parameters.AddWithValue("@PatientContactNumber", txtpatientcontactnumber.Text.Trim());
            cmd.Parameters.AddWithValue("@Gender", ddlgender.SelectedValue);
            cmd.Parameters.AddWithValue("@Email", txtemail.Text.Trim());
            cmd.Parameters.AddWithValue("@AppointmentType", ddlappointmenttype.SelectedValue);
            cmd.Parameters.AddWithValue("@MedicalRecordNumber", txtmedicalrecordnumber.Text.Trim());
            cmd.Parameters.AddWithValue("@Age", txtage.Text.Trim());
            cmd.Parameters.AddWithValue("@Reference", txtreference.Text.Trim());
            cmd.Parameters.AddWithValue("@Speciality", ddlspeciality.SelectedValue);
            cmd.Parameters.AddWithValue("@Doctor", ddlselectdoctor.SelectedValue);
            cmd.Parameters.AddWithValue("@AppointmentDate", txtappointmentdate.Text.Trim());
            cmd.Parameters.AddWithValue("@Time", ddltime.SelectedValue);
            cmd.Parameters.AddWithValue("@Comments", txtcomments.Text.Trim());


            cmd.ExecuteNonQuery();
            sqlcon.Close();
            lblSuccessMessage.Text = "Appointment Request Send";
            // string hfUserID = hfUserID.Value;


            //   lblSuccessMessage.Text = "Add Patient Successfully";

        }
        protected void btnclear_Click(object sender, EventArgs e)
        {
            Response.Redirect("Appointments.aspx");
        }
    }
}