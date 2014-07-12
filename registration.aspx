<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="registration.aspx.cs" Inherits="registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
</asp:ScriptManager>
Registration Form:</br>

<asp:Label ID="Lblfirstname" runat="server" Text="first name"></asp:Label>&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;
<asp:TextBox ID="txtfirstname" runat="server"></asp:TextBox></br>




<asp:Label ID="Lbllastname" runat="server" Text="last name"></asp:Label>&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;

    <asp:TextBox ID="txtlastname" runat="server"></asp:TextBox></br>
    <asp:Label ID="Lblgender" runat="server" Text="Gender"></asp:Label>
<asp:UpdatePanel ID="UpdatePanel4" runat="server">
    <ContentTemplate>
    <asp:RadioButtonList ID="rbtngen" runat="server" 
        RepeatDirection="Horizontal" AutoPostBack="True" ForeColor ="Black" >
        <asp:ListItem>male</asp:ListItem>
        <asp:ListItem>female</asp:ListItem>
    </asp:RadioButtonList>
    </ContentTemplate>
     </asp:UpdatePanel></br>
    <asp:Label ID="Lblcountry" runat="server" Text="Country"></asp:Label>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
    <asp:DropDownList ID="DropDowncountry" runat="server" AutoPostBack="True" 
            onselectedindexchanged="DropDowncountry_SelectedIndexChanged1" 
            DataTextField="country_name" DataValueField="country_id">
        <asp:ListItem>India</asp:ListItem>
        <asp:ListItem>Pakistan</asp:ListItem>
        <asp:ListItem>U.S.A.</asp:ListItem>
        <asp:ListItem>Shrilanka</asp:ListItem>
    </asp:DropDownList>
    </ContentTemplate>
    </asp:UpdatePanel></br>
state
    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
    <ContentTemplate>
    <asp:DropDownList ID="DropDownstate" runat="server" AutoPostBack="True" 
            onselectedindexchanged="DropDownstate_SelectedIndexChanged1" 
            DataTextField="state_name" DataValueField="state_id">
        <asp:ListItem>Gujarat</asp:ListItem>
        <asp:ListItem>punjab</asp:ListItem>
        <asp:ListItem>Rajesthan</asp:ListItem>
        <asp:ListItem>Maharastra</asp:ListItem>
        <asp:ListItem>Uttar Pradesh</asp:ListItem>
        <asp:ListItem>New Jercy</asp:ListItem>
    </asp:DropDownList>
    </ContentTemplate>
    </asp:UpdatePanel>




city

    <asp:UpdatePanel ID="UpdatePanel3" runat="server">
    <ContentTemplate>
    <asp:DropDownList ID="DropDowncity" runat="server" AutoPostBack="True" 
            DataTextField="city_name" DataValueField="city_id" 
            onselectedindexchanged="DropDowncity_SelectedIndexChanged1">
        <asp:ListItem>Junagadh</asp:ListItem>
        <asp:ListItem>Rajkot</asp:ListItem>
        <asp:ListItem>Puna</asp:ListItem>
        <asp:ListItem>Mumbai</asp:ListItem>
        <asp:ListItem>Surat</asp:ListItem>
        <asp:ListItem>Gagyabad</asp:ListItem>
    </asp:DropDownList>
    </ContentTemplate>
    </asp:UpdatePanel></br>

    




    <asp:Label ID="Lblcontactno" runat="server" Text="Contact No"></asp:Label>&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;

    <asp:TextBox ID="txtcontactno" runat="server"></asp:TextBox></br>




<asp:Label ID="email_lbl" runat="server" Text="email"></asp:Label>&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;





    <asp:TextBox ID="email_txt" runat="server"></asp:TextBox></br>
    



    

username &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;

       <asp:TextBox ID="txtusername" runat="server"  ></asp:TextBox>
       <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
           ErrorMessage="RequiredFieldValidator" ControlToValidate="txtusername">plz enter name</asp:RequiredFieldValidator></br>



password &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;
   <asp:TextBox ID="txtpassword" runat="server" TextMode="Password"></asp:TextBox>  
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ErrorMessage="RequiredFieldValidator" ControlToValidate="txtpassword">plz enter password</asp:RequiredFieldValidator></br>
 </br>
 </br>
 </br>
 </br>



     <asp:Label ID="lblresult" runat="server"></asp:Label>&nbsp; &nbsp; &nbsp;
    <asp:Button ID="Btnsubmit" runat="server" Text="submit" 
        onclick="Btnsubmit_Click" />
    <asp:Button ID="Btnreset" runat="server" Text="reset" />
    
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
     


</asp:Content>

