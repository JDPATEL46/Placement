<%@ Page Language="C#" AutoEventWireup="true" CodeFile="calander.aspx.cs" Inherits="calander" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
<div>
    <asp:Calendar ID="Calendar1" runat="server" Visible="False" OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>
</div>
<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
<asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">PickDate...</asp:LinkButton>
</form>
</body>
</html>
