﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Design_project
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                SetImageUrl();
            }
        }
      

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            SetImageUrl();

        }

        private void SetImageUrl()
        {
            Random ranimg = new Random();
            int i = ranimg.Next(1, 10);
            Image1.ImageUrl = "~/mainpageimgs/" + i.ToString() + ".jpg";
        }
    }
}