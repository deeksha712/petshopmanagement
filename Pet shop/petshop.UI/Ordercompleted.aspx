<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Ordercompleted.aspx.cs" Inherits="petshop.UI.Ordercompleted" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-6 mx-auto">
                <br />
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img src="different-pets-concept_52683-37940.jpg" width="70" />
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                <h5>&nbsp;</h5>
                                    <h5>Your Order Placed</h5>
                                <h6>Thank you so much for your order</h6>
                                    </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-3">
                                <center>
                                </center>
                            </div>
                            <div class="col-md-3">
                                <center>
                                    <asp:Button class="btn btn-success btn-sm m-1 ms-0 w-100" ID="Home" runat="server" Text="Home" OnClick="Home_Click" />
                                </center>
                            </div>
                        </div>
                    </div>
                </div>
                <a href="ViewProducts.aspx" class="text-decoration-none"><i class="fa-solid fa-backward"></i> <span class="auto-style1">Continue Shopping</span></a><br><br>

            </div>
        </div>
    </div>
 
</asp:Content>
