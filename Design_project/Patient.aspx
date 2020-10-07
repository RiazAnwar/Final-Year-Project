<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="Patient.aspx.cs" Inherits="Design_project.Patient" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    IHMS/Patient
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="tblpatientdesign" runat="server" >
        <h1>Welcome To Patient Page</h1>

         
          <div>
            <asp:HiddenField ID="hfUserID" runat="server" />
            <table class="auto-style2">
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="First Name"></asp:Label>
                       </td>
                    <td>
                        <asp:TextBox ID="txtfname" runat="server" Height="21px" Width="174px"></asp:TextBox>

                    </td>
                </tr>
                 <tr>
                    <td>
                        <asp:Label ID="Label6" runat="server" Text="Middle Name"></asp:Label>

                    </td>
                    <td>
                        <asp:TextBox ID="txtmname" runat="server" Height="21px" Width="174px"></asp:TextBox>

                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Last Name"></asp:Label>

                    </td>
                    <td>
                        <asp:TextBox ID="txtlname" runat="server" Height="21px" Width="174px"></asp:TextBox>

                    </td>
                </tr>
                 <tr>
                    <td>
                        <asp:Label ID="Label7" runat="server" Text="Age"></asp:Label>
                       </td>
                    <td>
                        <asp:TextBox ID="txtage" runat="server" Height="21px" Width="174px"></asp:TextBox>

                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text="Gender"></asp:Label>

                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownListGender" runat="server">
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                            <asp:ListItem>Other</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                 <tr>
                    <td>
                        <asp:Label ID="Label8" runat="server" Text="Patient Type"></asp:Label>

                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownListpatienttype"  runat="server">
                            <asp:ListItem>Outdoor</asp:ListItem>
                            <asp:ListItem>Indoor</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                 <tr>
                    <td>
                        <asp:Label ID="Label10" runat="server" Text="Marital Status"></asp:Label>

                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownListmarry"  runat="server">
                            <asp:ListItem>Single</asp:ListItem>
                            <asp:ListItem>Married</asp:ListItem>
                            <asp:ListItem>Divorced</asp:ListItem>
                            <asp:ListItem>Widowed</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                 <tr>
                    <td>
                        <asp:Label ID="Label9" runat="server" Text="CNIC"></asp:Label>

                    </td>
                    <td>
                        <asp:TextBox ID="txtcnic" runat="server" Height="21px" Width="174px"></asp:TextBox>

                    </td>
                </tr>
                  <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Contact"></asp:Label>

                    </td>
                    <td>
                        <asp:TextBox ID="txtcontact" runat="server" Height="21px" Width="174px"></asp:TextBox>

                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text="Address"></asp:Label>

                    </td>
                    <td>
                        <asp:TextBox ID="txtaddress" runat="server" TextMode="MultiLine"></asp:TextBox>

                    </td>
                </tr>         
             
              
            <tr>
                    <td></td>
                    <td>
                        <asp:Button Text="Add Patient" ID="btnaddpatient" runat="server" OnClick="btnaddpatient_Click" Width="111px" Height="39px" Font-Size="XX-Small"/>
                         <asp:Button Text="Clear" ID="btnclearpatient" runat="server" OnClick="btnclear_Click" Width="111px" Height="39px" Font-Size="XX-Small" />
                    </td>
                
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:Label ID="lblSuccessMessage" runat="server" Text="" ForeColor="Green"></asp:Label>
                        </td>
                </tr>
                 <tr>
                    <td></td>
                    <td>
                        <asp:Label ID="lblErrorMessage" runat="server" Text="" ForeColor="Red"></asp:Label>
                  </td>
                </tr>
                  <tr>
                    <td colspan="2">
                     <hr />
                   </td>
                </tr>
                  <tr>
                    <td colspan="2">
                     <hr />
                   </td>
                </tr>

            </table>
              
              <%-- OnSelectedIndexChanged="gvpatient_SelectedIndexChanged"  --%>
               <%-- <asp:GridView ID="gvpatient" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" >
                    <Columns>
                        <asp:BoundField DataField="FirstName" HeaderText="First Name"/>
                        <asp:BoundField DataField="MiddleName" HeaderText="Middle Name"/>
                        <asp:BoundField DataField="LastName" HeaderText="Last Name"/>
                        <asp:BoundField DataField="Age" HeaderText="Age"/>
                        <asp:BoundField DataField="Gender" HeaderText="Gender"/>
                        <asp:BoundField DataField="PatientType" HeaderText="Patient Type"/>
                        <asp:BoundField DataField="MaritalStatus" HeaderText="Marital status"/>
                        <asp:BoundField DataField="CNIC" HeaderText="CNIC"/>
                        <asp:BoundField DataField="Contact" HeaderText="Contact"/>
                        <asp:BoundField DataField="Address" HeaderText="Address"/>
               <asp:TemplateField>
               <ItemTemplate>
               <asp:LinkButton ID="lnkview" runat="server" OnClick="Viewlnk_Click" CommandArgument='<%# Eval("UserID") %>'>View</asp:LinkButton>
               </ItemTemplate>
           </asp:TemplateField>
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
                </asp:GridView>--%>
           </div>
 
    </div>
</asp:Content>
