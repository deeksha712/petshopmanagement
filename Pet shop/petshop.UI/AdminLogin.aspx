<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="petshop.UI.AdminLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <style type="text/css">
    .auto-style2 {
        width: 50%;
        border-style: solid;
        border-width: 3px;
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
    .auto-style7 {
        text-align: center;
        width: 1024px;
    }
    .auto-style8 {
        text-align: center;
        height: 24px;
        width: 1024px;
    }
    .auto-style9 {
        width: 1024px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table align="center" class="auto-style2" class="table table-bordered">
    <tr>
        <td class="text-center" colspan="2">
            <asp:Label ID="Label1" runat="server" Text="ADMIN LOGIN"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style7">UserName*</td>
        <td class="auto-style4">
            <asp:TextBox ID="Textuser" runat="server"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Textuser" ErrorMessage="username required"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style8">Password*</td>
        <td class="auto-style5">
            <asp:TextBox ID="Textpwd" runat="server"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Textpwd" ErrorMessage="password required"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style9">&nbsp;</td>
        <td class="auto-style4">
            <asp:Button ID="btnlogin" runat="server" OnClick="buttonlogin" Text="Login" />
        </td>
    </tr>
    <tr>
        <td class="auto-style9">&nbsp;</td>
        <td class="auto-style6">
            <asp:Label ID="lbmsg" runat="server"></asp:Label>
        </td>
    </tr>
</table>
</asp:Content>
