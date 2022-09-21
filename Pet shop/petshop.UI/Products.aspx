<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="petshop.UI.Add_Product" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
  
    <style type="text/css">
        .auto-style1 {
            width: 1516px;
        }
    </style>
  
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
      <div class="row">
         <div class="col-md-5">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Product</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <img width="100px" src="different-pets-concept_52683-37940.jpg" />
                        </center>
                     </div>
                  </div>
                   <div class="row">
                       <asp:FileUpload ID="FileUpload1" runat="server" />

                   </div>
                  
                  <div class="row">
                     <div class="col-md-3">
                        <label>Product ID</label>
                        <div class="form-group">
                            <div class ="input-group">
                           <asp:TextBox CssClass="form-control" ID="productid" runat="server" placeholder="Product ID"></asp:TextBox>
                            <asp:Button CssClass="btn btn-primary" ID="Btngo" runat="server" Text="Go" OnClick="Buttongo" />
                        </div>
                     </div>
                     
                  </div>
                   </div>
                  <div class="row">
                     <div class="col-md-6">
                        <label>Product Name</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="txtname" runat="server" placeholder="Product Name"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Product Type</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="txttype" runat="server" placeholder="Product Type"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-6">
                        <label>Stock</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="txtstock" runat="server" placeholder="Stock"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Price</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="txtprice" runat="server" placeholder="Price"></asp:TextBox>
                        </div>
                     </div>
                     
                  </div>
                   <div class="row">
                     <div class="col-4">
                        <asp:Button ID="buttonadd" class="btn btn-lg btn-block btn-primary" runat="server" Text="Add" OnClick="btnadd" />
                         &nbsp;&nbsp;
                         <asp:Button ID="btnupdate" class="btn btn-lg btn-block btn-primary" runat="server" Text="update" />
&nbsp;
                         <asp:Button ID="btndelete" class="btn btn-lg btn-block btn-primary" runat="server" Text="Delete" />
                         <br />
                         <asp:Label ID="lbmsg" runat="server"></asp:Label>
                     </div>
                     <div class="col-4">
                     &nbsp;</div>
                       </div>
               </div>
            </div>
            <a href="homepage.aspx"><< Back to Home</a><br>
            <br>
         </div>
         <div class="col-md-7">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Products List</h4>
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
                         <br />
                         <table align="center" class="w-100">
                             <tr>
                                 <td class="auto-style1">
                                     <br />
                                     <table align="center" class="w-100">
                                         <tr>
                                             <td>
                                                 <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="procode" DataSourceID="ObjectDataSource2">
                                                     <Columns>
                                                         <asp:CommandField ShowSelectButton="True" />
                                                         <asp:BoundField DataField="procode" HeaderText="procode" SortExpression="procode" />
                                                         <asp:BoundField DataField="productname" HeaderText="productname" SortExpression="productname" />
                                                         <asp:BoundField DataField="protype" HeaderText="protype" SortExpression="protype" />
                                                         <asp:BoundField DataField="stock" HeaderText="stock" SortExpression="stock" />
                                                         <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                                                         <asp:ImageField DataImageUrlField="link" HeaderText="Product">
                                                             <ControlStyle Height="300px" Width="300px" />
                                                             <ItemStyle Height="50px" Width="50px" />
                                                         </asp:ImageField>
                                                     </Columns>
                                                     <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                                                     <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                                                     <PagerSettings LastPageText="PreviousPage" Mode="NextPreviousFirstLast" NextPageText="NextPage" />
                                                     <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                                                     <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                                                     <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                                                     <SortedAscendingCellStyle BackColor="#FFF1D4" />
                                                     <SortedAscendingHeaderStyle BackColor="#B95C30" />
                                                     <SortedDescendingCellStyle BackColor="#F1E5CE" />
                                                     <SortedDescendingHeaderStyle BackColor="#93451F" />
                                                 </asp:GridView>
                                             </td>
                                         </tr>
                                     </table>
                                     <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" DeleteMethod="Deleteproduct" SelectMethod="GetAllProducts" TypeName="petshop.Businesslayer.productservices" UpdateMethod="Updateproduct">
                                         <DeleteParameters>
                                             <asp:Parameter Name="procode" Type="Int32" />
                                         </DeleteParameters>
                                         <UpdateParameters>
                                             <asp:Parameter Name="productname" Type="String" />
                                             <asp:Parameter Name="protype" Type="String" />
                                             <asp:Parameter Name="stock" Type="Int32" />
                                             <asp:Parameter Name="price" Type="Int32" />
                                             <asp:Parameter Name="link" Type="String" />
                                             <asp:Parameter Name="procode" Type="String" />
                                         </UpdateParameters>
                                     </asp:ObjectDataSource>
                                     <br />
                                 </td>
                             </tr>
                         </table>
                         <br />
                         <br />
                         <table align="center" class="w-100">
                             <tr>
                                 <td>&nbsp;</td>
                             </tr>
                         </table>
                         <br />
                         <br />
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
</asp:Content>