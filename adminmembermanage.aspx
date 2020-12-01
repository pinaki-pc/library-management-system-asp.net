<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="adminmembermanage.aspx.cs" Inherits="libraryManagement_apps_.adminmembermanage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<script type="text/javascript">
    $(document).ready(function () {



        $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
    });
     </script>
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
                                       <h4>Member Details</h4>                                                                             
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-12">
                                <center>
                                    
                                        <img src="imgs/business%20(1).png" style="height:100px;" class="img-fluid"/>
                                        
                                      </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                              
                                      <hr />                                    
                                
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-sm-5 col-md-5">
                            <asp:Label ID="Label2" runat="server" Text="Member Id"></asp:Label>
                                <center>
                                       <div class="form-group">
                                      
                                           <div class="input-group">                                      
                                           <asp:TextBox ID="TextBox3" class="form-control" placeholder=" Id" runat="server" TextMode="SingleLine"></asp:TextBox>
                                       <asp:Button ID="Button4" class="btn  btn-primary " runat="server" Text="Go" 
                                                   onclick="Button4_Click" />
                                       
                                       </div>                                        
                                       </div>                               
                                </center>
                            </div>
                            <div class="col-sm-7 col-md-7">
                            <asp:Label ID="Label1" runat="server" Text="Full Name"></asp:Label>
                                <center>
                                       <div class="form-group">  
                                                                             
                                           <asp:TextBox ID="TextBox4" class="form-control" placeholder="Enter Book Id" runat="server" TextMode="SingleLine" ReadOnly="True"></asp:TextBox>
                                       
                                       
                                        
                                       </div>                                 
                                </center>
                            </div>
                           
                        </div>
                        <div class="row">
                             <div class="col-sm-12 col-md-12">
                            <asp:Label ID="Label7" runat="server" Text="Account Status"></asp:Label>
                                <center>
                                       <div class="form-group">  
                                        <div class="input-group">                                      
                                           <asp:TextBox ID="TextBox7" class="form-control " placeholder="Status" runat="server" TextMode="SingleLine" ReadOnly="True"></asp:TextBox>
                                            <asp:LinkButton ID="LinkButton2" class="btn  btn-success" runat="server" 
                                                onclick="LinkButton2_Click"><i class="far fa-check-circle"></i></asp:LinkButton>
                                            <asp:LinkButton ID="LinkButton3" class="btn  btn-warning " runat="server" 
                                                onclick="LinkButton3_Click"><i class="far fa-pause-circle"></i></asp:LinkButton>
                                            <asp:LinkButton ID="LinkButton4" class="btn  btn-danger " runat="server" 
                                                onclick="LinkButton4_Click"><i class="far fa-times-circle"></i></asp:LinkButton>
                                       
                                       
                                       
                                       </div> 
                                       </div>                                 
                                </center>
                            </div>
                        </div>
                         <div class="row">
                            <div class="col-sm-6 col-lg-6">
                            <asp:Label ID="Label3" runat="server" Text="DOB"></asp:Label>
                                <center>
                                       <div class="form-group">
                                      
                                           <asp:TextBox ID="TextBox1" class="form-control" placeholder="Date of Birth" runat="server" Enabled="True" ReadOnly="True"></asp:TextBox>
                                       
                                       </div>                               
                                </center>
                            </div>
                            <div class="col-sm-6 col-lg-6">
                            <asp:Label ID="Label4" runat="server" Text="Contact No."></asp:Label>
                                <center>
                                       <div class="form-group">  
                                                                             
                                           <asp:TextBox ID="TextBox2" class="form-control"  runat="server" placeholder="Contact No" TextMode="SingleLine" ReadOnly="True"></asp:TextBox>
                                                                             
                                       </div>                                 
                                </center>
                            </div>
                            
                        </div>


                        <div class="row">
                        <div class="col-sm-6 col-md-6">
                            <asp:Label ID="Label8" runat="server" Text="Email Id"></asp:Label>
                                <center>
                                       <div class="form-group">  
                                                                             
                                           <asp:TextBox ID="TextBox8" class="form-control"  runat="server" placeholder="Email Id" TextMode="SingleLine" ReadOnly="True"></asp:TextBox>
                                                                             
                                       </div>                                 
                                </center>
                            </div>
                            <div class="col-sm-6 col-md-6">
                            <asp:Label ID="Label5" runat="server" Text="State"></asp:Label>
                                <center>
                                       <div class="form-group">
                                      
                                           <asp:TextBox ID="TextBox5" class="form-control" placeholder="State" runat="server" Enabled="True" ReadOnly="True"></asp:TextBox>
                                       
                                       </div>                               
                                </center>
                            </div>
                            
                        </div>
                        <div class="row">
                        <div class="col-sm-6 col-md-6">
                            <asp:Label ID="Label6" runat="server" Text="City"></asp:Label>
                                <center>
                                       <div class="form-group">  
                                                                             
                                           <asp:TextBox ID="TextBox6" class="form-control"  runat="server" placeholder="City" TextMode="SingleLine" ReadOnly="True"></asp:TextBox>
                                                                             
                                       </div>                                 
                                </center>
                            </div>
                            <div class="col-sm-6 col-md-6">
                            <asp:Label ID="Label9" runat="server" Text="Pin Code"></asp:Label>
                                <center>
                                       
                                        <div class="form-group">                                     
                                           <asp:TextBox ID="TextBox9" class="form-control"  runat="server" placeholder="Pin" TextMode="SingleLine" ReadOnly="True"></asp:TextBox>
                                          </div>                               
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-12">
                                <asp:Label ID="Label10" runat="server" Text="Full Postal Address"></asp:Label>
                                 <center>
                                       
                                           <div class="form-group">                                  
                                           <asp:TextBox ID="TextBox10" class="form-control"  runat="server" placeholder="Pin" TextMode="MultiLine" ReadOnly="True" Rows="2"></asp:TextBox>
                                          </div>  <hr />                           
                                </center>
                            </div>
                        </div>
 
 
                        <div class="row">
                            <div class="col-12 mx-auto">
                                <center><i class="fas fa-trash-alt pb-1"></i>
                                <div class="form-group">
                                    <asp:Button ID="Button1" class="btn btn-md btn-danger btn-block" runat="server" 
                                        Text="Delete Member Permanently" onclick="Button1_Click" />
                                    
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
                                    
                                    <img src="imgs/business%20(1).png" style="height:100px;" class="img-fluid" />
                                    <img src="imgs/checklist (1).png" style="height:100px;" class="img-fluid" />
                                    </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                      <h4>Member List</h4>   
                                      
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
                              
                                <asp:GridView ID="GridView1" class="table table-striped table-bordered table-responsive-sm" 
                                    runat="server" AutoGenerateColumns="False">
                                    <Columns>
                                        <asp:TemplateField HeaderText="Member ID">
                                            <ItemTemplate>
                                                <asp:Label ID="Label11" runat="server" Text='<%# Eval("member_id") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Full Name">
                                            <ItemTemplate>
                                                <asp:Label ID="Label12" runat="server" Text='<%# Eval("full_name") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Account Status">
                                            <ItemTemplate>
                                                <asp:Label ID="Label13" runat="server" Text='<%# Eval("account_status") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Contact">
                                            <ItemTemplate>
                                                <asp:Label ID="Label14" runat="server" Text='<%# Eval("contact_no") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Email">
                                            <ItemTemplate>
                                                <asp:Label ID="Label15" runat="server" Text='<%# Eval("email") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="State">
                                            <ItemTemplate>
                                                <asp:Label ID="Label16" runat="server" Text='<%# Eval("state") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="City">
                                            <ItemTemplate>
                                                <asp:Label ID="Label17" runat="server" Text='<%# Eval("city") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                    </Columns>
                                </asp:GridView>                                   
                                
                            </div>
                        </div>
                             
                    </div>
                </div>
            </div>
        </div>
    </div>
    

</asp:Content>
