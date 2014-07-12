<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="city.aspx.cs" Inherits="Admin_city" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 63%; height: 224px;">
        <tr>
            <td colspan="2">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <span class="style4">&nbsp;&nbsp;&nbsp;<strong>&nbsp;&nbsp; </strong></span>
                <span class="style4" 
                        style="font-size: large; color: #CC3399;"><strong>&nbsp;City</strong></span></td>
        </tr>
        <tr>
            <td>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong> &nbsp;State 
                    Name</strong></td>
            <td>
                <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
                        DataTextField="state_name" DataValueField="state_id">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                    &nbsp;&nbsp;&nbsp;&nbsp;<strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; City 
                Name</strong></td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Height="25px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="height: 20px">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btninsert" runat="server" onclick="btninsert_Click" 
                        Text="Insert" />
            </td>
            <td style="height: 20px">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button11" runat="server" BorderStyle="None" Text="reset" 
                        BackColor="Silver" Height="30px" Width="101px" ForeColor="Black" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblms" runat="server" ForeColor="Black"></asp:Label>
            </td>
            <td>
                <asp:HyperLink ID="HyperLink1" runat="server" 
                        NavigateUrl="~/Admin/viewcity.aspx" ForeColor="Black">view</asp:HyperLink>
            </td>
        </tr>
    </table>
</asp:Content>

