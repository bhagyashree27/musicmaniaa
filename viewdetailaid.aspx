<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage_after_login.master" AutoEventWireup="true" CodeFile="viewdetailaid.aspx.cs" Inherits="viewdetailvid" %>

<%@ Register Assembly="ASPNetFlashVideo.NET3" Namespace="ASPNetFlashVideo" TagPrefix="ASPNetFlashVideo" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 
    <div>
    <asp:FormView ID="FormView1" runat="server" 
        onpageindexchanging="FormView1_PageIndexChanging">
    <ItemTemplate>
        <table>
                <tr>
                    <td>
                        <asp:Literal ID="Literal1" runat="server" Text='<%#Bind("aid_title") %>'></asp:Literal>
                        <br />
                       
                    </td>
                    <td>
                    <br />
                        <ASPNetFlashVideo:FlashVideo ID="FlashVideo1" runat="server" VideoURL='<%# DataBinder.Eval(Container.DataItem,"aid_path") %>'>
                        <HTMLAlternativeTemplate>
                         
                        </HTMLAlternativeTemplate>
                        </ASPNetFlashVideo:FlashVideo>
                        <br />
                        <br />
                        </td>

                </tr>
                <tr>
                <td>
                    <asp:HyperLink ID="HyperLink1" runat="server" ImageUrl="~/images/download.gif" 
                        NavigateUrl='<%# bind("aid_path") %>' Text='<%# bind("aid_title") %>'></asp:HyperLink>
                </td>
                </tr>
            </table>
            </ItemTemplate>
        </asp:FormView>
       
    </div>
       
 

</asp:Content>

