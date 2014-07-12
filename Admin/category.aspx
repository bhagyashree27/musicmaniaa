<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="category.aspx.cs" Inherits="Admin_category" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <table style="width: 63%; height: 224px;">
            <tr>
                <td colspan="2">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <span class="style4">&nbsp;&nbsp;&nbsp;<strong>&nbsp;&nbsp; </strong> </span>
                    <span class="style4" 
                        style="font-size: large; color: #CC3399;"><strong>&nbsp;</strong></span><strong><span 
                        style="font-size: large; ">Category</span><span class="style4" 
                        style="font-size: large">&nbsp;</span></strong></td>
            </tr>
            <tr>
                <td>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>&nbsp;Category
                    Name</strong></td>
                <td>
                    <asp:TextBox ID="txtcategory" runat="server" Height="25px"></asp:TextBox>
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
                    <asp:Button ID="btninsert" runat="server" Text="Insert"
                    BackColor="Silver" Height="30px" Width="101px" ForeColor="Black" 
                        onclick="btninsert_Click" />
                </td>
                <td style="height: 20px">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnreset" runat="server" Text="Reset" 
                        BackColor="Silver" Height="30px" Width="101px" ForeColor="Black" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label" runat="server" ForeColor="Black"></asp:Label>
                </td>
                <td>
                    <asp:HyperLink ID="HyperLink1" runat="server" 
                        NavigateUrl="~/Admin/viewcategory.aspx" ForeColor="Black">view</asp:HyperLink>
                </td>
            </tr>
        </table>
</asp:Content>

