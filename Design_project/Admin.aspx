<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="Design_project.Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="tbladmindesign" runat="server">
         <h2>ADMIN PORTAL</h2>
        
        <img src="Images/admin_icon.png" style="width: 261px; height: 234px; margin-left: 4px"/>
        <br />
        <br />
        
        <a href="ReceptionistRegisterByAdmin.aspx">RECEPTIONIST REGISTRATION</a>
        <br />
       <br />
       <a href="DrRegisterByAdmin.aspx">DOCTOR REGISTRATION</a>
        <br />
        <br />
        <a href="Appointments.aspx">PATIENTAPPOINTMENTS</a>

       
    </div>
</asp:Content>
