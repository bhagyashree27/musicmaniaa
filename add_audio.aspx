<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="add_audio.aspx.cs" Inherits="add_audio" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div class="right_content">            
        
   <h2> Add Audio Song</h2><br /><br />
    
    <center>
        
   
    
    <table>
    <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td>
                Song Name             </td>
            <td>
                &nbsp;
                <asp:TextBox ID="txtsnm" runat="server" Height="26px" Width="185px"></asp:TextBox>
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td>
                Upload Song             </td>
            <td>
                &nbsp;
                <asp:FileUpload ID="fileupload_song" runat="server" Height="29px" 
                    Width="193px" />
                <asp:Label ID="lblsizemsg" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
       
        <tr>
            <td>
                Description
            </td>
            <td>
                &nbsp;
                <asp:TextBox ID="txtdesc" runat="server" Columns="20" Rows="10" 
                    TextMode="MultiLine" Width="194px"></asp:TextBox>
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
         <tr>
        <td> </td>
        <td>
            
            <asp:Button ID="btnsubmit" runat="server" Text="Submit" Height="26px" 
                onclick="btnsubmit_Click" Width="78px"  />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnreset" runat="server" Text="Reset" Height="28px" 
                Width="69px" 
                onclick="btnreset_Click" />
            
         </td>
         
    </tr>
        <tr>
        
        <td colspan="2">
                   <asp:Label ID="lblmsg" runat="server"></asp:Label>
                   </td>
    </tr>
   
     
    </table>
    
    
    
   

    
     </center>
     </div>

</asp:Content>

