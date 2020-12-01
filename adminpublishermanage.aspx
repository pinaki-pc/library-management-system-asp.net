<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="adminpublishermanage.aspx.cs" Inherits="libraryManagement_apps_.adminpublishermanage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

<script type="text/javascript">
    $(document).ready(function () {



        $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
    });
     </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
    <div class="container">
        <div class="row">
            <div class="col-md-5">
                <div class="card mt-5 mb-3">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                       <h4>Publisher Details</h4>                                      
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                        <img src="imgs/business.png" style="height:100px;" class="img-fluid"/>
                                        
                                      </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                              
                                      <hr />                                    
                                
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-5">
                            <asp:Label ID="Label2" runat="server" Text="Publisher Id"></asp:Label>
                                <center>
                                       <div class="form-group">
                                       <div class="input-group">
                                           <asp:TextBox ID="TextBox3" class="form-control" placeholder=" Id" runat="server"></asp:TextBox>
                                       <asp:Button ID="Button2" class="btn  btn-dark " runat="server" Text="Go" 
                                               onclick="Button2_Click" />
                                       </div>  
                                       </div>                               
                                </center>
                            </div>
                            <div class="col-md-7">
                            <asp:Label ID="Label1" runat="server" Text="publisher Name"></asp:Label>
                                <center>
                                       <div class="form-group">                                        
                                           <asp:TextBox ID="TextBox4" class="form-control" placeholder="Enter Publisher Name" runat="server" TextMode="SingleLine"></asp:TextBox>
                                       </div>                                
                                </center>
                            </div>
                        </div>
 
                        <div class="row">
                            <div class="col-4">
                                <center>
                                <div class="form-group">
                                    <asp:Button ID="Button1" class="btn btn-md btn-success btn-block" 
                                        runat="server" Text="Add" onclick="Button1_Click" />
                                    </div>
                                </center>
                            </div>
                             <div class="col-4">
                                <center>
                                <div class="form-group">
                                    <asp:Button ID="Button3" class="btn btn-md btn-primary btn-block" 
                                        runat="server" Text="Update" onclick="Button3_Click" />
                                    </div>
                                </center>
                            </div>
                             <div class="col-4">
                                <center>
                                <div class="form-group">
                                    <asp:Button ID="Button4" class="btn btn-md btn-success btn-danger btn-block" 
                                        runat="server" Text="Delete" onclick="Button4_Click" />
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
                                    <img src="imgs/book.png" style="height:100px;" class="img-fluid" />
                                    <img src="imgs/business-and-finance.png" style="height:100px;" class="img-fluid" />                                        
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                      <h4>Publisher List</h4>   
                                      
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
