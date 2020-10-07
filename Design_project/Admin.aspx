<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="Design_project.Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="tbladmindesign" runat="server">
         <h2>ADMIN PORTAL</h2>
        
        <img src="Images/admin_icon.png" style="width: 261px; height: 234px; margin-left: 4px"/>
        <br />
        <br />
        <asp:Button ID="btnreceptionRegister" runat="server" Text="RECEPTIONIST REGISTRATION"  BackColor="#65C6BB" Font-Bold="False" Font-Size="Large" Height="48px" Width="294px" OnClick="BtnReceptionRegister_Click" />
 
        <br />
       <br />
       <asp:Button ID="btnDrRegister" runat="server" Text="DOCTOR REGISTRATION"  BackColor="#65C6BB" Font-Bold="False" Font-Size="Large" Height="48px" Width="295px" OnClick="BtnDrRegister_Click" />
  <br />
        <br />
 <asp:Button ID="btnPatientAppointments" runat="server" Text="PATIENT APPOINTMENTS" BackColor="#65C6BB" Font-Bold="False" Font-Size="Large" Height="48px" Width="296px" OnClick="BtnPatientAppointments_Click" />

        <br />
       <br />
 <asp:Button ID="btnAppointmentRecord" runat="server" Text="APPOINTMENT's RECORD" BackColor="#65C6BB" Font-Bold="False" Font-Size="Large" Height="48px" Width="296px" OnClick="BtnAppointmentRecord_Click" />
        <br />
        <br />
<asp:Button ID="BtnContactRecord" runat="server" Text="CONTACT RECORD" BackColor="#65C6BB" Font-Bold="False" Font-Size="Large" Height="48px" Width="296px" OnClick="BtnContactRecord_Click"  />
  
       
    </div>



</asp:Content>
