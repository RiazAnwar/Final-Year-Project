using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.IO;
using iTextSharp.text;
using iTextSharp.text.pdf;
using iTextSharp.text.html.simpleparser;

namespace Design_project
{
    public partial class PrintPrescreption : System.Web.UI.Page
    {
        SqlConnection sqlcon = new SqlConnection(@"Data Source=riazanwar\riazanwar;Initial Catalog=Design_project;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGridViewData();

                //sqlcon.Open();
                //Response.Write("Connection Build"); 
                //string s = "select * from DoctorPrescreption";
                //SqlDataAdapter sqlda = new SqlDataAdapter(s, sqlcon);
                //DataSet ds = new DataSet();
                //sqlda.Fill(ds);
                //GridView1.DataSource = ds;
                //GridView1.DataBind();
                //sqlcon.Close();
            }
        }
        // ADO.NET code to retrieve data from database
        private void BindGridViewData()
        {
            string CS = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlDataAdapter da = new SqlDataAdapter("Select * from DoctorPrescreption", con);
                DataSet ds = new DataSet();
                da.Fill(ds);
                GridView1.DataSource = ds;
                GridView1.DataBind();
            }
        }


        protected void BtnPrintPrescreption_Click(object sender, EventArgs e)
        {
            int columnsCount = GridView1.HeaderRow.Cells.Count;
            // Create the PDF Table specifying the number of columns
            PdfPTable pdfTable = new PdfPTable(columnsCount);

            // Loop thru each cell in GrdiView header row
            foreach (TableCell gridViewHeaderCell in GridView1.HeaderRow.Cells)
            {
                // Create the Font Object for PDF document
                Font font = new Font();
                // Set the font color to GridView header row font color
                font.Color = new BaseColor(GridView1.HeaderStyle.ForeColor);

                // Create the PDF cell, specifying the text and font
                PdfPCell pdfCell = new PdfPCell(new Phrase(gridViewHeaderCell.Text, font));

                // Set the PDF cell backgroundcolor to GridView header row BackgroundColor color
                pdfCell.BackgroundColor = new BaseColor(GridView1.HeaderStyle.BackColor);

                // Add the cell to PDF table
                pdfTable.AddCell(pdfCell);
            }

            // Loop thru each datarow in GrdiView
            foreach (GridViewRow gridViewRow in GridView1.Rows)
            {
                if (gridViewRow.RowType == DataControlRowType.DataRow)
                {
                    // Loop thru each cell in GrdiView data row
                    foreach (TableCell gridViewCell in gridViewRow.Cells)
                    {
                        Font font = new Font();
                        font.Color = new BaseColor(GridView1.RowStyle.ForeColor);

                        PdfPCell pdfCell = new PdfPCell(new Phrase(gridViewCell.Text, font));

                        pdfCell.BackgroundColor = new BaseColor(GridView1.RowStyle.BackColor);

                        pdfTable.AddCell(pdfCell);
                    }
                }
            }

            // Create the PDF document specifying page size and margins
            Document pdfDocument = new Document(PageSize.A4, 10f, 10f, 10f, 10f);
            // Roate page using Rotate() function, if you want in Landscape
            // pdfDocument.SetPageSize(PageSize.A4.Rotate());

            // Using PageSize.A4_LANDSCAPE may not work as expected
            // Document pdfDocument = new Document(PageSize.A4_LANDSCAPE, 10f, 10f, 10f, 10f);

            PdfWriter.GetInstance(pdfDocument, Response.OutputStream);

            pdfDocument.Open();
            pdfDocument.Add(pdfTable);
            pdfDocument.Close();

            Response.ContentType = "application/pdf";
            Response.AppendHeader("content-disposition",
                "attachment;filename=DoctorPrescreption.pdf");
            Response.Write(pdfDocument);
            Response.Flush();
            Response.End();
        }
    }
    
}