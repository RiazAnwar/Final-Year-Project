<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="DoctorWork.aspx.cs" Inherits="Design_project.DoctorWork" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="tblhistorydesign" runat="server">
        <h2>Doctor upload patient data</h2>
        <img src="Images/doctorwork.jpg" style="width: 550px; height: 350px; margin-bottom: 0px" />
        <br />
        <br />
        <asp:HiddenField ID="hfSerialNo" runat="server" />
        <asp:Table runat="server" CssClass="Prescreptiontabledesign">
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="Label1" runat="server" Text="Medicine"></asp:Label>
                    <br />
                    <asp:DropDownList ID="ddlMedicine" runat="server" CssClass="Prescreptiontabledesignrow">
                        <asp:ListItem Text="--Medicine--" Value="-1"></asp:ListItem>
                        <asp:ListItem>Acetaminophen</asp:ListItem>
                        <asp:ListItem>Alprazolam</asp:ListItem>
                        <asp:ListItem>Amitriptyline</asp:ListItem>
                        <asp:ListItem>Ativan</asp:ListItem>
                        <asp:ListItem>Atorvastatin</asp:ListItem>
                        <asp:ListItem>Naproxen</asp:ListItem>
                        <asp:ListItem>Zoloft</asp:ListItem>
                        <asp:ListItem>Meloxicam</asp:ListItem>
                        <asp:ListItem>Lyrica</asp:ListItem>
                        <asp:ListItem>Trazodone</asp:ListItem>
                        <asp:ListItem>Pantoprazole</asp:ListItem>
                        <asp:ListItem>Gastroenterology</asp:ListItem>
                        <asp:ListItem>General Surgery</asp:ListItem>
                        <asp:ListItem>Oral & Maxillofacial Surgery</asp:ListItem>
                        <asp:ListItem>Orthopedics</asp:ListItem>
                        <asp:ListItem> Palliative Medicine</asp:ListItem>
                        <asp:ListItem>Pathology</asp:ListItem>
                        <asp:ListItem>Pediatric Cardiology</asp:ListItem>
                        <asp:ListItem>Pediatric ICU</asp:ListItem>
                        <asp:ListItem>Pediatric Surgery</asp:ListItem>
                       
                    </asp:DropDownList>
                    <br />
                    <asp:Label ID="Label3" runat="server" Text="Strength"></asp:Label>
                    <br />
                    <asp:DropDownList ID="ddlStrength" runat="server" CssClass="appointmenttabledesignrow">
                        <asp:ListItem Text="--Strength--" Value="-1"></asp:ListItem>
                        <asp:ListItem>100 MG</asp:ListItem>
                        <asp:ListItem>150 MG</asp:ListItem>
                        <asp:ListItem>200 MG Surgery</asp:ListItem>
                        <asp:ListItem>250 MG</asp:ListItem>
                        <asp:ListItem>300 MG</asp:ListItem>
                        <asp:ListItem>350 MG</asp:ListItem>
                        <asp:ListItem>500 MG</asp:ListItem>
                        <asp:ListItem>1000 MG</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <asp:Label ID="Label8" runat="server" Text="Frequency"></asp:Label>
                    <br />
                    <asp:DropDownList ID="ddlFrequency" runat="server" CssClass="appointmenttabledesignrow">
                        <asp:ListItem Text="--Frequency--" Value="-1"></asp:ListItem>
                        <asp:ListItem>Once A Day</asp:ListItem>
                        <asp:ListItem>Twice A DAy</asp:ListItem>
                        <asp:ListItem>Three Times</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <asp:Label ID="Label5" runat="server" Text="Duration"></asp:Label>
                    <br />
                    <asp:TextBox ID="txtDuration" runat="server" CssClass="appointmenttabledesignrow"></asp:TextBox>
                   <br />
                     <asp:Label ID="Label2" runat="server" Text="Lab Tests/Reports"></asp:Label>
                    <br />
                    <asp:TextBox ID="txtReports" runat="server" CssClass="appointmenttabledesignrow"></asp:TextBox>
                   
                    <br />
                    <asp:Label ID="Label6" runat="server" Text="Instructions, if any"></asp:Label>
                    <br />
                    <asp:TextBox ID="txtInstructions" runat="server" TextMode="MultiLine" Height="100px" CssClass="appointmenttabledesignrow"></asp:TextBox>
                    <br />
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
         <asp:Button Text="Save" runat="server" ID="BtnSavePrescreption" CssClass="btnPrescreption" OnClick="BtnSavePrescreption_Click" />
        <br />
            <asp:Label ID="lblSuccessMessage" runat="server" Text="" ForeColor="Green"></asp:Label>
           
        <br />
 <asp:Button Text="Print" runat="server" ID="BtnPrintPrescreption" CssClass="btnPrescreption" OnClick="BtnPrintPrescreption_Click"  />
        <br />
        <br />
         <asp:Button Text="Log Out" runat="server" ID="Button1" CssClass="btnPrescreption" OnClick="btnlogout_Click" />
        <br /><br />
                   





















        <%-- <asp:Label ID="lblrecepwork" runat="server" Text=""> </asp:Label>
    

        --%>

        <%--  <asp:FileUpload ID="FileUpload1" runat="server" />
<br /><br />
<asp:Button ID="btnUpload" runat="server" Text="Upload" OnClick="btnUpload_Click" />
<br /><br />--%>
       
        <%--<asp:Label ID="lblMessage" runat="server"></asp:Label>
<br /><br />
<asp:HyperLink ID="hyperlink" runat="server">View Uploaded Image</asp:HyperLink>--%>

        <%-- <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
    <Columns>
        <asp:BoundField DataField="Id" HeaderText="Id" />
        <asp:BoundField DataField="Name" HeaderText="Name" />
        <asp:BoundField DataField="Size" HeaderText="Size (bytes)" />
        <asp:TemplateField HeaderText="Image">
            <ItemTemplate>
                <asp:Image ID="Image1" runat="server" Height="100px" Width="100px"
                    ImageUrl='<%# "data:Image/png;base64,"
                    + Convert.ToBase64String((byte[])Eval("ImageData")) %>' />
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
</asp:GridView>--%>
    </div>
</asp:Content>
