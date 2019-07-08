<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="ReceptionistLogin.aspx.cs" Inherits="Design_project.ReceptionistLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div >
            <table align="center" Class="tablelogindesign" runat="server" >
               <caption><h3>Login Form</h3></caption>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="User Name"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtusername" runat="server" CssClass="txtlogin"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtpwd" runat="server" CssClass="txtlogin"></asp:TextBox></td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:Button ID="btnlogin" runat="server" Text="Login" OnClick="btnlogin_Click" /></td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:Label ID="lblErrorMessage" runat="server" Text="Incorrect Username or Password" ForeColor="Red"></asp:Label></td>
                </tr>
               
            </table>
        </div>

</asp:Content>
