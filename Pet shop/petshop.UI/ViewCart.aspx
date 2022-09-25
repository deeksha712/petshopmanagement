<%@ Page Title="" Language="C#" MasterPageFile="~/Site3afterlogin.Master" AutoEventWireup="true" CodeBehind="ViewCart.aspx.cs" Inherits="petshop.UI.ViewCart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     <script text="text/javascript">
       
     </script>
    <div class="container">
        <div class="row">
            
            <div class="col-12">
                <br/>
                <div class="row">
                    <div class="card">
                        <div class="card-body">
                            <div class="row">
                                <div class="col">
                                    <center>
                                        <h4 style="font-family: Cambria">Cart</h4>
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
   
                                       <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="pcode" DataSourceID="SqlDataSource1" ShowFooter="true">
                                            <Columns>
                                                <asp:TemplateField>
                                                    <ItemTemplate>
                                                        <div class ="container-fluid">
                                                            <div class="row">
                                                                <div class="col-lg-2">
                                                                    
                                                                     <asp:Image class="img-fluid" ID="Image1" height="250px" width="250px" runat="server" ImageUrl='<%# Eval("link") %>' />
                                                                    
                                                                </div>
                                                                <div class="col-lg-8">
                                                                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Cambria" Font-Size="Large" Text='<%# Eval("productname") %>' CssClass="auto-style1"></asp:Label>
                                                                    <br class="auto-style1" />
                                                                    <span class="auto-style1">Price:</span><asp:Label ID="Label2" runat="server" Text='<%# Eval("price") %>' CssClass="auto-style1"></asp:Label>
                                                                    
                                                                    <span class="auto-style1">Quantity:</span><asp:Label ID="Label3" runat="server" Text='<%# Eval("quantity")%>' CssClass="auto-style1"> </asp:Label>
                                                                    <br />

                                                                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="quantity" DataValueField="quantity">

                                                                   
                                                               </asp:DropDownList>
                                                                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:virtusadb %>" SelectCommand="SELECT [quantity] FROM [cart]"></asp:SqlDataSource>
                                                                    </div>
                                                                 <div class="col-lg-2">
                                                            <asp:LinkButton CssClass="btn btn-warning" ID="delete" runat="server" Text="Delete" ForeColor="White" style="font-family: Cambria" CommandArgument='<%# Eval("pcode") %>'  OnClick="delete_Click"  />

                                                           </div>
                                                        </div>
                                                   </div>
                                                        </ItemTemplate>
                                                     </asp:TemplateField>
                                                        <asp:BoundField DataField="TotalPrice" HeaderText="price" SortExpression="TotalPrice" >
                                            <HeaderStyle Font-Names="Cambria" />
                                            </asp:BoundField>
                                                </Columns>
                                           <FooterStyle Font-Names="Cambria" Font-Bold="True" Font-Size="Large" Width="100px" />
                                        <RowStyle Font-Names="Cambria" />

        
                  
                                           </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:virtusadb %>" SelectCommand="SELECT * FROM [cart] WHERE ([username] = @username)">
        <SelectParameters>
            <asp:SessionParameter Name="username" SessionField="username" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    </div>
                            </div>
                            <br />
                            <div class="row">
                                <div class="col">
                                    <asp:LinkButton CssClass="btn btn-info position-absolute bottom-0 end-0" ID="placeorder" runat="server" Font-Names="Cambria" ForeColor="White" Text="Place Order" OnClick="Placeorder_Click" Visible="False">Place Order</asp:LinkButton>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <center>
                <a href="Homepage.aspx"><< Back to Home</a><span class="clearfix"></span>
                <br />
                <center>
                    
        </div>
    </div>
    <br />
   
</asp:Content>
    