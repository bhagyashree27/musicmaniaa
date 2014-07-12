<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="audio_download1.aspx.cs" Inherits="audio_download" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList2" runat="server" DataKeyField="aid_id" 
        Font-Names="Verdana" Font-Size="Small" RepeatColumns="3" 
        RepeatDirection="Horizontal" RepeatLayout="Table" Width="600px">
        <ItemStyle ForeColor="Black" />
        <ItemTemplate>
            <div ID="pricePlans">
                <ul ID="plans">
                    <li class="plan">
                        <ul class="planContainer">
                            <li class="title">
                                <h2>
                                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("aid_title") %>'></asp:Label>
                                </h2>
                            </li>
                            <li class="title">
                                <asp:Image ID="imgvid" runat="server" Height="100px" 
                                    ImageUrl='<%# Bind("aid_image") %>' Width="100px" />
                            </li>
                            <li>
                                <ul class="options">
                                    <li><span>
                                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("aid_title") %>'></asp:Label>
                                        </span></li>
                                </ul>
                            </li>
                            <li class="button">
                                <asp:HyperLink ID="HyperLink1" runat="server" 
                                    NavigateUrl='<%# "viewdetailaid.aspx?aid_id=" + Eval("aid_id").ToString() %>' 
                                    ToolTip="Read More...">Details</asp:HyperLink>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>

