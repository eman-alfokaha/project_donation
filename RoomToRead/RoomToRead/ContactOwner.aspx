﻿<%@ Page Title="" Language="C#"  AutoEventWireup="true" CodeBehind="ContactOwner.aspx.cs" Inherits="RoomToRead.ContactOwner" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet">

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js"></script>



    <title></title>
    <style>
        body {
    font-family: "Nunito", sans-serif;
    background: #15af7357!important;
    color: #2e6c8e;
    text-align: center;
    font-weight: 900;
}
        @import url("https://fonts.googleapis.com/css?family=Nunito:400,900");
body .progress_inner #step-1:checked + input + input + input + input + div + div + div + div > .box_base, body .progress_inner #step-5:checked + div + div + div + div > .box_base, body .progress_inner #step-4:checked + input + div + div + div + div > .box_base, body .progress_inner #step-3:checked + input + input + div + div + div + div > .box_base, body .progress_inner #step-2:checked + input + input + input + div + div + div + div > .box_base {
  top: 50%;
  left: 0px;
  opacity: 1;
}
body .progress_inner #step-1:checked + input + input + input + input + div + div + div + div > .box_item, body .progress_inner #step-5:checked + div + div + div + div > .box_item, body .progress_inner #step-4:checked + input + div + div + div + div > .box_item, body .progress_inner #step-3:checked + input + input + div + div + div + div > .box_item, body .progress_inner #step-2:checked + input + input + input + div + div + div + div > .box_item {
  top: -30px;
  left: 0px;
  opacity: 0;
}

body .progress_inner #step-2:checked + input + input + input + div + div + div + div > .box_lid, body .progress_inner #step-5:checked + div + div + div + div > .box_lid, body .progress_inner #step-4:checked + input + div + div + div + div > .box_lid {
  top: -20px;
  left: 0px;
  opacity: 0;
}
body .progress_inner #step-2:checked + input + input + input + div + div + div + div > .box_item, body .progress_inner #step-5:checked + div + div + div + div > .box_item, body .progress_inner #step-4:checked + input + div + div + div + div > .box_item {
  top: -10px;
  left: 0px;
  opacity: 1;
}

body .progress_inner #step-3:checked + input + input + div + div + div + div > .box_item, body .progress_inner #step-5:checked + div + div + div + div > .box_item, body .progress_inner #step-4:checked + input + div + div + div + div > .box_item {
  top: 10px;
  left: 0px;
  opacity: 1;
}
body .progress_inner #step-3:checked + input + input + div + div + div + div > .box_lid, body .progress_inner #step-5:checked + div + div + div + div > .box_lid, body .progress_inner #step-4:checked + input + div + div + div + div > .box_lid {
  top: -1px;
  left: 0px;
  opacity: 1;
}
body .progress_inner #step-3:checked + input + input + div + div + div + div > .box_ribbon, body .progress_inner #step-5:checked + div + div + div + div > .box_ribbon, body .progress_inner #step-4:checked + input + div + div + div + div > .box_ribbon {
  top: 70%;
  left: 0px;
  opacity: 0;
}
body .progress_inner #step-3:checked + input + input + div + div + div + div > .box_bow, body .progress_inner #step-5:checked + div + div + div + div > .box_bow, body .progress_inner #step-4:checked + input + div + div + div + div > .box_bow {
  top: 0px;
  left: 0px;
  opacity: 0;
}

body .progress_inner #step-4:checked + input + div + div + div + div > .box_ribbon, body .progress_inner #step-5:checked + div + div + div + div > .box_ribbon {
  top: 50%;
  left: 0px;
  opacity: 1;
}
body .progress_inner #step-4:checked + input + div + div + div + div > .box_bow, body .progress_inner #step-5:checked + div + div + div + div > .box_bow {
  top: -10px;
  left: 0px;
  opacity: 1;
}

body .progress_inner #step-5:checked + div + div + div + div > .box_tag {
  top: 10px;
  left: 20px;
  opacity: 1;
}
body .progress_inner #step-5:checked + div + div + div + div > .box_string {
  top: 10px;
  left: 20px;
  opacity: 1;
}

* {
  box-sizing: border-box;
}

