<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Loginform.aspx.cs" Inherits="petshop.UI.Loginform" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table align="center" cellpadding="3" cellspacing="3" style="width: 50%">
    <tr>
        <td colspan="2" style="border-width: thick; margin: 62px; font-style: inherit; color: #000000; background-color: #FFFFFF; table-layout: auto;" class="text-center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;LOGIN FORM&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
    </tr>
    <tr>
        <td style="font-style: inherit; width: 288px;" class="text-center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Username</td>
        <td style="width: 340px" class="text-center">
            <asp:TextBox ID="txtusername" runat="server" Width="317px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtusername" ErrorMessage="username required"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr style="background-color: #C0C0C0">
        <td style="width: 288px; background-color: #FFFFFF;" class="text-center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Password</td>
        <td style="width: 340px; background-color: #FFFFFF;" class="text-center">
            <asp:TextBox ID="txtpassword" runat="server" Width="317px" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtpassword" ErrorMessage="Password is required"></asp:RequiredFieldValidator>
        </td>
    </tr>
        
    <tr>
        <td class="auto-style1"></td>
        <td class="auto-style2">
            <asp:Button ID="btnsubmit" runat="server" BorderColor="Black" Text="login" OnClick="btnlogin_click" />
        </td>
    </tr>
    <tr>
        <td style="width: 288px">&nbsp;</td>
        <td style="width: 340px">
       <asp:LinkButton ID="btnsingin" runat="server" OnClick="singin">New User???Signin</asp:LinkButton>

        </td>
    </tr>
    <tr>
        <td style="width: 288px">&nbsp;</td>
        <td style="width: 340px">
            <asp:Label ID="lbmsg" runat="server"></asp:Label>
            </td>
    </tr>
</table>

</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder2">
    <style type="text/css">
        .auto-style1 {
            width: 288px;
            height: 43px;
        }
        .auto-style2 {
            width: 340px;
            height: 43px;
        }
    </style>
</asp:Content>

