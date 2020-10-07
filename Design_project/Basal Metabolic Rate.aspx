<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="Basal Metabolic Rate.aspx.cs" Inherits="Design_project.Basal_Metabolic_Rate" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div Class="tblaboutusdesign" runat="server">
    <h2>Basal Metabolic Rate</h2>
    <img src="Images/BMR.png" style="width: 350px; height: 350px; margin-bottom: 0px" />
  <%--  <div  runat="server" action="#">
  <input type="radio" id="gender1" runat="server" value="masc" /> Male <br/>
  <input type="radio" id="gender" runat="server" value="fem" /> Female <br/>
  Age:<br/>
  <input type="number" id="age" runat="server" value="20"/><br/>
  Height:<br/>
  <input type="number" id="height" runat="server" value="180"/><br/>
  Weight:<br/>
  <input type="number" id="weigth" runat="server" value="80"/><br/>
</div>

<button type="button" onclick="document.getElementById('lblResult').innerHTML = bmr">
Result</button>

<p id="lblResult">BMR</p>
     <script type="text/javascript">

var bmr;
var age = document.getElementById("age").value;
var gender = document.getElementById("gender").value;
var height = document.getElementById("height").value;
var weigth = document.getElementById("weigth").value;

if (gender == "masc") {
bmr = 66.5 + ( 13.75 * weigth ) + ( 5.003 * height ) - ( 6.755 * age )
}
else {
bmr = 655.1 + ( 9.563 * weigth ) + ( 1.850 * height ) - ( 4.676 * age )
}

</script>--%>


    <br />
    <br />

  <script type="text/javascript">

var bmr;
var age = document.getElementById("age").value;
var gender = document.getElementById("gender").value;
var height = document.getElementById("height").value;
var weigth = document.getElementById("weigth").value;

if (gender == "masc") {
bmr = 66.5 + ( 13.75 * weigth ) + ( 5.003 * height ) - ( 6.755 * age )
}
else {
bmr = 655.1 + ( 9.563 * weigth ) + ( 1.850 * height ) - ( 4.676 * age )
}

</script>
    <table runat="server">
     
        <tr>
            <td>
                
                <input type="radio" id="gender1" runat="server" value="masc"/> Male <br />
            </td>
            <td>
                <input type="radio" id="gender" runat="server" value="fem" /> Female <br />
            </td>
        </tr>
        <tr>
            <td>
               <asp:Label ID="lblAge" runat="server" Text="Age"></asp:Label>
            </td>
            <td>
                <input type="number" id="age" runat="server" value="20"/><br/>
            </td>
        </tr>
        <tr>
            <td>
               <asp:Label ID="lblHeight" runat="server" Text="Height"></asp:Label>
            </td>
            <td>
                <input type="number" id="height" runat="server" value="180"/><br/>
            </td>
        </tr>
         <tr>
            <td>
               <asp:Label ID="lblWeight" runat="server" Text="Weight"></asp:Label>
            </td>
            <td>
               <input type="number" id="weigth" runat="server" value="80"/><br/>
            </td>
        </tr>
        <tr>
            <td>
        <button  type="button" onclick="document.getElementById('lblResult').innerHTML = bmr">Result</button>

                </td>
            <td><p id="lblResult">BMR</p></td>
            </tr>

    </table>
    

</div>

</asp:Content>
