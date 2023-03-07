﻿<%@ Page Title="" Language="C#" MasterPageFile="~/noFooter.Master" AutoEventWireup="true" CodeBehind="UserProfile.aspx.cs" Inherits="RoomToRead.UserProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
    .form-control:valid {
  background-color:  white !important;
  font-weight:600 !important ;
  color :#6aa84f !important;
  padding : 0px !important;
border: none;
}
.container {
  position: relative;
  width: 100%;
  max-width: 400px;
}
​
.container img {
  width: 100%;
  height: auto;
}
​
.container .btn {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  -ms-transform: translate(-50%, -50%);
  background-color: #555;
  color: white;
  font-size: 16px;
  padding: 12px 24px;
  border: none;
  cursor: pointer;
  border-radius: 5px;
  text-align: center;
}
.col-12{
    width:700px !important;
}
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br /><br />
            <div class="container-fluid">
      <div class="row" style="margin: 0px 20px">
         <div class="col-md-12 col-sm-8 col-8 col-lg-4">
            <div class="card col-sm-12 col-md-12 ">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                          <div id="img" runat="server" >   </div>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4> Your Profile</h4>

                           <span>Account Status - </span>
                                                                              <%--     Account Status     //--%>
                    
                           <asp:Label style="background-color:cadetblue"  class="badge badge-pill badge-info" ID="tag" runat="server" Text="User"></asp:Label>

                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>



                  <div class="row">
                     <div class="col-md-6">
                        <label> Full Name</label>
                        <div class="form-group">
                            <asp:Label ID="Label6" runat="server" class="text-success" Text=""></asp:Label>
                          <%-- <asp:TextBox CssClass="form-control "  class="text-success" ID ="TextBox1" runat="server"  ></asp:TextBox>--%>
                        </div>
                     </div>
                    <%-- <div class="col-md-6">
                        <label>Book</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox2" runat="server" placeholder="25"></asp:TextBox>
                        </div>
                     </div>--%>
                  </div>
                   <hr />
                  <div class="row">
                     <div class="col-md-6">
                        <label> phone</label>
                        <div class="form-group">
                            <asp:Label ID="Label3" runat="server" class="text-success" Text=""></asp:Label>
                         <%--  <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" ></asp:TextBox>--%>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Email ID</label>
                        <div class="form-group">
                            <asp:Label ID="Label4" runat="server" class="text-success" Text=""></asp:Label>
                    <%--       <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Email ID" TextMode="Email"></asp:TextBox>--%>
                        </div>
                     </div>
                  </div>
                 <hr />
                     <div class="col-md-12">
                        <label>Address</label>
                        <div class="form-group">
                            <asp:Label ID="Label5" runat="server" class="text-success" Text=""></asp:Label>
                          <%-- <asp:TextBox  class="form-control" ID="TextBox6" runat="server" placeholder="City"></asp:TextBox>--%>
                        </div>
                     </div>
                     <hr />
                     <div class="col-md-12">
                        <label>City</label>
                        <div class="form-group">
                            <asp:Label runat="server" ID="cityName"></asp:Label>
                        </div>
                     </div>
               
                  <div class="row">
                     <div class="col-lg-7 mx-auto col-sm-10 col-md-10">
                        <center>
                           <div class="form-group">
                               <asp:Button class="btn btn-success btn-block btn-md" ID="Button2" runat="server" Text="Edit Profile" OnClick="Button2_Click1" />
                           
                           </div>
                        </center>
                     </div>
                  </div>




               </div>
            </div>
            <br><br>
         </div>


         <%-- /                /--%>
         <div class="col-md-6" >

             
                                         <div class="container" >
                                             
                                             <img style="width:700px ;height:370px;margin-left:12px  !important" src="imgg\\45.jpg"/>
                                              
                                               <div class="row">
                     <div class="col media-right " style="margin:10px 600px!important">
                        <center>
                           <div   >
                               <asp:Button  class=" mi btn btn-success btn-block btn-md" ID="Button3" runat="server" Text="Donate" OnClick="Button3_Click1"  />
                           
                           </div>
                        </center>
                     </div>
                                             
                                         </div>

            <div runat="server" id="books" class="card col-12" style="margin:0px 20px ; padding:0px 80px">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                         <img class= " rounded-circle img-fluid"  style="width: 97px ; height:82px   ; "  src="imgg/20.gif "/> 
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                          <%--  <asp:Label style="font-size:18;" ID="your" runat="server" Text="Your Donated books"></asp:Label>--%>
                           <h4 runat="server" id="your"> Book obtained </h4>
                           <asp:Label class="badge badge-pill badge-info" ID="Label2" runat="server" Text="your books info"></asp:Label>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-12">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-12 col-lg-12">

                         <%--/     ----------------------------------              /--%>

                         <div class="col">
                             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [Book_image], [donating_date], [book_name], [approve] FROM [books] WHERE (([approve] = @approve) AND ([user_id] = @user_id))">
                                 <SelectParameters>
                                     <asp:Parameter Name="approve" DefaultValue="1" Type="Decimal" />
                                     <asp:SessionParameter Name="user_id" SessionField="userId" Type="String" />
                                 </SelectParameters>
                             </asp:SqlDataSource>
        
         <asp:Repeater ID="rptCustomers" runat="server" DataSourceID="SqlDataSource1">
               <HeaderTemplate >
        <table class="table table-hover col-12" style="width:500px!important;" >
  <thead>

      <asp:Panel ID="Panel1" runat="server">
  

    <tr class="table-success" >
      <th scope="col">#</th>
      <th scope="col">Book Name</th>
      <th scope="col"> Donation Date</th>
      <th scope="col">Book Image</th>

       
    </tr></asp:Panel>
            <tbody>
             </HeaderTemplate>
    <ItemTemplate>

    <tr>
      <th scope="row">#</th>
      <td>  <asp:Label ID="Label1" runat="server" Text='<%#Eval("book_Name") %>'></asp:Label></td>
           <td> <asp:Label ID="Label2" runat="server" Text='<%#Eval("donating_date") %>'></asp:Label></td>
     <td> <asp:Image style="width:50px; height:70px ;" ID="Image1"  runat="server"  ImageUrl='<%#Eval("Book_image") %>' /></td>
    </tr>
       
    </tbody>
      
  
           </ItemTemplate>
         </asp:Repeater>
  </table>  

         





                          <%--/     ----------------------------------              /--%>


                        <%-- <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RoomToReadConnectionString %>" OnSelecting="SqlDataSource1_Selecting" SelectCommand="SELECT [Name], [Description], [Book_Image] FROM [Book] WHERE (([User_id] = @User_id) AND ([User_id] = @User_id2))">
                             <SelectParameters>
                                 <asp:SessionParameter Name="User_id" SessionField="{ Session[&quot;userId&quot;] }" Type="String" />
                                 <asp:SessionParameter Name="User_id2" SessionField="[&quot;userId&quot;] " Type="String" />
                             </SelectParameters>
                         </asp:SqlDataSource>
                        <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                            <Columns>
                                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                                <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                                <asp:BoundField DataField="Book_Image" HeaderText="Book_Image" SortExpression="Book_Image" />
                            </Columns>
                         </asp:GridView>--%>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
        </div>
                </div>
</asp:Content>
