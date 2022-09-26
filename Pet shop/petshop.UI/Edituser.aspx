<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Edituser.aspx.cs" Inherits="petshop.UI.Edituser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table align="center" class="w-50">
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="name" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:CommandField ShowEditButton="True" />
                        <asp:BoundField DataField="name" HeaderText="name" ReadOnly="True" SortExpression="name" />
                        <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                        <asp:BoundField DataField="upassword" HeaderText="upassword" SortExpression="upassword" />
                        <asp:BoundField DataField="addres" HeaderText="addres" SortExpression="addres" />
                        <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
                        <asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender" />
                        <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                    </Columns>
                </asp:GridView>
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
