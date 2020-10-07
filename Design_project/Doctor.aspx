<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="Doctor.aspx.cs" Inherits="Design_project.Doctor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    IHMS/Doctor
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
    
</div>
<div class="tbldoctordesign" runat="server">
    
    <h1>Welcome To Doctor Page</h1>
    <br />
    <img src="Images/doctor11.png" style="width: 170px; height: 250px; margin-bottom: 0px" hspace="20" />
    <img src="Images/doctor3.png" style="width: 150px; height: 250px; margin-bottom: 0px" hspace="20" />
    <img src="Images/doctor4.png" style="width: 150px; height: 250px; margin-bottom: 0px" hspace="20" />
    <br />
    <img src="Images/doctor10.png" style="width: 150px; height: 250px; margin-bottom: 0px" hspace="20"/>
     <img src="Images/doctor7.png" style="width: 150px; height: 250px; margin-bottom: 0px" hspace="20"/>
    <img src="Images/doctor8.png" style="width: 150px; height: 270px; margin-bottom: 0px" hspace="20"/>
        <br />
    
   <br />
    <br />
   <br />
 <%--     <asp:HyperLink runat="server" NavigateUrl="~/doctorlogin.aspx" >DOCTOR LOGIN</asp:HyperLink>
 --%> <asp:Button runat="server" ID="BtnDoctorLogin"  Text="DOCTOR LOGIN" BackColor="#65C6BB" Font-Bold="False" Font-Size="Large" Height="48px" Width="210px" style="margin-left: 160px" OnClick="BtnDoctorLogin_Click"/>
    
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
