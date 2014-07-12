<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage_after_login.master" AutoEventWireup="true" CodeFile="ringtone_download.aspx.cs" Inherits="ringtone_download" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                        DataTextField="sub_cat_name" DataValueField="sub_cat_id" 
        onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                    </asp:DropDownList>
                <br />
    <asp:DataList ID="DataList2" runat="server" DataKeyField="vid_id" 
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
                                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("vid_title") %>'></asp:Label>
                                </h2>
                            </li>
                            <li class="title">
                                <asp:Image ID="imgvid" runat="server" Height="100px" 
                                    ImageUrl='<%# Bind("vid_image") %>' Width="100px" />
                            </li>
                            <li>
                                <ul class="options">
                                    <li><span>
                                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("vid_title") %>'></asp:Label>
                                        </span></li>
                                </ul>
                            </li>
                            <li class="button">
                                <asp:HyperLink ID="HyperLink1" runat="server" 
                                    NavigateUrl='<%# "viewdetailvid.aspx?vid_id=" + Eval("vid_id").ToString() %>' 
                                    ToolTip="Read More...">Details</asp:HyperLink>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>

