<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="videos.aspx.cs" Inherits="admin_videos" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="page-heading">
		<h1>Videos Update</h1>
	</div>
	<!-- end page-heading -->

	<table border="0" width="100%" cellpadding="0" cellspacing="0" id="content-table">
	<tr>
		<th rowspan="3" class="sized"><img src="images/shared/side_shadowleft.jpg" width="20" height="300" alt="" /></th>
		<th class="topleft"></th>
		<td id="tbl-border-top">&nbsp;</td>
		<th class="topright"></th>
		<th rowspan="3" class="sized"><img src="images/shared/side_shadowright.jpg" width="20" height="300" alt="" /></th>
	</tr>
	<tr>
		<td id="tbl-border-left"></td>
		<td>
		<!--  start content-table-inner ...................................................................... START -->
		<div id="content-table-inner">
		
			<!--  start table-content  -->
			<div id="table-content">
            <center>
			<table>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="select subject"></asp:Label>
                </td>
                <td class="style1">
                    <asp:DropDownList ID="DropDownList1" runat="server" DataTextField="sub_cat_name" 
                        DataValueField="sub_cat_id">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="vid path"></asp:Label>
                </td>
                <td class="style1">
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="vid name"></asp:Label>
                </td>
                <td class="style1">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="vid image"></asp:Label>
                </td>
                <td class="style1">
                    
              
                <asp:FileUpload ID="FileUpload3" runat="server" />  </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button ID="Button1" runat="server" Text="add vid" 
                        onclick="Button1_Click" />
                </td>
                
            </tr>
            </table>
			
			    <br />
                <asp:GridView ID="GridView1" runat="server" DataKeyNames="vid_id" 
            AutoGenerateColumns="False" 
            onrowcancelingedit="GridView1_RowCancelingEdit" 
            onrowdeleting="GridView1_RowDeleting" onrowediting="GridView1_RowEditing" 
            onrowupdating="GridView1_RowUpdating" AllowPaging="True" PageSize="20" 
                    onpageindexchanging="GridView1_PageIndexChanging1">
        <Columns>
        <asp:TemplateField HeaderText="vid id">
        <ItemTemplate>
            <asp:Literal ID="ltrvidid" runat="server" Text='<%#Eval("vid_id")%>'></asp:Literal>
        </ItemTemplate>
        <EditItemTemplate>
              <asp:Literal ID="ltrvidid" runat="server" Text='<%#Eval("vid_id")%>'></asp:Literal>
        </EditItemTemplate>
        </asp:TemplateField>

        <asp:TemplateField HeaderText="Categories">
                <ItemTemplate>
                    <asp:Literal ID="ltrsub" runat="server" Text='<%#Eval("sub_cat_name")%>'></asp:Literal>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:DropDownList ID="drpSub" runat="server">
                    </asp:DropDownList>
                </EditItemTemplate>
            </asp:TemplateField>

        <asp:TemplateField HeaderText="vid title">
        <ItemTemplate>
              <asp:Literal ID="ltrvidtitle" runat="server" Text='<%#Eval("vid_title")%>'></asp:Literal>
        </ItemTemplate>
        <EditItemTemplate>
                <asp:TextBox ID="txtvidtitle" runat="server" Text='<%#Eval("vid_title")%>'></asp:TextBox>
            
        </EditItemTemplate>
        </asp:TemplateField>


        <asp:TemplateField HeaderText="vid Image">
        <EditItemTemplate>
           <asp:Image ID="imgPro" runat="server" Height="50px" Width="50px" ImageUrl='<%#Eval("vid_image")%>' />
                    <asp:FileUpload ID="fileimage" runat="server" />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Only Image File is allowed!" ValidationExpression ="^.+(.img|.IMG|.jpg|.JPG|.jpeg|.JPEG|.png|.PNG|.bmp|.BMP)$"
                ControlToValidate="fileimage" Display="None">
                </asp:RegularExpressionValidator>
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" />

        </EditItemTemplate>
            <ItemTemplate>
                <asp:Image ID="vid_image" runat="server" Height="111px" 
                    ImageUrl='<%# Bind("vid_image") %>' Width="105px" />
            </ItemTemplate>
        </asp:TemplateField>


        <asp:TemplateField HeaderText="vid Path">
        <ItemTemplate>
            <asp:Literal ID="ltrvidpath" runat="server" Text='<%#Eval("vid_path")%>'></asp:Literal>
        </ItemTemplate>
        <EditItemTemplate>
            <asp:TextBox ID="txtvidpath" runat="server" Text='<%#Eval("vid_path")%>'></asp:TextBox>
                    <asp:FileUpload ID="Filevidpath" runat="server" />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Only Document or vid is allowed!" ValidationExpression ="^.+(.mp4|.3gp|.mkv|.wmv |.MP4|.3GP|.MKV|.WMV)$" ControlToValidate="Filevidpath" Display="None">
                </asp:RegularExpressionValidator>
            
                <asp:ValidationSummary ID="ValidationSummary2" runat="server" ShowMessageBox="True" ShowSummary="False" />
         </EditItemTemplate>
        </asp:TemplateField>
      
        
            <asp:CommandField ShowEditButton="True" />
            <asp:CommandField ShowDeleteButton="True" />
  
        
        
        </Columns>
        </asp:GridView>
			    <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
			</center>
			</div>
			<!--  end table-content  -->
	
			<div class="clear"></div>
		 
		</div>
</asp:Content>

