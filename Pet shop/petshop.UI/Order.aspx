<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="false" CodeBehind="Order.aspx.cs" Inherits="petshop.UI.Order" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    &nbsp;<div class="container">
        <div class="row">
            <div class="col-md-12 mx-auto">
                &nbsp;<a href="HomePage.aspx" class="text-decoration-none"><span class="auto-style1">Back</span></a><br><br>

                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="200" src="different-pets-concept_52683-37940.jpg"/>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <div class="text-center">
                                <asp:GridView class="table table-striped table-bordered align-content-center align-items-center" ID="ordgrid" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                                    <Columns>
                                       
                   
                                        <asp:BoundField DataField="pcode" HeaderText="Productcode" SortExpression="pcode">
                                        </asp:BoundField>
                                        <asp:BoundField DataField="productname" HeaderText="Productname" SortExpression="productname">
                                        </asp:BoundField>
                                        <asp:BoundField DataField="quantity" HeaderText="Quantity" SortExpression="quantity">
                                        </asp:BoundField>
                                        <asp:BoundField DataField="Totalprice" HeaderText="Totalprice" SortExpression="Totalprice" >
                                           </asp:BoundField>
                                        
                                        <asp:BoundField DataField="orderdate" HeaderText="Orderdate" SortExpression="orderdate" >
                                        </asp:BoundField>
                                        <asp:BoundField DataField="Orderid" HeaderText="Orderid" SortExpression="Orderid" >
                                            </asp:BoundField>
                                    </Columns>
                                    <HeaderStyle BackColor="#FFCC99" />
                                    <RowStyle BackColor="#FFFFCC" ForeColor="Black" />
                                </asp:GridView>
                                </div>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:virtusadb %>" SelectCommand="SELECT * FROM [OrderDetails] WHERE ([username] = @username)">
                                    <SelectParameters>
                                        <asp:SessionParameter Name="username" SessionField="username" Type="String" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                            </div>
                        </div>

                        <div class="row">
                        </div>

</div>


                    </div>
                </div>
            </div>
        </div>

   
</asp:Content>
