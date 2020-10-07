using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace Design_project
{
    public partial class Doctor : System.Web.UI.Page
    {
         protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnDoctorLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("doctorlogin.aspx");
        }
    }
}