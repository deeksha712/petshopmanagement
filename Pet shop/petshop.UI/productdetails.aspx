<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="productdetails.aspx.cs" Inherits="petshop.UI.Newpage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:virtusadb %>" SelectCommand="SELECT [procode], [productname], [protype], [stock], [price], [link] FROM [product] WHERE ([procode] = @procode)">
            <SelectParameters>
                <asp:QueryStringParameter Name="procode" QueryStringField="procode" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <asp:DataList ID="DataList1" runat="server" DataKeyField="procode" DataSourceID="SqlDataSource1" RepeatColumns="3" RepeatDirection="Horizontal" Width="1230px">
            <ItemTemplate>
                <div class="text-center">
                    <br />
                    <table class="w-100">
                        <tr>
                            <td>
                                <asp:LinkButton ID="linklabel" runat="server" Text='<%# Eval("link") %>'></asp:LinkButton>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="productnamelabel" runat="server" Text='<%# Eval("productname") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="producttypelabel" runat="server" Text='<%# Eval("protype") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="productpricalabel" runat="server" Text='<%# Eval("price") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Button ID="Button1" runat="server" OnClick="addtocart" Text="AddtoCart" />
                            </td>
                        </tr>
                    </table>
                    <br />
                </div>
            </ItemTemplate>
        </asp:DataList>
    </div>
</asp:Content>
