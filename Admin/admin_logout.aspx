<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="admin_logout.aspx.cs" Inherits="Admin_admin_logout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <html xmlns="http://www.w3.org/1999/xhtml">
        <head id="Head1" runat="server">
            <title></title>
            </head>
            <body>
    
                <div>
    
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                    <br />
                    <asp:Timer ID="Timer1" runat="server" Interval="1000" ontick="Timer1_Tick">
                    </asp:Timer>
                    <br />
                    <br />
    
                </div>
    
                    </body>
    </html>
</asp:Content>

