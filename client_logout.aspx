<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage_after_login.master" AutoEventWireup="true" CodeFile="client_logout.aspx.cs" Inherits="client_logout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <html xmlns="http://www.w3.org/1999/xhtml">
        <head>
            <title></title>
            </head>
            <body>
    
                <div>
<asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
<asp:Timer ID="Timer1" runat="server" Interval="500" ontick="Timer1_Tick"  >
    </asp:Timer>
    </div>
</body>
</html>
</asp:Content>

