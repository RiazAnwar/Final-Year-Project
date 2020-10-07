using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Design_project
{
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnReceptionRegister_Click(object sender, EventArgs e)
        {
            Response.Redirect("ReceptionistRegisterByAdmin.aspx");
        }

        protected void BtnDrRegister_Click(object sender, EventArgs e)
        {
            Response.Redirect("DrRegisterByAdmin.aspx");
        }

        protected void BtnPatientAppointments_Click(object sender, EventArgs e)
        {
            Response.Redirect("Appointments.aspx");
        }

        protected void BtnAppointmentRecord_Click(object sender, EventArgs e)
        {
            Response.Redirect("AppointmentRecord.aspx");
        }

        protected void BtnContactRecord_Click(object sender, EventArgs e)
        {
            Response.Redirect("ContactUsRecord.aspx");
        }
    }
}