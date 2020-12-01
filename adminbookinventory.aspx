<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="adminbookinventory.aspx.cs" Inherits="libraryManagement_apps_.adminbookinventory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<script type="text/javascript">
    function readURL(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();

            reader.onload = function (e) {
                $('#imgview').attr('src', e.target.result);
            };

            reader.readAsDataURL(input.files[0]);
        }
    }

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
                                       <h4>Books Details</h4>                                                                             
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    
                                        <img alt="book-img" id="imgview" src="bookimage/book (3).png" style="height:120px; width:100px;" class="img-fluid"/>
                                        
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
                               <asp:Label ID="Label11" runat="server"  Text="Choose Book image"></asp:Label>
                                <asp:FileUpload ID="FileUpload1" onchange="readURL(this);"  class="form-control" runat="server" />                                  
                                
                            </div>
                        </div>


                        <div class="row">
                            <div class="col-md-3">
                            <asp:Label ID="Label2" runat="server"  Text="Book Id"></asp:Label>
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
                            <div class="col-md-9">
                            <asp:Label ID="Label1" runat="server" Text="Book Name"></asp:Label>
                                <center>
                                       <div class="form-group">  
                                                                             
                                           <asp:TextBox ID="TextBox4" class="form-control" placeholder=" Book name" runat="server" TextMode="SingleLine" ></asp:TextBox>
                                       
                                       
                                        
                                       </div>                                 
                                </center>
                            </div>
                          
                        </div>
                         <div class="row">
                            <div class="col-md-4  ">
                            <asp:Label ID="Label3" runat="server" Text="Language"></asp:Label>
                                <center>
                                       <div class="form-group">
                                           <asp:DropDownList ID="DropDownList1" class="form-control" runat="server">
                                           <asp:ListItem>-- choose --</asp:ListItem>
                                               <asp:ListItem>Enhlish</asp:ListItem>
                                           </asp:DropDownList>
                                           
                                       </div>                               
                                </center>

                                <asp:Label ID="Label7" runat="server" Text="Publisher name"></asp:Label>
                                <center>
                                       <div class="form-group">
                                           <asp:DropDownList ID="DropDownList2" class="form-control" runat="server">
                                           <asp:ListItem>Choose</asp:ListItem>
                                               <asp:ListItem>pub001</asp:ListItem>
                                           </asp:DropDownList>
                                           
                                       </div>                               
                                </center>
                            </div>
                            <div class="col-md-4 ">
                           
                                
                                       <div class="form-group">  
                                                                             
                                           <asp:Label ID="Label12" runat="server" Text="Auther name"></asp:Label>
                                <center>
                                       <div class="form-group">
                                           <asp:DropDownList ID="DropDownList3" class="form-control" runat="server">
                                           <asp:ListItem>Choose</asp:ListItem>
                                               <asp:ListItem>aut001</asp:ListItem>
                                           </asp:DropDownList>
                                           
                                       </div>                               
                                </center>                                
                                       </div>  
                                       
                                       <asp:Label ID="Label4" runat="server" Text="Publish date"></asp:Label>
                                <center>
                                       <div class="form-group">
                                           <asp:TextBox ID="TextBox1" class="form-control" runat="server" TextMode="Date"></asp:TextBox>
                                           
                                       </div>                               
                                </center>      
                                       
                                                                     
                                
                            </div>
                            <div class="col-md-4  ">
                            <asp:Label ID="Label8" runat="server" Text="Genre"></asp:Label>
                                <center>
                                       <div class="form-group">  
                                           <asp:ListBox ID="ListBox1" class="form-control" runat="server" 
                                               SelectionMode="Multiple">
                                               <asp:ListItem>Action</asp:ListItem>
                                               <asp:ListItem>Adventure</asp:ListItem>
                                               <asp:ListItem>Horror</asp:ListItem>
                                               <asp:ListItem>Motivation</asp:ListItem>
                                               <asp:ListItem>Selp Development</asp:ListItem>
                                               <asp:ListItem>Selp Help</asp:ListItem>
                                           </asp:ListBox>                              
                                                                             
                                       </div>                                 
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4">
                            <asp:Label ID="Label5" runat="server" Text="Edition"></asp:Label>
                                <center>
                                       <div class="form-group">
                                      
                                           <asp:TextBox ID="TextBox5" class="form-control" placeholder="Edition" runat="server" Enabled="True" ></asp:TextBox>
                                       
                                       </div>                               
                                </center>
                            </div>
                            <div class="col-md-4">
                            <asp:Label ID="Label6" runat="server" Text="Book cost (per Unit)"></asp:Label>
                                <center>
                                       <div class="form-group">  
                                                                             
                                           <asp:TextBox ID="TextBox6" class="form-control"  runat="server" placeholder="Book cost" TextMode="SingleLine" ></asp:TextBox>
                                                                             
                                       </div>                                 
                                </center>
                            </div>
                            <div class="col-md-4">
                            <asp:Label ID="Label9" runat="server" Text="Pages"></asp:Label>
                                <center>
                                       
                                        <div class="form-group">                                     
                                           <asp:TextBox ID="TextBox9" class="form-control"  runat="server" placeholder="Pages" TextMode="SingleLine" ></asp:TextBox>
                                          </div>                               
                                </center>
                            </div>
                        </div>
                         <div class="row">
                            <div class="col-md-4">
                            <asp:Label ID="Label13" runat="server" Text="Actual stock"></asp:Label>
                                <center>
                                       <div class="form-group">
                                      
                                           <asp:TextBox ID="TextBox2" class="form-control" placeholder="Actual stock" runat="server" Enabled="True" ></asp:TextBox>
                                       
                                       </div>                               
                                </center>
                            </div>
                            <div class="col-md-4">
                            <asp:Label ID="Label14" runat="server" Text="Current stock"></asp:Label>
                                <center>
                                       <div class="form-group">  
                                                                             
                                           <asp:TextBox ID="TextBox7" class="form-control"  runat="server" placeholder="Current stock" TextMode="SingleLine" ReadOnly="True"></asp:TextBox>
                                                                             
                                       </div>                                 
                                </center>
                            </div>
                            <div class="col-md-4">
                            <asp:Label ID="Label15" runat="server" Text="Issued books"></asp:Label>
                                <center>
                                       
                                        <div class="form-group">                                     
                                           <asp:TextBox ID="TextBox8" class="form-control"  runat="server" placeholder="Issued books" TextMode="SingleLine" ReadOnly="True"></asp:TextBox>
                                          </div>                               
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-12">
                                <asp:Label ID="Label10" runat="server" Text="Book discription"></asp:Label>
                                 <center>
                                       
                                           <div class="form-group">                                  
                                           <asp:TextBox ID="TextBox10" class="form-control"  runat="server" placeholder="Short discription of book .." 
                                                   TextMode="MultiLine" Rows="2"></asp:TextBox>
                                          </div>  <hr />                           
                                </center>
                            </div>
                        </div>
 
 
                        <div class="row">
                            <div class="col-4 ">
                                <center>
                                <div class="form-group">
                                    <asp:Button ID="Button1" class="btn btn-md btn-success btn-block" 
                                        runat="server" Text="Add" onclick="Button1_Click" />
                                    
                                    </div>
                                </center>
                            </div>
                            <div class="col-4 ">
                                <center>
                                <div class="form-group">
                                    <asp:Button ID="Button2" class="btn btn-md btn-warning btn-block" runat="server" 
                                        Text="Update" onclick="Button2_Click" />
                                    
                                    </div>
                                </center>
                            </div>
                            <div class="col-4 ">
                                <center>
                                <div class="form-group">
                                    <asp:Button ID="Button3" class="btn btn-md btn-danger btn-block" runat="server" 
                                        Text="Delete" onclick="Button3_Click" />
                                    
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
                                      <h4>Book Inventroy List</h4>   
                                      
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
                              
                                <asp:GridView ID="GridView1" class="table table-striped table-bordered" 
                                    runat="server" AutoGenerateColumns="False">
                                    <Columns>

                                        <asp:TemplateField HeaderText="ID">
                                            <ItemTemplate>
                                                <asp:Label ID="Label16" runat="server" Text='<%# Eval("book_id") %>' 
                                                    Font-Bold="True"></asp:Label>
                                            </ItemTemplate>
                                            <ItemStyle Width="20px" />
                                        </asp:TemplateField>

                                        <asp:TemplateField>
                                            <ItemTemplate>
                                                <div class="container-fluid">
                                                    <div class="row">
                                                        <div class="col-lg-10">
                                                            <div class="row ">
                                                                <div class="col-12">
                                                                    <asp:Label ID="Label17" runat="server" Text='<%# Eval("book_name") %>' 
                                                                        Font-Bold="True" Font-Size="Large"></asp:Label>
                                                                </div>
                                                                 <div class="col-12">
                                                                    
                                                                     Auther -
                                                                     <asp:Label ID="Label18" runat="server" Font-Bold="True" Font-Size="Small" 
                                                                         Text='<%# Eval("auther_name") %>'></asp:Label>
                                                                     &nbsp;| Genre -
                                                                     <asp:Label ID="Label19" runat="server" Font-Bold="True" Font-Size="Small" 
                                                                         Text='<%# Eval("genre") %>'></asp:Label>
                                                                     &nbsp;| Language -
                                                                     <asp:Label ID="Label20" runat="server" Font-Bold="True" Font-Size="Small" 
                                                                         Text='<%# Eval("language") %>'></asp:Label>
                                                                    
                                                                </div>
                                                                 <div class="col-12">
                                                                    
                                                                     Publlisher -
                                                                     <asp:Label ID="Label21" runat="server" Font-Bold="True" Font-Size="Small" 
                                                                         Text='<%# Eval("publisher_name") %>'></asp:Label>
                                                                     &nbsp;| Publish Date -
                                                                     <asp:Label ID="Label22" runat="server" Font-Bold="True" Font-Size="Small" 
                                                                         Text='<%# Eval("publish_date") %>'></asp:Label>
                                                                     &nbsp;| Pages -
                                                                     <asp:Label ID="Label23" runat="server" Font-Bold="True" Font-Size="Small" 
                                                                         Text='<%# Eval("no_of_pages") %>'></asp:Label>
                                                                     &nbsp;| Edition -
                                                                     <asp:Label ID="Label24" runat="server" Font-Bold="True" Font-Size="Small" 
                                                                         Text='<%# Eval("edition") %>'></asp:Label>
                                                                    
                                                                </div>
                                                                 <div class="col-12">
                                                                    
                                                                     Cost -
                                                                     <asp:Label ID="Label25" runat="server" Font-Bold="True" Font-Size="Small" 
                                                                         Text='<%# Eval("book_cost") %>'></asp:Label>
                                                                     &nbsp;</div>
                                                                 <div class="col-12">
                                                                    
                                                                     Actual Stock -
                                                                     <asp:Label ID="Label26" runat="server" Font-Bold="True" Font-Size="Small" 
                                                                         Text='<%# Eval("actual_stock") %>'></asp:Label>
                                                                     &nbsp;| Current Stock -
                                                                     <asp:Label ID="Label27" runat="server" Font-Bold="True" Font-Size="Small" 
                                                                         Text='<%# Eval("current_stock") %>'></asp:Label>
                                                                     &nbsp;</div>
                                                                 <div class="col-12 pb-3">
                                                                    
                                                                     Description -
                                                                     <asp:Label ID="Label28" runat="server" Font-Bold="True" Font-Size="Small" 
                                                                         Text='<%# Eval("book_description") %>'></asp:Label>
                                                                     &nbsp;</div>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-2">
                                                            <asp:Image ID="Image1" class="img-fluid p-2" runat="server" 
                                                                ImageUrl='<%# Eval("book_img_link") %>' />
                                                        </div>
                                                     </div>
                                                </div>
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
