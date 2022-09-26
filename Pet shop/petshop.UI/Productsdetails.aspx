<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Productsdetails.aspx.cs" Inherits="petshop.UI.Add_Product" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
  
     <script type="text/javascript">
         $(document).ready(function () {
             $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).DataTable();
         });
         function readURL(input) {
             if (input.files && input.files[0]) {
                 var reader = new FileReader();
                 reader.onload = function (e) {
                     $('#imgview').attr('src', e.target.result);
                 };
                 reader.readAsDataURL(input.files[0]);
             }
         }
     </script>
  
    <style type="text/css">
        .auto-style1 {
            position: relative;
            display: flex;
            flex-direction: column;
            min-width: 0;
            word-wrap: break-word;
            background-color: #fff;
            background-clip: border-box;
            border-radius: .25rem;
            left: 0px;
            top: 0px;
        }
        .auto-style2 {
            --bs-gutter-x: 1.5rem;
            --bs-gutter-y: 0;
            display: flex;
            flex-wrap: wrap;
            margin-top: calc(-1 * var(--bs-gutter-y));
            margin-right: calc(-.5 * var(--bs-gutter-x));
            margin-left: calc(-.5 * var(--bs-gutter-x));
            text-align: center;
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
                             <img id="imgview" Width="120" src="different-pets-concept_52683-37940.jpg" />
                           
                        </center>
                     </div>
                  </div>
                   <div class="row">
                       <asp:FileUpload ID="FileUpload1" onchange="readURL(this)" CssClass="form-control" runat="server" />

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
                     <div class="col-6">
                        <asp:Button ID="buttonadd" class="btn  btn-primary" runat="server" Text="Add" OnClick="btnadd" />
                        
                         &nbsp;&nbsp;
                         &nbsp;
                         <asp:Button ID="buttonupdate" class="btn  btn-primary" runat="server" Text="Update" OnClick="btnupdate" />
                        
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
            <div class="auto-style1">
               <div class="card-body">
                  <div class="auto-style2">
                      &nbsp;PRODUCTS</div>
                  <div class="row">
                     <div class="col">
                         
                                             
                                                 
                                    
                                     <br />
                             
                                     <table align="center" class="w-100">
                                         <tr>
                                             <td>
                                                 <asp:GridView ID="productsGrid" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="procode" DataSourceID="ObjectDataSource2">
                                                     <Columns>
                                                         <asp:CommandField ShowDeleteButton="True" />
                                                         <asp:BoundField DataField="procode" HeaderText="Productcode" SortExpression="procode" />
                                                         <asp:BoundField DataField="productname" HeaderText="Productname" SortExpression="productname" />
                                                         <asp:BoundField DataField="protype" HeaderText="Protype" SortExpression="protype" />
                                                         <asp:BoundField DataField="stock" HeaderText="Stock" SortExpression="stock" />
                                                         <asp:BoundField DataField="price" HeaderText="Price" SortExpression="price" />
                                                         <asp:ImageField DataImageUrlField="link" HeaderText="Product">
                                                             <ControlStyle Height="200px" Width="200px" />
                                                         </asp:ImageField>
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
                                             </td>
                                         </tr>
                                     </table>
                                     <br/>
                                    <br/> 
                                     <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" DeleteMethod="Deleteproduct" SelectMethod="GetAllProducts" TypeName="petshop.Businesslayer.productservices" UpdateMethod="Updateproduct">
                                         <DeleteParameters>
                                             <asp:Parameter Name="procode" Type="String" />
                                         </DeleteParameters>
                                     </asp:ObjectDataSource>
                         <br />
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
</asp:Content>