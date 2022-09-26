<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AllOrders.aspx.cs" Inherits="petshop.UI.AllOrders" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table align="center" class="w-100">
        <tr>
            <td>
                <div class="text-center">
                <asp:GridView ID="ordersGrid" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" OnSelectedIndexChanged="ordersGrid_SelectedIndexChanged">
                    <Columns>
                        <asp:BoundField DataField="Orderid" HeaderText="Orderid" SortExpression="Orderid" />
                        <asp:BoundField DataField="username" HeaderText="Username" SortExpression="username" />
                        <asp:BoundField DataField="pcode" HeaderText="Productcode" SortExpression="pcode" />
                        <asp:BoundField DataField="productname" HeaderText="productname" SortExpression="productname" />
                        <asp:BoundField DataField="quantity" HeaderText="Quantity" SortExpression="quantity" />
                        <asp:BoundField DataField="Totalprice" HeaderText="Totalprice" SortExpression="Totalprice" />
                        <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                        <asp:BoundField DataField="orderdate" HeaderText="Orderdate" SortExpression="orderdate" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:virtusadb %>" SelectCommand="SELECT [username], [pcode], [productname], [quantity], [Totalprice], [Address], [orderdate], [Orderid] FROM [OrderDetails]"></asp:SqlDataSource>
                <br />
            </td>
        </tr>
    </table>

</asp:Content>
