<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="Signin.aspx.cs" Inherits="Design_project.Signin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <div class="signinform" runat="server">
     
           <table align="center" >
              
              <caption><h2>Sigin Form</h2></caption>
               <tr>
                   <td>Username</td>
                   <td> <asp:TextBox ID="txtusername" runat="server"></asp:TextBox></td>
               </tr>
               <tr><td>Password</td>
                   <td> <asp:TextBox ID="txtpwd" runat="server"></asp:TextBox></td>
               </tr>
               <tr>
                   <td>Select User Type</td>
               <td> <asp:DropDownList ID="DropDownList1" runat="server">
                   <asp:ListItem>Admin</asp:ListItem>
                   <asp:ListItem>Doctor</asp:ListItem>
                   <asp:ListItem>Patient</asp:ListItem>
                   <asp:ListItem>Receptionist</asp:ListItem>
                   </asp:DropDownList></td> 
               </tr>
               <tr>
               <td><asp:Button ID="btnreset" runat="server" Text="Reset" OnClick="btnreset_Click" /></td>
               <td> <asp:Button ID="btnlogin" runat="server" Text="login" OnClick="btnlogin_Click"  /> </td>
               </tr>
              
            </table>
        </div>
</asp:Content>
