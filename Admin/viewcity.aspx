<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="viewcity.aspx.cs" Inherits="Admin_viewcity" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <p>
        <br />
    <asp:GridView ID="GridView_city" runat="server" AutoGenerateColumns="False" 
        BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" 
        CellPadding="4" DataKeyNames="city_id" ForeColor="Black" 
        GridLines="Vertical" onpageindexchanging="GridView_city_PageIndexChanging1" 
            onrowcancelingedit="GridView_city_RowCancelingEdit1" 
            onrowdeleting="GridView_city_RowDeleting1" 
            onrowediting="GridView_city_RowEditing1" 
            onrowupdating="GridView_city_RowUpdating1" CellSpacing="2">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:TemplateField HeaderText="sr.No">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("city_id") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("city_id") %>'></asp:Label>
                 
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="state name">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("state_name") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("state_name") %>'></asp:Label>
                </ItemTemplate>
                <HeaderStyle BackColor="White" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="city name">
                <EditItemTemplate>
                    <asp:TextBox ID="txtcityname" runat="server" Text='<%# Bind("city_name") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("city_name") %>'></asp:Label>
                </ItemTemplate>
                <HeaderStyle BackColor="White" />
            </asp:TemplateField>
            <asp:CommandField ShowDeleteButton="True">
            <HeaderStyle BackColor="White" />
            </asp:CommandField>
            <asp:TemplateField ShowHeader="False">
                <EditItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" 
                        CommandName="Update" Text="Update"></asp:LinkButton>
                    &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" 
                        CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" 
                        CommandName="Edit" Text="Edit"></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
    </p>
</asp:Content>

