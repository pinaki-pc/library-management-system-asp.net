<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="userregistration.aspx.cs" Inherits="libraryManagement_apps_.userregistration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="row mb-4">
            <div class="col-md-7 mx-auto">
                <div class="card mt-5  shadow-lg">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                      <img src="imgs/female-user.png" style="height:100px;" class="img-fluid"/>                                      
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                      <h4>Member Sign Up</h4>                                     
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                              
                                      <hr />                                    
                                
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                            <asp:Label ID="Label2" runat="server" Text="Full Name"></asp:Label>
                                <center>
                                       <div class="form-group">
                                           <asp:TextBox ID="TextBox3" class="form-control" placeholder="Member Id" runat="server"></asp:TextBox>
                                       </div>                                
                                </center>
                            </div>
                            <div class="col-md-6">
                            <asp:Label ID="Label1" runat="server" Text="Date of Birth"></asp:Label>
                                <center>
                                       <div class="form-group">                                        
                                           <asp:TextBox ID="TextBox4" class="form-control" placeholder="Date of Birth" runat="server" TextMode="Date"></asp:TextBox>
                                       </div>                                
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                            <asp:Label ID="Label3" runat="server" Text="Contact Number"></asp:Label>
                                <center>
                                       <div class="form-group">
                                           <asp:TextBox ID="TextBox5" class="form-control" placeholder="contact No" runat="server"></asp:TextBox>
                                       </div>                                
                                </center>
                            </div>
                            <div class="col-md-6">
                            <asp:Label ID="Label4" runat="server" Text="Email Id"></asp:Label>
                                <center>
                                       <div class="form-group">                                        
                                           <asp:TextBox ID="TextBox6" class="form-control" placeholder="Email" runat="server" TextMode="Email"></asp:TextBox>
                                       </div>                                
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4">
                            <asp:Label ID="Label5" runat="server" Text="State"></asp:Label>
                                <center>
                                       <div class="form-group">
                                           <asp:DropDownList ID="DropDownList1" class="form-control" runat="server">
                                               <asp:ListItem>select--</asp:ListItem>
                                               <asp:ListItem>West Bengal</asp:ListItem>
                                           </asp:DropDownList>
                                       </div>                                
                                </center>
                            </div>
                            <div class="col-md-4">
                            <asp:Label ID="Label6" runat="server" Text="City"></asp:Label>
                                <center>
                                       <div class="form-group">                                        
                                           <asp:TextBox ID="TextBox2" class="form-control" placeholder="City" runat="server" TextMode="SingleLine"></asp:TextBox>
                                       </div>                                
                                </center>
                            </div>
                            <div class="col-md-4">
                            <asp:Label ID="Label7" runat="server" Text="Pin Code"></asp:Label>
                                <center>
                                       <div class="form-group">                                        
                                           <asp:TextBox ID="TextBox7" class="form-control" placeholder="Pin" 
                                               runat="server"></asp:TextBox>
                                       </div>                                
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                            <asp:Label ID="Label8" runat="server" Text="Full Address"></asp:Label>
                                <center>
                                       <div class="form-group">
                                           <asp:TextBox ID="TextBox1" class="form-control" 
                                               placeholder="Write your address..." runat="server" Rows="2" TextMode="MultiLine"></asp:TextBox>
                                       </div>                                
                                </center>
                            </div>
                          
                        </div>

                        <div class="row">
                            <div class="col p-1">
                            
                                <center>
                                           <span class="badge badge-pill badge-info ">Login Cradential</span>                            
                                </center>
                                
                            </div>
                            
                          
                        </div>
                        
                        <div class="row">
                            <div class="col-md-6">
                            <asp:Label ID="Label9" runat="server" Text="user Id"></asp:Label>
                                <center>
                                       <div class="form-group">
                                           <asp:TextBox ID="TextBox8" class="form-control" 
                                               placeholder="user id" runat="server" TextMode="SingleLine"></asp:TextBox>
                                       </div>                                
                                </center>
                                
                            </div>
                            <div class="col-md-6">
                            <asp:Label ID="Label10" runat="server" Text="Password"></asp:Label>
                                <center>
                                       <div class="form-group">
                                           <asp:TextBox ID="TextBox9" class="form-control" 
                                               placeholder="password" runat="server" Rows="2" TextMode="Password"></asp:TextBox>
                                       </div>                                
                                </center>
                            </div>
                          
                        </div>
                        

                      

                        <div class="row">
                            <div class="col">
                                <center>
                                <div class="form-group">
                                    
                                    <asp:Button ID="Button1" class="btn btn-info btn-block" runat="server" Text="Signup" onclick="Button1_Click" />
                                   
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
