<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Insert_Page.aspx.cs" Inherits="Insert_Page" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="text-decoration: underline">
    <form id="form1" runat="server">
    <p id="txtcountry">
        Country name :
        <asp:TextBox ID="txtcountry" runat="server"></asp:TextBox>
    </p>
    <asp:Button ID="btncountry" runat="server" onclick="btncountry_Click" 
        Text="Add Country" />
    <br />
    <br />
    <br />
    <br />
    <asp:Label ID="lblresult" runat="server" Text="Label"></asp:Label>
    <br />
    </form>
</body>
</html>
