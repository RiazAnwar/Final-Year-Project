<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="Contact us.aspx.cs" Inherits="Design_project.Contact_us" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
             <asp:Table runat="server"  CssClass="contactustabledesign" Width="650px" Height="537px">
                 
                <asp:TableRow CssClass="contactustabledesign" runat="server">
                    
                    
                        <asp:TableCell>
                            <h2>Contact Form</h2>
                           <%--     <asp:Label runat="server" Text="Contact Form"  CssClass="lblmainname"></asp:Label>
                           --%> <br />
                            <asp:HiddenField ID="hfContactID" runat="server" />
                            <br />
                            <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
                            <br />
                            <asp:TextBox ID="txtname" runat="server" CssClass="contactustabledesignrow"></asp:TextBox>
                           <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidatorname" runat="server" 
                            ErrorMessage="Name is require"  ForeColor="Red" ControlToValidate="txtname"  >
                                </asp:RequiredFieldValidator>--%>

                             <asp:CompareValidator ID="CompareValidatorname" runat="server" 
                            ErrorMessage="Name must be Character" ControlToValidate="txtname"
                            Operator="DataTypeCheck" Display="Dynamic" 
                            Type="String" ForeColor="Red" SetFocusOnError="True"></asp:CompareValidator>
                   
                          
                            <br />
                            <asp:Label ID="Label3" runat="server" Text="Contact Number" ></asp:Label>
                            <br />
                            <asp:TextBox ID="txtcontactno" runat="server" CssClass="contactustabledesignrow"></asp:TextBox>
                            
                  <%--            <asp:CompareValidator ID="CompareValidatorcontactno" runat="server" 
                            ErrorMessage="Contact# must be integer" ControlToValidate="txtcontactno"
                            Operator="DataTypeCheck" Display="Dynamic" 
                            Type="Integer" ForeColor="Red" SetFocusOnError="True"></asp:CompareValidator>
                --%>   <br />
                            <asp:Label ID="Label4" runat="server" Text="Email"></asp:Label>
                            <br />
                            <asp:TextBox ID="txtemail" runat="server" CssClass="contactustabledesignrow"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                ErrorMessage="Invalid Email Id" ForeColor="Red" ControlToValidate="txtemail" 
                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
                            </asp:RegularExpressionValidator>
                            <br />
                            <asp:Label ID="Label6" runat="server" Text="Subject"></asp:Label>
                            <br />
                            <asp:TextBox ID="txtsubject" runat="server" CssClass="contactustabledesignrow"></asp:TextBox>
                            <br /> 
                            <asp:Label ID="Label15" runat="server" Text="Message"></asp:Label>
                                <br />
                                <asp:TextBox ID="txtmessage" runat="server" TextMode="MultiLine" Width="300px" Height="150px"></asp:TextBox>
                                <br />
                        <br />
                                <asp:Button ID="Button1" runat="server" Text="Send" CssClass="btncontactus" style="margin:5px;" OnClick="BtnSend_Click" />
                                 <asp:Button ID="Button2" runat="server" Text="Clear" CssClass="btncontactus" style="margin:5px;" OnClick="BtnClear_Click" />
                          
                            <br />
                            <br />
                             <asp:Label ID="lblErrorMessage" runat="server" Text="" ForeColor="Red"></asp:Label>
                       <br />
                             <asp:Label ID="lblSuccessMessage" runat="server" Text="" ForeColor="Green"></asp:Label>
                       
                        </asp:TableCell>         
                  <asp:TableCell>
                      <br />
                    
                  </asp:TableCell>
                  <asp:TableCell>
                      <br />
                    
                  </asp:TableCell>
                    <asp:TableCell>
                      <br />
                    
                  </asp:TableCell>
                    
                    
                    <asp:TableCell>
                            <div>
                             <%--   <asp:SiteMapPath ID="SiteMapPath1" runat="server"></asp:SiteMapPath>
                             --%>   <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3361.266160113882!2d74.07754901517754!3d32.59908968102601!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x6532b317eda3ea93!2sAziz+Bhatti+Shaheed+Hospital!5e0!3m2!1sen!2sua!4v1557695676830!5m2!1sen!2sua" class="mapcontact" ></iframe>
                            </div>
                                                        <h3>  Integration Hospital Management System</h3>
                               <br />
Pitras Bukhari Road, Sector H-8/4,<br />

Islamabad - Pakistan<br />
Tel: +92-51-846-3000,3666,4646<br />
Fax: +92-51-4863182<br />
Email: info@IHMS.com.pk<br />
                               <br />
Integration Hospital Management System<br />
11 Kilometer, Jaranwala Road, Faisalabad. - Pakistan<br />
Tel: 041 - 8740951<br />
Email: iamriazanwar@gmail.com<br />
Integration Hospital Management System<br />
3rd Road, G-10/4, Islamabad - Pakistan<br />
Tel: 051-2352983-84, 2352991 <br />
Fax: 051-2352992<br />
                               <br />
Integration Hospital Management System<br />
Seovay Arcade, F-11 Markaz, Islamabad - Pakistan<br />
Tel: 051- 2228231-5, 051- 2228237-41<br />
                               <br />
Integration Management Representative Office<br />
Office No. 116, Office Court Building Oud Mehta, Dubai<br />
Mobile: +971-50-7485775 <br />
                           
                    </asp:TableCell>

                    </asp:TableRow>                          
            </asp:Table>
        </div>
</asp:Content>
