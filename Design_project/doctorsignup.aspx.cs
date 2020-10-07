﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Configuration;
using System.Data;
namespace Design_project
{
    public partial class doctorsignup : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=riazanwar\riazanwar; Initial Catalog=Design_project; Integrated Security=true");

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void subbtn_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "sp_hospital_doctorsignup";
            cmd.Connection = con;


            SqlParameter p = new SqlParameter("@name", SqlDbType.VarChar, 20);
            p.Value = nametxt.Text;
            cmd.Parameters.Add(p);

            SqlParameter p1 = new SqlParameter("@loginid", SqlDbType.VarChar, 20);
            p1.Value = lidtxt.Text;
            cmd.Parameters.Add(p1);

            SqlParameter p2 = new SqlParameter("@password", SqlDbType.VarChar, 20);
            p2.Value = pwdtxt.Text;
            cmd.Parameters.Add(p2);

            SqlParameter p3 = new SqlParameter("@department", SqlDbType.VarChar, 20);
            p3.Value = depddl.Text;
            cmd.Parameters.Add(p3);

            SqlParameter p4 = new SqlParameter("@specialization", SqlDbType.VarChar, 20);
            p4.Value = speddl.Text;
            cmd.Parameters.Add(p4);

            SqlParameter p5 = new SqlParameter("@phonenumber", SqlDbType.BigInt);
            p5.Value = phtxt.Text;
            cmd.Parameters.Add(p5);

            SqlParameter p6 = new SqlParameter("@address", SqlDbType.VarChar, 20);
            p6.Value = addtxt.Text;
            cmd.Parameters.Add(p6);

            SqlParameter p7 = new SqlParameter("@email", SqlDbType.VarChar, 20);
            p7.Value = emtxt.Text;
            cmd.Parameters.Add(p7);

            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("doctorlogin.aspx");
        }
        protected void Resbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("doctorsignup.aspx");
        }
        protected void canbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("doctorlogin.aspx");
        }
    }
}