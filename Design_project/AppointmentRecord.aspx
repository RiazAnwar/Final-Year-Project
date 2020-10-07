<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="AppointmentRecord.aspx.cs" Inherits="Design_project.AppointmentRecord" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="overflow: scroll" class="tblAppointmentRecordDesign" runat="server">
<%--        <script type="text/javascript">
            var Hfvalue = localStorage.getItem("HfAppointmentRecord");
            function DeleteAppointmentRecord() {
                alert("hsdkcjhls" + Hfvalue);
               // var mysql = require('mysql');

//var con = mysql.createConnection({
//  host: "localhost",
  
//  database: "Design_project"
//});
            }
        </script>--%>

        <h2>Patients Online Appointments Record</h2>
        <%--  <asp:HiddenField ID="hfAppointmentID" runat="server" />
        --%>  
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" >
                    <Columns>
                        <asp:BoundField DataField="AppicantName" HeaderText="AppicantName"/>
                        <asp:BoundField DataField="ApplicantContactNumber" HeaderText="ApplicantContactNumber"/>
                        <asp:BoundField DataField="PatientName" HeaderText="PatientName"/>
                        <asp:BoundField DataField="PatientContactNumber" HeaderText="PatientContactNumber"/>
                        <asp:BoundField DataField="Gender" HeaderText="Gender"/>
                        <asp:BoundField DataField="Email" HeaderText="Email"/>
                        <asp:BoundField DataField="AppointmentType" HeaderText="AppointmentType"/>
                        <asp:BoundField DataField="MedicalRecordNumber" HeaderText="MedicalRecordNumber"/>
                        <asp:BoundField DataField="Age" HeaderText="Age"/>
                        <asp:BoundField DataField="Reference" HeaderText="Reference"/>
                        <asp:BoundField DataField="Speciality" HeaderText="Speciality"/>
                        <asp:BoundField DataField="Doctor" HeaderText="Doctor"/>
                        <asp:BoundField DataField="AppointmentDate" HeaderText="AppointmentDate"/>
                        <asp:BoundField DataField="Time" HeaderText="Time"/>
                        <asp:BoundField DataField="Comments" HeaderText="Comments"/>
               <%--<asp:TemplateField>
               <ItemTemplate>
                      <%--<label onclick="DeleteAppointmentRecord()" title="Delete">Delete</label>--%>
            <%--   <asp:LinkButton ID="lnkview" runat="server" OnClick="btndeletepatient_Click" CommandArgument='<%# Eval("AppointmentID") %>'>Delete</asp:LinkButton>
               </ItemTemplate>
           </asp:TemplateField>--%>
                     </Columns>
                    <FooterStyle BackColor="White" ForeColor="#000066" />
                    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                    <RowStyle ForeColor="#000066" />
                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#007DBB" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#00547E" />
                </asp:GridView>

    </div>
</asp:Content>
<%--  --%>