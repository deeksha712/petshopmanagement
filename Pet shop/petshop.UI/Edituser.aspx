<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Edituser.aspx.cs" Inherits="petshop.UI.Edituser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <style type="text/css">
        .auto-style1 {
            margin-left: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table align="center" class="w-50">
    <tr>
        <td>
            <div class="text-center">
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="name" DataSourceID="SqlDataSource1" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" CssClass="auto-style1">
                <Columns>
                    <asp:CommandField ShowEditButton="True" />
                    <asp:BoundField DataField="name" HeaderText="Name" ReadOnly="True" SortExpression="name" />
                    <asp:BoundField DataField="username" HeaderText="Username" SortExpression="username" />
                    <asp:BoundField DataField="upassword" HeaderText="upassword" SortExpression="upassword" Visible="False" />
                    <asp:BoundField DataField="addres" HeaderText="Address" SortExpression="addres" />
                    <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
                    <asp:BoundField DataField="gender" HeaderText="Gender" SortExpression="gender" />
                    <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                </Columns>
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FFF1D4" />
                <SortedAscendingHeaderStyle BackColor="#B95C30" />
                <SortedDescendingCellStyle BackColor="#F1E5CE" />
                <SortedDescendingHeaderStyle BackColor="#93451F" />
            </asp:GridView>
            </div>
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:virtusadb %>" DeleteCommand="DELETE FROM [Userdetails] WHERE [name] = @name" InsertCommand="INSERT INTO [Userdetails] ([name], [username], [upassword], [addres], [city], [gender], [phone]) VALUES (@name, @username, @upassword, @addres, @city, @gender, @phone)" SelectCommand="SELECT [name], [username], [upassword], [addres], [city], [gender], [phone] FROM [Userdetails] WHERE ([username] = @username)" UpdateCommand="UPDATE [Userdetails] SET [username] = @username, [upassword] = @upassword, [addres] = @addres, [city] = @city, [gender] = @gender, [phone] = @phone WHERE [name] = @name">
                <DeleteParameters>
                    <asp:Parameter Name="name" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="username" Type="String" />
                    <asp:Parameter Name="upassword" Type="String" />
                    <asp:Parameter Name="addres" Type="String" />
                    <asp:Parameter Name="city" Type="String" />
                    <asp:Parameter Name="gender" Type="String" />
                    <asp:Parameter Name="phone" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:SessionParameter Name="username" SessionField="username" Type="String" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="username" Type="String" />
                    <asp:Parameter Name="upassword" Type="String" />
                    <asp:Parameter Name="addres" Type="String" />
                    <asp:Parameter Name="city" Type="String" />
                    <asp:Parameter Name="gender" Type="String" />
                    <asp:Parameter Name="phone" Type="String" />
                    <asp:Parameter Name="name" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
</table>

</asp:Content>
