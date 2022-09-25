<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="petshop.UI.AdminLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <style type="text/css">
    .auto-style2 {
        width: 100%;
        border-style: solid;
        border-width: 3px;
    }
    .auto-style3 {
        text-align: center;
        height: 24px;
    }
    .auto-style4 {
        text-align: center;
        width: 757px;
    }
    .auto-style5 {
        text-align: center;
        height: 24px;
        width: 757px;
    }
    .auto-style6 {
        width: 757px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table align="center" class="auto-style2">
    <tr>
        <td class="text-center" colspan="2">
            <asp:Label ID="Label1" runat="server" Text="ADMIN LOGIN"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="text-center">UserName</td>
        <td class="auto-style4">
            <asp:TextBox ID="Textuser" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">Password</td>
        <td class="auto-style5">
            <asp:TextBox ID="Textpwd" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style4">
            <asp:Button ID="btnlogin" runat="server" OnClick="buttonlogin" Text="Login" />
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style6">&nbsp;</td>
    </tr>
</table>
</asp:Content>
