<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Design_project.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Integrated Hospital Management System
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
     <div class="tblhomedesign" runat="server">

        <h1>Welcome To Home Page</h1>
       
    <asp:ScriptManager ID="ScriptManager1" runat="server">

    </asp:ScriptManager>
   <asp:UpdatePanel ID="UpdatePanel1" runat="server" >
        <ContentTemplate>
 <asp:Timer ID="Timer1" runat="server" Interval="2000" OnTick="Timer1_Tick"></asp:Timer>
    <asp:Image ID="Image1" runat="server" width="550px" height="350px" /><
    
        </ContentTemplate>
    </asp:UpdatePanel>
 
         <div class="tblhomedesigntxt" runat="server">
            <p>The DHQ Hospital Gujrat was established in 1963 and renamed in 1966 as Aziz Bhatti Shaheed DHQ Hospital, Gujrat. Aziz Bhatti Shaheed Hospital, Gujrat, has been attached with the Nawaz Sharif Medical College as the teaching hospital. The hospital has 400 beds. It is not only catering to the health care needs of local people, but also of the people of neighbouring districts and towns such as Bhimber, Mandi Bahauddin and Wazirabad. This hospital is also providing routine care services to the prisoners of District Jail, Gujrat. The Pakistan Medical and Dental Council has recognised the hospital for house-job training. The hospital currently has the departments of Emergency, ENT, Gynaecology, Medicine, Obstetrics, Ophthalmology, Orthopaedics, Surgery, Paediatrics, TB/Chest Cardiology and Urology..</p>
        </div>
     </div>
   <%-- 
    <div class="tblhomedesign" runat="server">

        <h1>Welcome To Home Page</h1>
        <img src="Images/Home.jpg" style="width: 550px; height: 350px; margin-bottom: 0px" />
            <div class="tblhomedesigntxt" runat="server">
            <p>The DHQ Hospital Gujrat was established in 1963 and renamed in 1966 as Aziz Bhatti Shaheed DHQ Hospital, Gujrat. Aziz Bhatti Shaheed Hospital, Gujrat, has been attached with the Nawaz Sharif Medical College as the teaching hospital. The hospital has 400 beds. It is not only catering to the health care needs of local people, but also of the people of neighbouring districts and towns such as Bhimber, Mandi Bahauddin and Wazirabad. This hospital is also providing routine care services to the prisoners of District Jail, Gujrat. The Pakistan Medical and Dental Council has recognised the hospital for house-job training. The hospital currently has the departments of Emergency, ENT, Gynaecology, Medicine, Obstetrics, Ophthalmology, Orthopaedics, Surgery, Paediatrics, TB/Chest Cardiology and Urology..</p>
        </div>
    </div>--%>



</asp:Content>
