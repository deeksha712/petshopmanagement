<%@ Page Title="" Language="C#" MasterPageFile="~/Site3for viewproducts.Master" AutoEventWireup="true" CodeBehind="ViewProducts.aspx.cs" Inherits="petshop.UI.prod" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 100%;
            height: 41px;
        }
        .auto-style4 {
            position: relative;
            display: flex;
            flex-direction: column;
            min-width: 0;
            word-wrap: break-word;
            background-color: #fff;
            background-clip: border-box;
            border-radius: .25rem;
            left: 0px;
            top: -36px;
            height: 3739px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Button ID="buttonviewcart" runat="server" Height="30px" OnClick="viewcart" Text="ViewCart" />
    <asp:Label ID="lb" runat="server"></asp:Label>
    <br />
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:virtusadb %>" SelectCommand="SELECT [procode], [productname], [protype], [stock], [price], [link] FROM [product] WHERE ([productname] LIKE '%' + @productname + '%') or ([protype] LIKE '%' + @protype + '%')">
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox2" Name="productname" PropertyName="Text" DefaultValue="" />
            <asp:ControlParameter ControlID="TextBox2" Name="protype" PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <table class="auto-style3">
        <tr>
            <td class="text-center" style="text-transform: capitalize; font-style: normal; font-variant: small-caps; font-size: 30px; font-weight: bolder;">
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:virtusadb %>" SelectCommand="SELECT [procode], [productname], [protype], [stock], [price], [link] FROM [product]"></asp:SqlDataSource>
                PRODUCTS&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
        </tr>
    </table>
    <asp:Label ID="lbmsg" runat="server"></asp:Label>
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox2" runat="server" CssClass="mt-0" Width="213px"></asp:TextBox>
                &nbsp;<asp:Button ID="buttonsearch1" runat="server" OnClick="btnsearch" Text="Search" Width="82px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <br />

    <div class="container">
            <div class="row">

                <div class="col-sm-12">
                    <br />
                    <div class="row">
                        <div class="auto-style4">
                            <div class="card-body">

                                <div class="row">
                                    <div class="col">
                                        <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="procode" DataSourceID="SqlDataSource3" AllowPaging="True" OnRowCommand="Gridview1_Command" AllowSorting="True">

                                            <Columns>
                                                <asp:BoundField DataField="procode" HeaderText="ID" ReadOnly="True" SortExpression="procode">
                                                    <ControlStyle Font-Bold="True" />
                                                    <ItemStyle Font-Bold="True" />
                                                </asp:BoundField>
                                                <asp:TemplateField>
                                                    <ItemTemplate>
                                                        <div class="container-fluid">
                                                            <div class="row">
                                                                <div class="col-lg-10">
                                                                    <div class="row">
                                                                        <div class="col-12">
                                                                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("productname") %>' Font-Bold="True" Font-Size="X-Large"></asp:Label>
                                                                        </div>
                                                                    </div>
                                                                    <div class="row">
                                                                        <div class="col-12">
                                                                            <span>Type - </span>
                                                                            <asp:Label ID="Label2" runat="server" Font-Bold="True" Text='<%# Eval("protype") %>'></asp:Label>
                                                                            &nbsp;| <span><span>&nbsp;</span>Stock - </span>
                                                                            <asp:Label ID="Label3" runat="server" Font-Bold="True" Text='<%# Eval("stock") %>'></asp:Label>
                                                                            &nbsp;|
                                                                            <span>Price
                                                      -<span>&nbsp;</span>
                                                                            <asp:Label ID="Label4" runat="server" Font-Bold="True" Text='<%# Eval("price") %>'></asp:Label>
                                                                            </span>
                                                                        </div>
                                                                        <div class="row">
                                                                            <div class="col-12">
                                                                                
                                                                            </div>
                                                                            <div class="row">
                                                    <div class="col-12">
                                                        <span>Quantity</span>
                                                        <asp:DropDownList ID="quantity" runat="server">
                                                            <asp:ListItem>1</asp:ListItem>
                                                            <asp:ListItem>2</asp:ListItem>
                                                            <asp:ListItem>3</asp:ListItem>
                                                            <asp:ListItem>4</asp:ListItem>
                                                            <asp:ListItem>5</asp:ListItem>
                                                        </asp:DropDownList>
                                                    </div>

                                                                        <div class="row">
                                                                            <div class="col-12">
                                                                                <asp:LinkButton ID="addcart" runat="server" Text="Add to Cart" CommandName="AddCart" CommandArgument="<%# Container.DataItemIndex %>" />
                                                                            </div>
                                                                    </div>
                                                                  </div> 
                                                                 </div>
                                                            </div>
                                   
                                                          </div>  
                                                                    
                                                                
                                                                <div class="col-lg-2">
                                                               
                                                                    <asp:Image class="img-fluid" ID="Image1" height="250px" width="250px" runat="server" ImageUrl='<%# Eval("link") %>' />
                                                                    
                                                                </div>
                                                                </div>
                                                                </div>
                                                            </iv>
                                                        </div>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                            </Columns>
                                            <PagerSettings Mode="NextPreviousFirstLast" />
                                        </asp:GridView>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <center>
                    <a href="HomePage.aspx">
                        << Back to Home</a><span class="clearfix"></span>
                            <br />
                            <center>
            </div>
        </div>
</asp:Content>
