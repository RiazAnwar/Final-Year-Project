<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="Receptionist.aspx.cs" Inherits="Design_project.Receptionist" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <div runat="server" class="tblreceptionistdesign">
              <h1>Welcome to Receptionist Page</h1>
        <asp:HyperLink NavigateUrl="~/Billing.aspx" runat="server" Text="Generate Bill" Font-Italic="true"></asp:HyperLink>

        </div>
</asp:Content>
