<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage_after_login.master" AutoEventWireup="true" CodeFile="viewdetailvid.aspx.cs" Inherits="viewdetailvid" %>

<%@ Register Assembly="ASPNetFlashVideo.NET3" Namespace="ASPNetFlashVideo" TagPrefix="ASPNetFlashVideo" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 
<div>
    <asp:FormView ID="FormView1" runat="server" 
        onpageindexchanging="FormView1_PageIndexChanging">
    <ItemTemplate>
        <table>
                <tr>
                    <td>
                        <asp:Literal ID="Literal1" runat="server" Text='<%#Bind("vid_title") %>'></asp:Literal>
                        <br />
                       
                    </td>
                    <td>
                    <br />
                        <ASPNetFlashVideo:FlashVideo ID="FlashVideo1" runat="server" VideoURL='<%# DataBinder.Eval(Container.DataItem,"vid_path") %>'>
                        <HTMLAlternativeTemplate>
                         
                        </HTMLAlternativeTemplate>
                        </ASPNetFlashVideo:FlashVideo>
                        <br />
                        <br />
                        </td>

                </tr>
                <tr>
                <td>
                    <asp:HyperLink ID="HyperLink1" runat="server" ImageUrl="~/images/download.gif" Height="20" Width="20" 
                        NavigateUrl='<%# bind("vid_path") %>' Text='<%# bind("vid_title") %>'></asp:HyperLink>
                </td>
                </tr>
            </table>
            </ItemTemplate>
        </asp:FormView>
       
    </div>
       
 

</asp:Content>

