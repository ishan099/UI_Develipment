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
                            <a href="ManageCategory.aspx">&nbsp;
                        </div>
                    </div>

                    <div class="col-sm-3">
                    </div>
                </div>
                <div class="row">


                    <div class="col-sm-3">
                        
                    </div>
                    <div class="col-sm-3">
                        <div class="team-member">
                            <a href="ManageTasks.aspx">
                                <i class="fa fa-inbox inbox-icon-lg"></i>
                                <h4>Order Inbox</h4>
                        </div>
                    </div>
                </div>


            </div>
        </section>
    </div>

    </a>
   
</asp:Content>
