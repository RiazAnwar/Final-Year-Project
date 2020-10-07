<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BMRout.aspx.cs" Inherits="Design_project.BMRout" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <div class="tblaboutusdesign" runat="server">
    <form action="#">
  <input type="radio" id="gender1" runat="server" value="masc" /> Male <br/>
  <input type="radio" id="gender" runat="server" value="fem" /> Female <br/>
  Age:<br/>
  <input type="number" id="age" runat="server" value="20"/><br/>
  Height:<br/>
  <input type="number" id="height" runat="server" value="180"/><br/>
  Weight:<br/>
  <input type="number" id="weigth" runat="server" value="80"/><br/>
</form>

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

</script>
        </div>
</body>
</html>
