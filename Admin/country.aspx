<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="country.aspx.cs" Inherits="Admin_country" %>

<asp:Content ID="txtcountry" ContentPlaceHolderID="ContentPlaceHolder1" 
    Runat="Server">
    <table style="width: 63%; height: 224px;">
            <tr>
                <td colspan="2">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <span class="style4">&nbsp;&nbsp;&nbsp;<strong>&nbsp;&nbsp; </strong> </span>
                    <span class="style4" 
                        style="font-size: large; color: #CC3399;"><strong>&nbsp;</strong></span><strong><span 
                        style="font-size: large; ">Country</span><span class="style4" 
                        style="font-size: large">&nbsp;</span></strong></td>
            </tr>
            <tr>
                <td>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>&nbsp;Country 
                    Name</strong></td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Height="25px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="height: 20px">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button10" runat="server" BorderStyle="None" Text="Insert" 
                        BackColor="Silver" Height="30px" onclick="Button10_Click" Width="92px" 
                        ForeColor="Black" />
                </td>
                <td style="height: 20px">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button11" runat="server" BorderStyle="None" Text="Button" 
                        BackColor="Silver" Height="30px" Width="101px" ForeColor="Black" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" ForeColor="Black"></asp:Label>
                </td>
                <td>
                    <asp:HyperLink ID="HyperLink1" runat="server" 
                        NavigateUrl="~/Admin/view country.aspx" ForeColor="Black">view</asp:HyperLink>
                </td>
            </tr>
        </table>
</asp:Content>

