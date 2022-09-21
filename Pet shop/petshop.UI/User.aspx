<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="User.aspx.cs" Inherits="petshop.UI.User1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
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
                           <h4>UserDetails</h4>
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
                     <div class="col-md-3">
                        <label>Name</label>
                        <div class="form-group">
                            <div class ="input-group">
                           <asp:TextBox CssClass="form-control" ID="txtname" runat="server" placeholder="Name"></asp:TextBox>
                          
                        </div>
                     </div>
                     
                  </div>
                   </div>
                  <div class="row">
                     <div class="col-md-6">
                        <label>Username</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="txtusername" runat="server" placeholder="UserName"></asp:TextBox>
   
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Password</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="txtpassword" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-6">
                        <label>Address</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="txtaddress" runat="server" placeholder="password" TextMode="Multiline"></asp:TextBox>
                        </div>
                     </div>
                     
                  </div>
                   <div class="row">
                     <div class="col-md-6">
                        <label>City</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="txtcity" runat="server" placeholder="City"></asp:TextBox>
                        </div>
                     </div>
                     
                  </div>
                   <div class="row">
                     <div class="col-md-6">
                        <label>Gender</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="textgender" runat="server" placeholder="gender"></asp:TextBox>
                        </div>
                     </div>
                     
                  </div>
                   <div class="row">
                     <div class="col-md-6">
                        <label>PhoneNo</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="textphone" runat="server" placeholder="PhoneNo"></asp:TextBox>
                        </div>
                     </div>
                     
                  </div>
                   <div class="row">
                     <div class="col-4">
                         <br />
                         <asp:Label ID="lbmsg" runat="server"></asp:Label>
                     </div>
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
                        <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" 
                            CssClass="auto-style1" AllowPaging="True" AutoGenerateColumns="False" 
                            BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" 
                            BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="ObjectDataSource1"
                            Width="852px">
                            <Columns>
                                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                                <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                                <asp:BoundField DataField="upassword" HeaderText="upassword" SortExpression="upassword" />
                                <asp:BoundField DataField="confirmpassword" HeaderText="confirmpassword" SortExpression="confirmpassword" />
                                <asp:BoundField DataField="addres" HeaderText="addres" SortExpression="addres" />
                                <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
                                <asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender" />
                                <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                                <asp:BoundField DataField="uid" HeaderText="uid" SortExpression="uid" />
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
                         <asp:ObjectDataSource ID="ObjectDataSource1" runat="server"  DeleteMethod="Deleteuser" SelectMethod="GetAllusers" TypeName="petshop.Businesslayer.Userdetailsservices" UpdateMethod="Updateuser" DataObjectTypeName="pet.Entities.Userdetails">
                             <DeleteParameters>
                                 <asp:Parameter Name="name" Type="String" />
                             </DeleteParameters>
                         </asp:ObjectDataSource>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
</asp:Content>
