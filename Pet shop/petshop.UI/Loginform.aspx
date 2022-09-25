<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Loginform.aspx.cs" Inherits="petshop.UI.Loginform" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table align="center" cellpadding="3" cellspacing="3" style="width: 50%" class="table table-bordered">
    <tr>
        <td colspan="2" style="border-width: thick; margin: 62px; font-style: inherit;  table-layout: auto;" class="text-center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;LOGIN FORM&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
    </tr>
    <tr>
        <td style="font-style: inherit; width: 288px;" class="text-center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Username</td>
        <td class="auto-style3">
            <asp:TextBox ID="txtusername" runat="server"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtusername" ErrorMessage="username required"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr style="background-color: #C0C0C0">
        <td style="width: 288px; background-color: #FFFFFF;" class="text-center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Password</td>
        <td style="background-color: #FFFFFF;" class="auto-style3">
            <asp:TextBox ID="txtpassword" runat="server" TextMode="Password"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtpassword" ErrorMessage="Password is required"></asp:RequiredFieldValidator>
        </td>
    </tr>
        
    <tr>
        <td class="auto-style1"></td>
        <td class="auto-style2">
            <asp:Button ID="btnsubmit" runat="server" BorderColor="Black" Text="Login" OnClick="btnlogin_click" />
        </td>
    </tr>
    <tr>
        <td style="width: 288px">&nbsp;</td>
        <td class="auto-style4">
       <asp:LinkButton ID="btnsingin" runat="server" OnClick="singin">New User???Signin</asp:LinkButton>

        </td>
    </tr>
    <tr>
        <td style="width: 288px">&nbsp;</td>
        <td class="auto-style4">
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
        .auto-style3 {
            text-align: center;
            width: 340px;
        }
        .auto-style4 {
            width: 340px;
        }
    </style>
</asp:Content>

