<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="About us.aspx.cs" Inherits="Design_project.About_us" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <div Class="tblaboutusdesign" runat="server">
            <h2>Welcome to Integrated Hospital Management System</h2>
     <img src="Images/Aboutus.jpg" style="width: 550px; height: 350px; margin-bottom: 0px" />
     <div class="tblaboutusdesigntxt">

        <h2> Integrated Hospital Management System</h2> 
<p>Technology has been evolving by leaps and bounds. Mind Technologies is a company dedicated to software development for medical science. It has put in 30 years of hard labour to reach to this level of proficiency.
Mind Technologies has a wide range of products useful for physicians, medical colleges, hospitals, multiple clinics/ dispensaries and it works on both offline and online module.
    </p>
              <h2>Aziz Bhatti Shaheed Hospital</h2>  
            
    <h2><%: Title %></h2>
        <p>
     Aziz Bhatii Shaheed Hospital is named after Major Aziz Bhatti Shaheed. ABSH is the largest hospital in Gujrat. ABSH is a teaching hospital of Nawaz Sharif Medical College Gujrat.</p>
<h3>Address:</h3><p> Bhimbar Rd, Mamada, Mahmada, Gujrat, Punjab, Pakistan</p>
<h3>Opened:</h3><p> 1963</p>
<h3>Hours: Open 24 hours</h3>
         
<h3>Phone:</h3><p> +92 53 9260104</p>
<h3>Function:</h3> Hospital, Teaching hospital
     </div>
        </div>
</asp:Content>
