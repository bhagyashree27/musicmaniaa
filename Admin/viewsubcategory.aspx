<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="viewsubcategory.aspx.cs" Inherits="Admin_viewsubcategory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <p>
        <br />
&nbsp;
        <asp:GridView ID="GridView_sub_category" runat="server" AutoGenerateColumns="False" 
            BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" 
            CellPadding="4" CellSpacing="2" DataKeyNames="sub_cat_id" ForeColor="Black" 
            onpageindexchanging="GridView_sub_category_PageIndexChanging" 
            onrowdeleting="GridView_sub_category_RowDeleting" AllowPaging="True" 
            onrowcancelingedit="GridView_sub_category_RowCancelingEdit" 
            onrowediting="GridView_sub_category_RowEditing" 
            onrowupdating="GridView_sub_category_RowUpdating"  Width="449px" 
            onselectedindexchanged="GridView_sub_category_SelectedIndexChanged">
            <Columns>
                <asp:TemplateField HeaderText="Serial No">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("sub_cat_id") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("sub_cat_id") %>'></asp:Label>
                    </ItemTemplate>
                    <HeaderStyle BackColor="White" BorderColor="White" />
                </asp:TemplateField>
                <%--<asp:TemplateField HeaderText="category">
                    <EditItemTemplate>
                        <asp:TextBox ID="txtcategry" runat="server" Text='<%# Bind("category_name") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblcategory" runat="server" Text='<%# Bind("category_name") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
--%>                <asp:TemplateField HeaderText="sub category name">
                    <EditItemTemplate>
                        <asp:TextBox ID="txtsubcatname" runat="server" Text='<%# Bind("sub_cat_name") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblsubcatname" runat="server" Text='<%# Bind("sub_cat_name") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField ShowDeleteButton="True" />
                <asp:CommandField ShowEditButton="True" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <RowStyle BackColor="White" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
    </p>
</asp:Content>

