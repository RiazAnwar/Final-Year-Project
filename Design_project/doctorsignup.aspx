<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="doctorsignup.aspx.cs" Inherits="Design_project.doctorsignup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        
    <table runat="server" Class="tbldoctorsignupdesign">
       
    <tr>
        <td > 
            <asp:Label ID="Label" runat="server" Text="UserID"></asp:Label>

        </td>
        
        <td>
            <asp:TextBox ID="nametxt" runat="server" CssClass="txtdoctorsignup"></asp:TextBox>

        </td>
        
        <td>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Name"
            Style="position: relative" ControlToValidate="nametxt">*</asp:RequiredFieldValidator>

        </td>

    </tr>


    <tr>
        <td>
            <asp:Label ID="Label2" runat="server" Text="Login Id"></asp:Label>

        </td>
        <td>
        <asp:TextBox ID="lidtxt" runat="server" CssClass="txtdoctorsignup"></asp:TextBox>

        </td>
        <td>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Login Id"
            Style="position: relative" ControlToValidate="lidtxt">*</asp:RequiredFieldValidator>

        </td>

    </tr>
   
    <tr>
        <td>
           <asp:Label ID="Label3" runat="server" Text="Password"></asp:Label>

        </td>
        <td>
        <asp:TextBox ID="pwdtxt" runat="server" CssClass="txtdoctorsignup"></asp:TextBox>

        </td>
        <td>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="pwdtxt"
            ErrorMessage="Enter Password" Style="position: relative">*</asp:RequiredFieldValidator>

        </td>

    </tr>

    <tr>
        <td>
            <asp:Label ID="Label4" runat="server" Text="Confirm Password"></asp:Label>

        </td>
        <td>
        <asp:TextBox ID="conpwdtxt" runat="server" CssClass="txtdoctorsignup"></asp:TextBox>

        </td>
        <td>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="pwdtxt"
            ControlToValidate="conpwdtxt" ErrorMessage="Not Matching" Style="position: relative">*</asp:CompareValidator>
        </td>

    </tr>
    <tr>
        <td>
            <asp:Label ID="Label5" runat="server" Text="Department"></asp:Label>

        </td>
        <td>
        <asp:DropDownList ID="depddl" runat="server" CssClass="txtdoctorsignup">
            <asp:ListItem>----Select----</asp:ListItem>
            <asp:ListItem>Cardiology</asp:ListItem>
            <asp:ListItem>Neurology</asp:ListItem>
            <asp:ListItem>Opthalmology,</asp:ListItem>
            <asp:ListItem>Nephrology</asp:ListItem>
            <asp:ListItem>Surgery</asp:ListItem>
            <asp:ListItem>Pediatrics</asp:ListItem>
        </asp:DropDownList>

        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="depddl"
                ErrorMessage="Enter Your Department" Style="position: relative">*</asp:RequiredFieldValidator>

        </td>

    </tr>
    <tr>
        <td>
            <asp:Label ID="Label6" runat="server" Text="Specialization"></asp:Label>

        </td>
        <td>
        <asp:DropDownList ID="speddl" runat="server" CssClass="txtdoctorsignup">
            <asp:ListItem>----Select----</asp:ListItem>
            <asp:ListItem>Pulmonology</asp:ListItem>
            <asp:ListItem>Cardiology</asp:ListItem>
            <asp:ListItem>Neurology</asp:ListItem>
            <asp:ListItem>Nephrology</asp:ListItem>
            <asp:ListItem>Opthalmology</asp:ListItem>
        </asp:DropDownList>

        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="speddl"
                ErrorMessage="Specialization" Style="position: relative">*</asp:RequiredFieldValidator>

        </td>

    </tr>
    <tr>
        <td>
            <asp:Label ID="Label7" runat="server" Text="Phone Number"></asp:Label>

        </td>
        <td>
        <asp:TextBox ID="phtxt" runat="server" CssClass="txtdoctorsignup"></asp:TextBox>

        </td>
        <td>

        </td>

    </tr>
    <tr>
        <td>
            <asp:Label ID="Label8" runat="server" Text="Address"></asp:Label>

        </td>
        <td>
        <asp:TextBox ID="addtxt" runat="server" CssClass="txtdoctorsignup"></asp:TextBox>
          </td>
        <td>

        </td>

    </tr>
    <tr>
        <td>
            <asp:Label ID="Label9" runat="server" Text="E-Mail"></asp:Label>

        </td>
        <td>
        <asp:TextBox ID="emtxt" runat="server" CssClass="txtdoctorsignup"></asp:TextBox>

        </td>
        <td>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="emtxt"
            ErrorMessage="Incorrect Format" Style="position: relative" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator></td></tr>
    </table>
    <table >
    <tr>
        <td>
        <asp:Button ID="subbtn" runat="server" Text="Submit" CssClass="btndoctorsignup" OnClick="subbtn_Click" /></td>
        <td style="width: 93px">
        <asp:Button ID="Resbtn" runat="server" Text="Reset" CssClass="btndoctorsignup" OnClick="Resbtn_Click" /></td>
     <td style="width: 93px">
        <asp:Button ID="canbtn" runat="server" CssClass="btndoctorsignup" Text="Cancel"  OnClick="canbtn_Click" /></td></tr>
    </table>
    </div>
    
</asp:Content>
