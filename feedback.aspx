<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="feedback.aspx.cs" Inherits="feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="position:absolute; top: 544px; left: 612px; width: 380px; margin-left: 0px;">
<caption> Feedback </caption>
<tr>
<td>
    <asp:Label ID="lblfullname" runat="server" Text="Fullname"></asp:Label>
</td>
<td>
    <asp:TextBox ID="txtfullname" runat="server"></asp:TextBox>
</td>
</tr>
<tr>
<td>
    <asp:Label ID="lblreaddress" runat="server" Text="Re_Address"></asp:Label>
</td>
<td>
    <asp:TextBox ID="txtreaddress" runat="server"></asp:TextBox>
</td>
</tr>
<tr>
<td>
    <asp:Label ID="lblrate" runat="server" Text="Rate"></asp:Label>
</td>
<td>
    <asp:RadioButtonList ID="rbtrate" runat="server">
        <asp:ListItem>Satisfactory</asp:ListItem>
        <asp:ListItem>Unsatisfactory</asp:ListItem>
    </asp:RadioButtonList>
</td>
</tr>
<tr>
<td>
    <asp:Label ID="lblmobileno" runat="server" Text="Mobile No"></asp:Label>
</td>
<td>
    <asp:TextBox ID="txtmobileno" runat="server"></asp:TextBox>
</td>
</tr>
<tr>
<td>
    <asp:Label ID="lblmail" runat="server" Text="Mail"></asp:Label>
</td>
<td>

    <asp:TextBox ID="txtmail" runat="server"></asp:TextBox>
</td>
</tr>
<tr>
<td>
    <asp:Label ID="lblcomment" runat="server" Text="Comment"></asp:Label>
</td>
<td>


    <asp:TextBox ID="txtcomment" runat="server"></asp:TextBox>
</td>
</tr>
<tr>
<td>
    <asp:Button ID="btnsubmit" runat="server" Text="Submit" 
        onclick="btnsubmit_Click" />
    <br />
    <br />
    <asp:Label ID="lblmsg" runat="server" Text="lblmsg"></asp:Label>
</td>
<td>
    <asp:Button ID="btnclear" runat="server" Text="Clear" 
        onclick="btnclear_Click" />
</td>
</tr>
    </table>
</asp:Content>

