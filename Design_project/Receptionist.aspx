<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="Receptionist.aspx.cs" Inherits="Design_project.Receptionist" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <div runat="server" class="tblreceptionistdesign">
              <h1>RECEPTIONIST TASKS</h1>
     <img src="Images/receptionist_icons.png" style="width: 261px; height: 234px; margin-left: 4px"/>
     <br />
      <asp:Button ID="btnlogin" runat="server" Text="Login" OnClick="btnlogin_Click"  BackColor="#65C6BB" Font-Bold="False" Font-Size="Large" Height="48px" Width="210px" />
     <%--<asp:Button ID="btnbillgenerate" runat="server" Text="Generate Billing" OnClick="Button1_Click" BackColor="#65C6BB" Font-Bold="False" Font-Size="Large" Height="48px" Width="210px" />
     <br /><br />
     
     <asp:Button ID="btnPatientRecord" runat="server" Text="Patient's Record" BackColor="#65C6BB" Font-Bold="False" Font-Size="Large" Height="48px" Width="210px" OnClick="btnPatientRecord_Click"/>
       --%> <%--<asp:HyperLink NavigateUrl="~/Billing.aspx" runat="server" Text="Generate Bill" Font-Italic="true"></asp:HyperLink>--%>

        </div>
</asp:Content>
