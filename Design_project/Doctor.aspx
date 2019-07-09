<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="Doctor.aspx.cs" Inherits="Design_project.Doctor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    IHMS/Doctor
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="tbldoctordesign" runat="server">
    <h1>Welcome To Doctor Page</h1>

     <br />
   <br />
      <asp:HyperLink runat="server" NavigateUrl="~/doctorlogin.aspx" >DOCTOR LOGIN</asp:HyperLink>
  
     <br />
   <br />
   <%-- <asp:HyperLink runat="server" NavigateUrl="~/doctorsignup.aspx" >DOCTOR SIGNUP</asp:HyperLink>
    --%>

</div>


   <%--  <asp:Menu ID="Menu2" runat="server"
        Font-Names="Modern" ForeColor="Red" Style="z-index: 104; left: 88px; position: absolute;
        top: 224px" Width="184px" Height="256px">
        
            <asp:MenuItem Text="|   Login" runat="server" Value="New Item" NavigateUrl="~/doctorlogin.aspx">
            </asp:MenuItem>
            </asp:Menu>
    --%>
   <%-- <a href="doctorlogin.aspx">doctorlogin.aspx</a>
   --%>
   


</asp:Content>
