<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage_after_login.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<h1>Welcome User <%Response.Write(Session["username"].ToString()); %></h1>
</asp:Content>

