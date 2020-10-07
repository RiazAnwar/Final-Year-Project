using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Design_project
{
    public partial class Index : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btndept_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Departments.aspx");
        }

        protected void btndoctor_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Doctor.aspx");
        }

        protected void btnpatient_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Patient.aspx");
        }

        protected void btnhome_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Home.aspx");
        }

        protected void fb_icon_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("https://www.facebook.com/riaz.anwar.96");
        }

        protected void Insta_icon_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("https://www.instagram.com/anwar_maan/");
        }

        protected void twitter_icon_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("https://twitter.com/Maan8092");
        }

        //protected void btnpages_Click(object sender, EventArgs e)
        //{
        //    Response.Redirect("~/Pages.aspx");
        //}

        protected void btnreceptionist_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Receptionist.aspx");
        }

        protected void btnadmin_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Admin.aspx");
        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
       //     Response.Redirect("~/Signin.aspx");
        }


        //protected void btnlogin_Click(object sender, EventArgs e)
        //{
        //    Response.Redirect("~/Signin.aspx");
        //}


    }
}