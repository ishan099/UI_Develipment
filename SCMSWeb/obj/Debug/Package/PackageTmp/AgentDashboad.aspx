<%@ Page Title="" Language="C#" MasterPageFile="~/Agent.Master" AutoEventWireup="true" CodeBehind="agentDashboad.aspx.cs" Inherits="SCMSWeb.agentDashboad" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
     <div id="Agent-dashboad">

        <section id="team" class="bg-light-gray">
  <div class="container">
    <div class="row">
      <div class="col-lg-12 text-center">
        <h2 class="section-heading">DASHBOAD</h2>
        <div class="line"></div>
      </div>
    </div>
   
      
      <div class="col-sm-3">
        <div class="team-member"><a href="RegisterCustomers.aspx"><img src="Style/img/dashboadImage/customer.png" class="img-responsive img-circle" alt="">
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
        <div class="team-member"><a href="ManageIntractions.aspx"><img src="Style/img/dashboadImage/customer-service.png" class="img-responsive img-circle" alt="">
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
        <div class="team-member"><a href="ManageTasks.aspx"><img src="Style/img/dashboadImage/inbox.png" class="img-responsive img-circle" alt="">
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
