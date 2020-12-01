<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="adminbookissu.aspx.cs" Inherits="libraryManagement_apps_.adminbookissu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid">
        <div class="row">
            <div class="col-md-5">
                <div class="card mt-5 mb-3">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                       <h4>Book Issuing</h4>                                                                             
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                        <img src="imgs/book.png" style="height:100px;" class="img-fluid"/>
                                        
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
                            <asp:Label ID="Label2" runat="server" Text="Member Id"></asp:Label>
                                <center>
                                       <div class="form-group">
                                      
                                           <asp:TextBox ID="TextBox3" class="form-control" placeholder=" Id" runat="server"></asp:TextBox>
                                       
                                       </div>                               
                                </center>
                            </div>
                            <div class="col-md-6">
                            <asp:Label ID="Label1" runat="server" Text="Book Id"></asp:Label>
                                <center>
                                       <div class="form-group">  
                                        <div class="input-group">                                      
                                           <asp:TextBox ID="TextBox4" class="form-control" placeholder="Enter Book Id" runat="server" TextMode="SingleLine"></asp:TextBox>
                                       <asp:Button ID="Button2" class="btn  btn-dark " runat="server" Text="Go" />
                                       
                                       </div> 
                                       </div>                                 
                                </center>
                            </div>
                        </div>
                         <div class="row">
                            <div class="col-md-6">
                            <asp:Label ID="Label3" runat="server" Text="Member Name"></asp:Label>
                                <center>
                                       <div class="form-group">
                                      
                                           <asp:TextBox ID="TextBox1" class="form-control" placeholder="Menber Name" runat="server" Enabled="True" ReadOnly="True"></asp:TextBox>
                                       
                                       </div>                               
                                </center>
                            </div>
                            <div class="col-md-6">
                            <asp:Label ID="Label4" runat="server" Text="Book Name"></asp:Label>
                                <center>
                                       <div class="form-group">  
                                                                             
                                           <asp:TextBox ID="TextBox2" class="form-control"  runat="server" placeholder="Book Name" TextMode="SingleLine" ReadOnly="True"></asp:TextBox>
                                                                             
                                       </div>                                 
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                            <asp:Label ID="Label5" runat="server" Text="Start Date"></asp:Label>
                                <center>
                                       <div class="form-group">
                                      
                                           <asp:TextBox ID="TextBox5" class="form-control" runat="server" Enabled="True" TextMode="Date"></asp:TextBox>
                                       
                                       </div>                               
                                </center>
                            </div>
                            <div class="col-md-6">
                            <asp:Label ID="Label6" runat="server" Text="End Date"></asp:Label>
                                <center>
                                       <div class="form-group">  
                                                                             
                                           <asp:TextBox ID="TextBox6" class="form-control"  runat="server" TextMode="Date"></asp:TextBox>
                                                                             
                                       </div>                                 
                                </center>
                            </div>
                        </div>
 
 
                        <div class="row">
                            <div class="col-4 mx-auto">
                                <center>
                                <div class="form-group">
                                    <asp:Button ID="Button1" class="btn btn-md btn-success btn-block" runat="server" Text="Issu Book" />
                                    </div>
                                </center>
                            </div>
                             <div class="col-4 mx-auto">
                                <center>
                                <div class="form-group">
                                    <asp:Button ID="Button3" class="btn  btn-md btn-primary btn-block" runat="server" Text="Return Book" />
                                    </div>
                                </center>
                            </div>
                             
                        </div>

                    </div>
                </div>
                 <asp:LinkButton ID="LinkButton1" runat="server"><< Back to Home</asp:LinkButton>
                
            </div>

            <div class="col-md-7">
                <div class="card mt-5 mb-3">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img src="imgs/checklist (1).png" style="height:100px;" class="img-fluid" />
                                    </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                      <h4>Book List</h4>   
                                      
                                     </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                              
                                      <hr />                                    
                                
                            </div>
                        </div>

                        
                        <div class="row">
                            <div class="col">
                              
                                <asp:GridView ID="GridView1" class="table table-striped table-bordered" runat="server">
                                </asp:GridView>                                   
                                
                            </div>
                        </div>
                             
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
