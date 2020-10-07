<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="Register Patient.aspx.cs" Inherits="Design_project.Register_Patient" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%-- <form id="form1" runat="server">
    --%>   <div class="tblregistrationform" runat="server">
            <asp:HiddenField ID="hfuserID" runat="server" />
            <table class="" runat="server">
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="First Name"></asp:Label>
                       </td>
                    <td>
                        <asp:TextBox ID="txtfname" runat="server"></asp:TextBox>
                        <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidatorfname" runat="server" 
                            ErrorMessage="Name is required"  ControlToValidate="txtfname" 
                            ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>--%>
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
                        <asp:CompareValidator ID="CompareValidatorcontactno" runat="server" 
                            ErrorMessage="Must be Integer" ControlToValidate="txtcontact"
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
                           <asp:ListItem Text="--Gender--" value="-1"></asp:ListItem>
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                            
                        </asp:DropDownList>
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
                <tr><td colspan="3"><hr /></td></tr>
                <tr><td colspan="3"><hr /></td></tr>
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
                <tr></tr>
                <tr></tr>
                <tr>
                    <td></td>
                    <td colspan="2">
                        <asp:Button Text="Signup" ID="btnsubmit" runat="server" OnClick="btnsubmit_Click" />
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
                <tr><td colspan="3"><hr /></td></tr>
                <tr><td colspan="3"><hr /></td></tr>
                <tr><td colspan="3"><hr /></td></tr>
                <tr><td colspan="3"><hr /></td></tr>
               <%-- <tr>
                    <td>
                        <asp:Label ID="lblUserDetails" runat="server" Text=""></asp:Label></td>
                </tr>--%>
                <tr></tr>
                <tr></tr>
                <tr></tr>
                <tr></tr>
                <tr></tr>
                <tr></tr>
                <tr>
                    <td>

                    </td>
                    <td><asp:Button ID="btnbacktologinpage" runat="server" Text="Already Register" BackColor="#65C6BB" Font-Bold="False" Font-Size="Medium" Height="48px" Width="156px" OnClick="btnbacktologinpage_Click"/></td>
                </tr>
            </table>
        </div>
 
</asp:Content>
