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
    public partial class DoctorWork : System.Web.UI.Page
    {
        SqlConnection sqlcon = new SqlConnection(@"Data Source=riazanwar\riazanwar;Initial Catalog=Design_project;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (Session["username"] == null)
            //    Response.Redirect("DoctorLogin.aspx");
            //    lblrecepwork.Text = "User Name :" + Session["username"];

           // if (!IsPostBack)
            //{
                //lblMessage.Visible = false;
                //hyperlink.Visible = false;
                //LoadImages();
            //}
        }

        protected void btnlogout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("DoctorLogin.aspx");

        }

        protected void BtnSavePrescreption_Click(object sender, EventArgs e)
        {
            //if (sqlcon.State == ConnectionState.Closed)
                sqlcon.Open();
            SqlCommand cmd = new SqlCommand("DrPrescreptionDone", sqlcon);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@SerialNo", Convert.ToInt32(hfSerialNo.Value == "" ? "0" : hfSerialNo.Value));
            cmd.Parameters.AddWithValue("@Medicine", ddlMedicine.SelectedValue);
            cmd.Parameters.AddWithValue("@Strength", ddlStrength.SelectedValue);
            cmd.Parameters.AddWithValue("@Frequency", ddlFrequency.SelectedValue);
            cmd.Parameters.AddWithValue("@Duration", txtDuration.Text.Trim());
            cmd.Parameters.AddWithValue("@Reports", txtReports.Text.Trim());
            cmd.Parameters.AddWithValue("@Instructions", txtInstructions.Text.Trim());

            cmd.ExecuteNonQuery();
            sqlcon.Close();
            lblSuccessMessage.Text = "Prescreption Done";

        }

        protected void BtnPrintPrescreption_Click(object sender, EventArgs e)
        {
            Response.Redirect("Printprescreption.aspx");
        }
    }
}


//    private void LoadImages()
//    {
//        string cs = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
//        using (SqlConnection con = new SqlConnection(cs))
//        {
//            SqlCommand cmd = new SqlCommand("Select * from tblImages", con);
//            con.Open();
//            SqlDataReader rdr = cmd.ExecuteReader();
//            GridView1.DataSource = rdr;
//            GridView1.DataBind();
//        }
//    }
//    protected void btnUpload_Click(object sender, EventArgs e)
//    {
//        HttpPostedFile postedFile = FileUpload1.PostedFile;
//        string filename = Path.GetFileName(postedFile.FileName);
//        string fileExtension = Path.GetExtension(filename);
//        int fileSize = postedFile.ContentLength;

//        if (fileExtension.ToLower() == ".jpg" || fileExtension.ToLower() == ".gif"
//            || fileExtension.ToLower() == ".png" || fileExtension.ToLower() == ".bmp")
//        {
//            Stream stream = postedFile.InputStream;
//            BinaryReader binaryReader = new BinaryReader(stream);
//            Byte[] bytes = binaryReader.ReadBytes((int)stream.Length);


//            string cs = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
//            using (SqlConnection con = new SqlConnection(cs))
//            {
//                SqlCommand cmd = new SqlCommand("spUploadImage", con);
//                cmd.CommandType = CommandType.StoredProcedure;

//                SqlParameter paramName = new SqlParameter()
//                {
//                    ParameterName = @"Name",
//                    Value = filename
//                };
//                cmd.Parameters.Add(paramName);

//                SqlParameter paramSize = new SqlParameter()
//                {
//                    ParameterName = "@Size",
//                    Value = fileSize
//                };
//                cmd.Parameters.Add(paramSize);

//                SqlParameter paramImageData = new SqlParameter()
//                {
//                    ParameterName = "@ImageData",
//                    Value = bytes
//                };
//                cmd.Parameters.Add(paramImageData);

//                SqlParameter paramNewId = new SqlParameter()
//                {
//                    ParameterName = "@NewId",
//                    Value = -1,
//                    Direction = ParameterDirection.Output
//                };
//                cmd.Parameters.Add(paramNewId);

//                con.Open();
//                cmd.ExecuteNonQuery();
//                con.Close();

//                lblMessage.Visible = true;
//                lblMessage.ForeColor = System.Drawing.Color.Green;
//                lblMessage.Text = "Upload Successful";
//                hyperlink.Visible = true;
//                hyperlink.NavigateUrl = "~/WebForm2.aspx?Id=" +
//                    cmd.Parameters["@NewId"].Value.ToString();

//                LoadImages();
//            }
//        }
//        else
//        {
//            lblMessage.Visible = true;
//            lblMessage.ForeColor = System.Drawing.Color.Red;
//            lblMessage.Text = "Only images (.jpg, .png, .gif and .bmp) can be uploaded";
//            hyperlink.Visible = false;
//        }
//    }
