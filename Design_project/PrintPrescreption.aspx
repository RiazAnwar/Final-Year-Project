<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="PrintPrescreption.aspx.cs" Inherits="Design_project.PrintPrescreption" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <div style="overflow: scroll" class="tblAppointmentRecordDesign" runat="server">
      <h2>Doctor Prescreption</h2>
      <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" >
                    <Columns>
                        
                        <asp:BoundField DataField="Medicine" HeaderText="Medicine"/>
                        <asp:BoundField DataField="Strength" HeaderText="Strength"/>
                        <asp:BoundField DataField="Frequency" HeaderText="Frequency"/>
                        <asp:BoundField DataField="Duration" HeaderText="Duration"/>
                        <asp:BoundField DataField="Reports" HeaderText="Reports"/>
                        <asp:BoundField DataField="Instructions" HeaderText="Instructions"/>
                       
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
     <br />
      <asp:Button Text="Print Prescreption" runat="server" ID="BtnPrintPrescreption" OnClick="BtnPrintPrescreption_Click"  />
        <br />
        
     </div>

</asp:Content>
