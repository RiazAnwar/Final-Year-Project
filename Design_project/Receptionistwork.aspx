<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="Receptionistwork.aspx.cs" Inherits="Design_project.Receptionistwork" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 
    <asp:Label ID="lblrecepwork" runat="server" Text=""> </asp:Label>
    <br />
    <br />
<asp:Button Text="Log Out"  runat="server" ID="btnlogout" OnClick="btnlogout_Click"/>



</asp:Content>
