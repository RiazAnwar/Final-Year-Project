<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="Medicine .aspx.cs" Inherits="Design_project.Medicine" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <div class="tblmedicinedesign" runat="server">
            <h1>Welcome to Medicine DEPT</h1>
     <img src="Images/medicine.jpg" style="width: 550px; height: 350px; margin-bottom: 0px"/>
                   
         
         <div class="tblmedicinedesigntxt">
             <br />
             <p>
                 The medical facility smaller than a hospital is generally called a clinic. Hospitals have a range of departments (e.g. surgery and urgent care) and specialist units such as cardiology. Some hospitals have outpatient departments and some have chronic treatment units.
             </p>
             
             <a href="ALLERGY%20AND%20CLINICAL%20IMMUNOLOGY.aspx">1 ALLERGY AND CLINICAL IMMUNOLOGY</a>
             <br />
             <br />
             <a href="CARDIOLOGY.aspx">2 CARDIOLOGY</a>
             <br /><br />
             <a href="DENTAL%20CLINIC.aspx">3 DENTAL CLINIC</a>
             <br /><br />
             <a href="EMERGENCY.aspx">4 EMERGENCY</a>
             <br />
         </div>
        </div>

</asp:Content>
