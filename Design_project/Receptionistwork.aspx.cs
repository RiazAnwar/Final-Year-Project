﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Design_project
{
    public partial class Receptionistwork : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        //    if (Session["username"] == null)
        //        Response.Redirect("ReceptionistLogin.aspx");
        //    lblrecepwork.Text = "User Name :" + Session["username"];
        }

        protected void btnlogout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("ReceptionistLogin.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("billing.aspx");
        }

        protected void btnPatientRecord_Click(object sender, EventArgs e)
        {
            Response.Redirect("PatientRecord.aspx");
        }
    }
}