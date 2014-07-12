<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="viewcategory.aspx.cs" Inherits="Admin_viewcategory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <asp:GridView ID="GridView_category" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" 
        BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" 
        DataKeyNames="cat_id" ForeColor="Black" 
        onpageindexchanging="GridView_category_PageIndexChanging" 
        onrowupdating="GridView_category_RowUpdating" 
        onrowcancelingedit="GridView_category_RowCancelingEdit" 
        onrowdeleting="GridView_category_RowDeleting" 
        onrowediting="GridView_category_RowEditing">
        <Columns>
            <asp:TemplateField HeaderText="Serial No">
                <EditItemTemplate>
                    <asp:TextBox ID="txtcatid" runat="server" Text='<%# Bind("cat_id") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="lblcatid" runat="server" Text='<%# Bind("cat_id") %>'></asp:Label>
                </ItemTemplate>
                <HeaderStyle ForeColor="White" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Category Name">
                <EditItemTemplate>
                    <asp:TextBox ID="txtcatname" runat="server" Text='<%# Bind("category_name") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="lblcatname" runat="server" Text='<%# Bind("category_name") %>'></asp:Label>
                </ItemTemplate>
                <HeaderStyle BorderColor="White" ForeColor="White" />
            </asp:TemplateField>
            <asp:CommandField ShowEditButton="True" />
            <asp:CommandField ShowDeleteButton="True" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
        <RowStyle BackColor="White" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="Gray" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
</asp:Content>

