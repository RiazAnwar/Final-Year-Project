<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="ReceptionistRegisterByAdmin.aspx.cs" Inherits="Design_project.ReceptionistRegisterByAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%-- <div class="tbladmindesign" runat="server">
        
 </div>--%>
 <div class="tblregistrationform" runat="server">
     <h2>RECEPTIONIST REGIST.</h2>
     &nbsp;<img src="Images/receptionist_icon.png" style="width: 261px; height: 234px; margin-left: 4px" />
     <br /><br />
     <asp:HiddenField ID="hfuserID" runat="server" />
            <table class="" runat="server">
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="First Name"></asp:Label>
                       </td>
                    <td>
                        <asp:TextBox ID="txtfname" runat="server"></asp:TextBox>
                     
                    <%--    <asp:RequiredFieldValidator ID="RequiredFieldValidatorfname" runat="server" 
                            ErrorMessage="Name is require" ControlToValidate="txtfname"
                             ForeColor="Red" Text="*" SetFocusOnError="True">
                       </asp:RequiredFieldValidator>
                    --%>   <asp:CompareValidator ID="CompareValidatorfname" runat="server" 
                            ErrorMessage="Name must be character" ControlToValidate="txtfname"
                            Operator="DataTypeCheck" Display="Dynamic" 
                            Type="String" ForeColor="Red" SetFocusOnError="True"></asp:CompareValidator>
                   
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Last Name"></asp:Label>

                    </td>
                    <td>
                        <asp:TextBox ID="txtlname" runat="server"></asp:TextBox>

                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Contact"></asp:Label>

                    </td>
                    <td>
                        <asp:TextBox ID="txtcontact" runat="server"></asp:TextBox>
                   <%--     <asp:RequiredFieldValidator ID="RequiredFieldValidatorcontact" runat="server" 
                            ErrorMessage="Name is require" ControlToValidate="txtcontact"
                             ForeColor="Red" Text="*" SetFocusOnError="True">
                        </asp:RequiredFieldValidator>
                        --%>   <asp:CompareValidator ID="CompareValidatorcontact" runat="server" 
                            ErrorMessage="Contact must be number" ControlToValidate="txtcontact"
                            Operator="DataTypeCheck" Display="Dynamic" 
                            Type="Integer" ForeColor="Red" SetFocusOnError="True"></asp:CompareValidator>
                  

                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text="Gender"></asp:Label>

                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownListGender" runat="server">
                          <asp:ListItem Text="--Select--" value="-1"></asp:ListItem>
                            <asp:ListItem Text="Male" Value="Male"></asp:ListItem>
                            <asp:ListItem Text="Female" Value="Female"></asp:ListItem>
                        </asp:DropDownList>
                       <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator" runat="server" 
                            ErrorMessage="Gender is require" InitialValue="-1" ControlToValidate="DropDownListGender" 
                            ForeColor="Red" ></asp:RequiredFieldValidator>
                   --%> </td>
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
                    <td colspan="3">
                     <hr />
                   </td>
                </tr>
                <tr>

                    <td>
                        <asp:Label ID="Label6" runat="server" Text="Username"></asp:Label>

                    </td>
                    <td>
                        <asp:TextBox ID="txtusername" runat="server"></asp:TextBox>
                        <asp:Label Text="*" runat="server" ForeColor="Red"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label7" runat="server" Text="Password"></asp:Label>

                    </td>
                    <td>
                        <asp:TextBox ID="txtpwd" runat="server"></asp:TextBox>
                             <asp:Label Text="*" runat="server" ForeColor="Red"></asp:Label>
                   
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label8" runat="server" Text="Confirm Password"></asp:Label>

                    </td>
                    <td>
                        <asp:TextBox ID="txtconfirmpwd" runat="server"></asp:TextBox>

                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td colspan="2">
                        <asp:Button Text="Submit" ID="btnsubmit" runat="server" OnClick="btnsubmit_Click" />
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td colspan="2">
                        <asp:Label ID="lblSuccessMessage" runat="server" Text="" ForeColor="Green"></asp:Label>
                        </td>
                </tr>
                 <tr>
                    <td></td>
                    <td colspan="2">
                        <asp:Label ID="lblErrorMessage" runat="server" Text="" ForeColor="Red"></asp:Label>
                        </td>
                </tr>
                <tr>
                    <td colspan="3">
                     <hr />
                   </td>
                </tr>
                <tr>
                    <td colspan="3">
                     <hr />
                   </td>
                </tr>
               <tr>
                    <td>
                        <asp:Label ID="lblUserDetails" runat="server" Text=""></asp:Label></td>
                </tr>
                <tr>
                    <td></td>
                    <td><asp:Button ID="btnbacktologinpage" runat="server" Text="Back to Login" OnClick="btnbacktologinpage_Click"/></td>
                </tr>
            </table>
        </div>
</asp:Content>