body .progress_inner__status .box_string, body .progress_inner__status .box_tag, body .progress_inner__status .box_bow__right, body .progress_inner__status .box_bow__left, body .progress_inner__status .box_bow, body .progress_inner__status .box_ribbon, body .progress_inner__status .box_item, body .progress_inner__status .box_base, body .progress_inner, body .progress_inner__step:before {
  position: absolute;
  left: 0;
  right: 0;
  top: 50%;
  transform: translateY(-50%);
  margin: auto;
}

body .progress_inner__bar--set, body .progress_inner__bar {
  height: 6px;
  left: 10%;
  background: repeating-linear-gradient(45deg, #1ea4ec, #1ea4ec 4px, #1f8bc5 4px, #1f8bc5 10px);
  transition: width 800ms cubic-bezier(0.915, 0.015, 0.3, 1.005);
  border-radius: 6px;
  width: 0;
  position: relative;
  z-index: -1;
}

body .progress_inner__step:before {
  width: 30px;
  height: 30px;
  color: #70afd0;
  background: white;
  line-height: 30px;
  border: 3px solid #a6cde2;
  font-size: 12px;
  top: 3px;
  border-radius: 100%;
  transition: all 0.4s;
  cursor: pointer;
  pointer-events: none;
}

body .progress_inner__step {
  width: 20%;
  font-size: 14px;
  padding: 0 10px;
  transition: all 0.4s;
  float: left;
  text-align: center;
  position: relative;
}
body .progress_inner__step label {
  padding-top: 50px;
  top: -20px;
  display: block;
  position: relative;
  cursor: pointer;
}
body .progress_inner__step:hover {
  color: white;
}
body .progress_inner__step:hover:before {
  color: white;
  background: #1ea4ec;
}

body {
  font-family: "Nunito", sans-serif;
  background: #a6cde2;
  color: #2e6c8e;
  text-align: center;
  font-weight: 900;
}
body .progress_inner {
  height: 200px;
  width: 700px;
}
body .progress_inner #step-5:checked + div {
  width: 80%;
}
body .progress_inner #step-5:checked + div + div + div > .tab:nth-of-type(5) {
  opacity: 1;
  top: 0;
}
body .progress_inner #step-5:checked + div + div + div + div {
  right: 10%;
}
body .progress_inner #step-4:checked + input + div {
  width: 60%;
}
body .progress_inner #step-4:checked + input + div + div + div > .tab:nth-of-type(4) {
  opacity: 1;
  top: 0;
}
body .progress_inner #step-4:checked + input + div + div + div + div {
  right: 30%;
}
body .progress_inner #step-3:checked + input + input + div {
  width: 40%;
}
body .progress_inner #step-3:checked + input + input + div + div + div > .tab:nth-of-type(3) {
  opacity: 1;
  top: 0;
}
body .progress_inner #step-3:checked + input + input + div + div + div + div {
  right: 50%;
}
body .progress_inner #step-2:checked + input + input + input + div {
  width: 20%;
}
body .progress_inner #step-2:checked + input + input + input + div + div + div > .tab:nth-of-type(2) {
  opacity: 1;
  top: 0;
}
body .progress_inner #step-2:checked + input + input + input + div + div + div + div {
  right: 70%;
}
body .progress_inner #step-1:checked + input + input + input + input + div {
  width: 0%;
}
body .progress_inner #step-1:checked + input + input + input + input + div + div + div > .tab:nth-of-type(1) {
  opacity: 1;
  top: 0;
}
body .progress_inner #step-1:checked + input + input + input + input + div + div + div + div {
  right: 90%;
}
body .progress_inner__step:nth-of-type(1):before {
  content: "1";
}
body .progress_inner__step:nth-of-type(2):before {
  content: "2";
}
body .progress_inner__step:nth-of-type(3):before {
  content: "3";
}
body .progress_inner__step:nth-of-type(4):before {
  content: "4";
}
body .progress_inner__step:nth-of-type(5):before {
  content: "5";
}
body .progress_inner__bar--set {
  width: 80%;
  top: -6px;
  background: #70afd0;
  position: relative;
  z-index: -2;
}
body .progress_inner__tabs .tab {
  opacity: 0;
  position: absolute;
  top: 40px;
  text-align: center;
  margin-top: 80px;
  box-shadow: 0px 2px 1px #80b7d5;
  padding: 30px;
  background: white;
  border-radius: 10px;
  transition: all 0.2s;
}
body .progress_inner__tabs .tab h1 {
  margin: 0;
}
body .progress_inner__tabs .tab p {
  font-weight: 400;
  opacity: 0.8;
}
body .progress_inner__status {
  width: 40px;
  height: 40px;
  top: -80px;
  transition: right 800ms cubic-bezier(0.915, 0.015, 0.3, 1.005);
  transform: translateX(50%);
  position: absolute;
}
body .progress_inner__status div {
  opacity: 0;
  transition: all 600ms cubic-bezier(0.915, 0.015, 0.3, 1.005);
  transition-delay: 300ms;
}
body .progress_inner__status div {
  position: absolute;
}
body .progress_inner__status .box_base {
  background: repeating-linear-gradient(45deg, #986c5d, #986c5d 2px, #775144 2px, #775144 4px);
  width: 36px;
  height: 40px;
  z-index: 1;
  border-radius: 1px;
}
body .progress_inner__status .box_lid {
  width: 40px;
  height: 13.3333333333px;
  background: #775144;
  z-index: 2;
  border-radius: 1px;
  top: 0;
}
body .progress_inner__status .box_item {
  width: 20px;
  height: 20px;
  background: #be69d2;
  z-index: 0;
  border-radius: 4px;
  transform: rotate(45deg);
}
body .progress_inner__status .box_ribbon {
  width: 10px;
  height: 42px;
  background: #ee0f29;
  z-index: 4;
  border-radius: 1px;
}
body .progress_inner__status .box_bow__right, body .progress_inner__status .box_bow__left {
  width: 6px;
  height: 10px;
  background: #be0c21;
  position: absolute;
  z-index: 3;
  opacity: 1;
  border-radius: 1px;
}
body .progress_inner__status .box_bow {
  top: -6px;
  z-index: 1;
  transition-delay: 500ms;
}
body .progress_inner__status .box_bow__left {
  left: 6px;
  transform: rotate(45deg);
}
body .progress_inner__status .box_bow__right {
  left: -4px;
  transform: rotate(-45deg);
}
body .progress_inner__status .box_tag {
  width: 20px;
  height: 10px;
  background: #487ac7;
  z-index: 4;
  transform: rotate(-10deg) translateX(-40px) translateY(0px);
  border-radius: 2px;
  transition-delay: 500ms;
}
body .progress_inner__status .box_string {
  width: 17px;
  height: 2px;
  background: #343434;
  z-index: 4;
  transform: rotate(-39deg) translateX(-22px) translateY(-12px);
}
body .progress_inner input[type=radio] {
  display: none;
}
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
       
             <nav class="navbar navbar-expand-lg navlinks" style="background-color:#45B08E">
<div class="container-fluid">
  <a class="navbar-brand" href="Home.aspx"><img style="width:50px; height:50px" src="Images/Navlogo.png" /></a>
  <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
 <span class="text-white me-4" style="font-size:medium"> Room To Read</span>
  <div class=" collapse navbar-collapse" id="navbarNavDropdown">
    <ul class="navbar-nav ms-auto ">
      <li class="nav-item">
        <a class="nav-link mx-2 active" aria-current="page" href="Home.aspx" style="color:white;font-size:medium">Home</a>
      </li>
      <li class="nav-item">
        <a class="nav-link mx-2" href="#" style="color:white;font-size:medium">Category</a>
      </li>
    
          <li class="nav-item"><a class="nav-link mx-2" href="AboutUs.aspx" style="color:white;font-size:medium">About Us</a></li>
          <li class="nav-item"><a class="nav-link mx-2" href="#"style="color:white;font-size:medium">Contact us</a></li>
            <li class="nav-item">
        <a class="nav-link mx-2" id="LogIn" runat="server" href="LoginPage.aspx" style="color:white;font-size:medium">Login</a>
      </li>
        <li class="nav-item">
            <a Visible="false" id="UserProfile" runat="server" class="nav-link mx-2" href="UserProfile.aspx" style="color:white;font-size:medium">Profile</a>

        </li>
         <li class="nav-item">
           <asp:LinkButton Visible="false" class="nav-link mx-2" ID="LogOut"  runat="server" style="color:white;font-weight:bold">Logout</asp:LinkButton>
      </li>
        
    </ul>
  </div>
</div>
</nav>





            <div class='progress' style="margin-top:-22px">
  <div class='progress_inner'>
    <div class='progress_inner__step'>
      <label for='step-1'>Start order</label>
    </div>
    <div class='progress_inner__step'>
      <label for='step-2'>Confirmation
</label>
    </div>
    <div class='progress_inner__step'>
      <label for='step-3'>Book owner information</label>
    </div>
    <div class='progress_inner__step'>
      <label for='step-4'>communication</label>
    </div>
    <div class='progress_inner__step'>
      <label for='step-5'>Enjoy</label>
    </div>
    <input checked='checked' id='step-1' name='step' type='radio'>
    <input id='step-2' name='step' type='radio'>
    <input id='step-3' name='step' type='radio'>
    <input id='step-4' name='step' type='radio'>
    <input id='step-5' name='step' type='radio'>
    <div class='progress_inner__bar'></div>
    <div class='progress_inner__bar--set'></div>
    <div class='progress_inner__tabs'>
      <div class='tab tab-0'>
        <h1>Start order</h1>
        <p>Follow these steps to get your book </p>
      </div>
      <div class='tab tab-1'>
        <h1>Confirmation </h1>
        <p>Is this the book you would like to have ?</p>
       <%--  <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />--%>
 <div class="card mb-3">
  <img runat="server" id="bookImage" style="height:300px; width:400px"  src="..." class="card-img-top" alt="...">
  <div class="card-body">
    <h5 runat="server" id="BookTitle" class="card-title"></h5>
  </div>

</div>
      </div>
       
      <div class='tab tab-2'>
       

           <div class="profile">
     
  <header class="header">
    <div class="details">
      <img runat="server" style="height:200px; width:200px" id="ownerImage" src="https://images.unsplash.com/photo-1517365830460-955ce3ccd263?ixlib=rb-0.3.5&q=85&fm=jpg&crop=entropy&cs=srgb&ixid=eyJhcHBfaWQiOjE0NTg5fQ&s=b38c22a46932485790a3f52c61fcbe5a" alt="John Doe" class="profile-pic">
      <h1 class="heading" runat="server" id="ownerName">Claire Doe</h1>
      <div class="location">
        <svg width="18" height="18" viewBox="0 0 24 24" fill="currentColor">
  <path d="M12,11.5A2.5,2.5 0 0,1 9.5,9A2.5,2.5 0 0,1 12,6.5A2.5,2.5 0 0,1 14.5,9A2.5,2.5 0 0,1 12,11.5M12,2A7,7 0 0,0 5,9C5,14.25 12,22 12,22C12,22 19,14.25 19,9A7,7 0 0,0 12 ,2Z"></path>
</svg>
        <p runat="server" id="Location">Kochi, India</p>
      </div>
      <div class="stats" style="margin:10px 0">
        <div class="col-4">
              <p >Email</p>
          <span style="font-size:14px" runat="server" id="email"></span>
        
        </div>
        <div class="col-4">
               <p>Phone</p>
          <span style="font-size:14px"  runat="server" id="Phone"></span>
       
        </div>
      </div>
    </div>

  </header>
</div>
       </div>
      <div class='tab tab-3'>
        <h1>Contact the owner of the book to get it
</h1>

         </div>
      <div class='tab tab-4'>
        <h3>- The more that you read, the more things you will know. The more that you learn, the more places you’ll go.</h3>
          </div>
    </div>
    <div class='progress_inner__status'>
      <div class='box_base'></div>
      <div class='box_lid'></div>
      <div class='box_ribbon'></div>
      <div class='box_bow'>
        <div class='box_bow__left'></div>
        <div class='box_bow__right'></div>
      </div>
      <div class='box_item'></div>
      <div class='box_tag'></div>
      <div class='box_string'></div>
    </div>
  </div>
</div>
        </div>




    </form>
</body>
</html>
