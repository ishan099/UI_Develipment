<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="adminDashboad.aspx.cs" Inherits="SCMSWeb.adminDashboad" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="admin-dashboad">

        <section id="team" class="bg-light-gray">
  <div class="container">
    <div class="row">
      <div class="col-lg-12 text-center">
        <h1 class="section-heading">DASHBOAD</h1>
        <div class="line"></div>
      </div>
    </div>
    <div class="row">
      <div class="col-sm-3">
        <div class="team-member"> 
           <a href="ManageMainCategory.aspx"><img src="Style/img/dashboadImage/mainCategory.png" class="img-responsive img-circle" alt=""> 
          <h4> Main Category</h4>
          <!--<p class="text-muted">Web Designer</p>
          <ul class="list-inline social-buttons">
            <li><a href="#"><i class="fa fa-twitter"></i></a> </li>
            <li><a href="#"><i class="fa fa-facebook"></i></a> </li>
            <li><a href="#"><i class="fa fa-linkedin"></i></a> </li>
          </ul> -->
        </div>
      </div>
      <div class="col-sm-3">
        <div class="team-member"><a href="ManageCategory.aspx"> <img src="Style/img/dashboadImage/Category.png" class="img-responsive img-circle" alt="">
          <h4>Category</h4>
          <!--<p class="text-muted">Graphic Designer</p>
          <ul class="list-inline social-buttons">
            <li><a href="#"><i class="fa fa-twitter"></i></a> </li>
            <li><a href="#"><i class="fa fa-facebook"></i></a> </li>
            <li><a href="#"><i class="fa fa-linkedin"></i></a> </li>
          </ul> -->
        </div>
      </div>
      <div class="col-sm-3">
        <div class="team-member"><a href="ManageSubCategory.aspx"><img src="Style/img/dashboadImage/subCategory.png" class="img-responsive img-circle" alt="">
          <h4>Sub Category</h4>
          <!--<p class="text-muted">Lead Developer</p>
          <ul class="list-inline social-buttons">
            <li><a href="#"><i class="fa fa-twitter"></i></a> </li>
            <li><a href="#"><i class="fa fa-facebook"></i></a> </li>
            <li><a href="#"><i class="fa fa-linkedin"></i></a> </li>
          </ul> -->
        </div>
      </div>
      <div class="col-sm-3">
        <div class="team-member"> <a href="ManageUser.aspx"><img src="Style/img/dashboadImage/User.png" class="img-responsive img-circle" alt="">
          <h4>User Creation</h4>
          <!--<p class="text-muted">Web Developer</p>
          <ul class="list-inline social-buttons">
            <li><a href="#"><i class="fa fa-twitter"></i></a> </li>
            <li><a href="#"><i class="fa fa-facebook"></i></a> </li>
            <li><a href="#"><i class="fa fa-linkedin"></i></a> </li>
          </ul> -->
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-sm-3">
        <div class="team-member"> 
           <a href="ManageUserGroups.aspx"><img src="Style/img/dashboadImage/UserCreation.png" class="img-responsive img-circle" alt=""> 
          <h4> User Group Creation</h4>
          <!--<p class="text-muted">Web Designer</p>
          <ul class="list-inline social-buttons">
            <li><a href="#"><i class="fa fa-twitter"></i></a> </li>
            <li><a href="#"><i class="fa fa-facebook"></i></a> </li>
            <li><a href="#"><i class="fa fa-linkedin"></i></a> </li>
          </ul> -->
        </div>
      </div>
      <div class="col-sm-3">
        <div class="team-member"> <a href="RegisterCustomers.aspx"> <img src="Style/img/dashboadImage/customer.png" class="img-responsive img-circle" alt="">
          <h4>Customer Registration</h4>
          <!--<p class="text-muted">Graphic Designer</p>
          <ul class="list-inline social-buttons">
            <li><a href="#"><i class="fa fa-twitter"></i></a> </li>
            <li><a href="#"><i class="fa fa-facebook"></i></a> </li>
            <li><a href="#"><i class="fa fa-linkedin"></i></a> </li>
          </ul> -->
        </div>
      </div>
      <div class="col-sm-3">
        <div class="team-member"><a href="RegisterCustomers.aspx"><a href="ManageIntractions.aspx"> <img src="Style/img/dashboadImage/customer-service.png" class="img-responsive img-circle" alt="">
          <h4>Create Interaction</h4>
          <!--<p class="text-muted">Graphic Designer</p>
          <ul class="list-inline social-buttons">
            <li><a href="#"><i class="fa fa-twitter"></i></a> </li>
            <li><a href="#"><i class="fa fa-facebook"></i></a> </li>
            <li><a href="#"><i class="fa fa-linkedin"></i></a> </li>
          </ul> -->
        </div>
      </div>
      <div class="col-sm-3">
        <div class="team-member"><a href="ManageTasks.aspx"> <img src="Style/img/dashboadImage/inbox.png" class="img-responsive img-circle" alt="">
          <h4>Task Inbox</h4>
          <!--<p class="text-muted">Graphic Designer</p>
          <ul class="list-inline social-buttons">
            <li><a href="#"><i class="fa fa-twitter"></i></a> </li>
            <li><a href="#"><i class="fa fa-facebook"></i></a> </li>
            <li><a href="#"><i class="fa fa-linkedin"></i></a> </li>
          </ul> -->
        </div>
      </div>
    </div>
    <!--<div class="row">
      <div class="col-lg-8 col-lg-offset-2 text-center">
        <p class="large text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aut eaque, laboriosam veritatis, quos non quis ad perspiciatis, totam corporis ea, alias ut unde.</p>
      </div>
    </div> -->

  </div>
</section>
    </div>
   
    </a>
   
</asp:Content>
