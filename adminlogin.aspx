<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="adminlogin.aspx.cs" Inherits="libraryManagement_apps_.adminlogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="container">
        <div class="row mb-4">
            <div class="col-md-6 mx-auto">
                <div class="card mt-5  ">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                      <img src="imgs/admin badge.png" class="img-fluid"/>                                      
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                      <h3>Admin Login</h3>                                     
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                      <hr />                                    
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                       <div class="form-group">
                                           <asp:TextBox ID="TextBox1" class="form-control" placeholder="Registered Email" runat="server"></asp:TextBox>
                                       </div>                                
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox2" class="form-control" placeholder="Password" runat="server" TextMode="Password"></asp:TextBox>                                  
                                </div>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                <div class="form-group">
                                    <asp:Button ID="Button1" runat="server" 
                                        class="btn-lg btn btn-success btn-block" Text="Sign-in" 
                                        onclick="Button1_Click" />
                                    </div>
                                </center>
                            </div>
                        </div>

                        

                    </div>
                </div>
                <asp:LinkButton ID="LinkButton1" runat="server"><< Back to Home</asp:LinkButton>
            </div>
        </div>
    </div>

</asp:Content>
