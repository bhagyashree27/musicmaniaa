<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage_after_login.master" AutoEventWireup="true" CodeFile="change_password.aspx.cs" Inherits="change_password" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <script type="text/javascript">
    window.history.forward(1);
     </script>

		   
		   <h2 style="color: #CC66FF">Change Password</h2> 
          
		   
				<%--<img src="img/bg-th-left.gif" width="8" alt="" class="left" />
				<img src="img/bg-th-right.gif" width="7" height="7" alt="" class="right" />--%>
                <br />
                <br />
                
   <table border="0" style="width: 581px">
   <tr>
         <td>Clientname</td>
         <td>
             <asp:TextBox ID="txtusername" runat="server"></asp:TextBox>
         </td> <td>
                &nbsp;
            </td>
    </tr>
    <tr>
    <td>Old Password</td>
    <td>
        <asp:TextBox ID="txtopass" runat="server" TextMode="Password"></asp:TextBox>
    </td>
    <td>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Old Password" ControlToValidate="txtopass"></asp:RequiredFieldValidator>
    </td>
    </tr>
    <tr>
    <td>New Password</td>
    <td>
        <asp:TextBox ID="txtnewpass" runat="server" TextMode="Password"></asp:TextBox>
    </td>
    <td>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter New Password" ControlToValidate="txtnewpass"></asp:RequiredFieldValidator>
    </td>
    </tr>
    <tr>
    <td>Repty New Password</td>
    <td>
        <asp:TextBox ID="txtreptypass" runat="server" TextMode="Password"></asp:TextBox>       
    </td>
    <td>
        &nbsp;</td>
    <td>
        <asp:CompareValidator ID="CompareValidator1" runat="server" 
            ErrorMessage="Do Not Match" ControlToCompare="txtnewpass" 
            ControlToValidate="txtreptypass"></asp:CompareValidator>
    </td>
    </tr>
    <tr>
    <td>       
        <br />
        <asp:Button ID="btnchange" runat="server" Text="Change" 
            onclick="btnchange_Click" />
        <asp:Button ID="btnreset" runat="server" Text="Reset" 
            onclick="btnreset_Click" />
        <br />
        <br />
        <br />
        <asp:Label ID="lblresult" runat="server"></asp:Label>
        
    </td>
    </tr>
</table>
</div>
<div>
</div>
</asp:Content>

