<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="c_login.aspx.cs" Inherits="c_login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<h1>Login</h1>


</br>
</br>
</br>
</br>

    <asp:Label ID="lblusername" runat="server" Text="clientname"></asp:Label>&nbsp; &nbsp; &nbsp&nbsp; &nbsp; &nbsp
    <asp:TextBox ID="txtusername" runat="server"></asp:TextBox></br></br>
        <asp:Label ID="lblpassword" runat="server" Text="client_Password"></asp:Label>
    <asp:TextBox ID="txtpassword" runat="server" TextMode="Password"></asp:TextBox></br></br>
    <asp:Button ID="Btnlogin" runat="server" Text="Login" onclick="Button1_Click" />
 
    <asp:Button ID="Btnreset" runat="server" Text="Reset" 
        onclick="Btnreset_Click" />
    <asp:Label ID="Lblreslt" runat="server"></asp:Label>
</br></br>
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/registration.aspx">NewUser?????</asp:HyperLink>


</asp:Content>

