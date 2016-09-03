<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="ManageTasks.aspx.cs" Inherits="SCMSWeb.ManageTasks" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
  <div class="col-md-6">
  <div class="panel">
    <div class="panel-heading">
        <h4>&nbsp;ORDER Inbox</h4> </div>
    <div class="panel-body">
    <!--  <form class="form-horizontal" role="form" > -->

        <div class="form-group">
    <label for="inputPassword3" class="col-sm-3 control-label"></label>
    <div class="col-sm-9">
        <asp:Button ID="BtnRefresh" runat="server" Text="Refresh" CssClass="bottom-right" Width="108px" OnClick="BtnRefresh_Click"  />
    </div>
  </div>
<div class="form-group">
      <label for="inputPassword3" class="col-sm-3 control-label"> </label>
    <div class="col-sm-9">
        <asp:GridView ID="DgvTask" runat="server" CssClass="form-control"  AllowPaging="True" Width="698px"
             BackColor ="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" AutoGenerateColumns="False"  Height="16px" PageSize="100" >
            <Columns>
<asp:BoundField DataField="Sender" HeaderText="Customer">
                <HeaderStyle Width="150px" />
</asp:BoundField>
                <asp:BoundField DataField="Message" HeaderText="Message">
                <HeaderStyle ForeColor="White" Width="300px" />
                </asp:BoundField>
                <asp:BoundField DataField="ReceivedDate" HeaderText="Order Date" >
                <HeaderStyle Width="180px" />
                </asp:BoundField>
                <asp:CommandField ShowSelectButton="True" >
                <HeaderStyle Width="90px" />
                </asp:CommandField>
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <RowStyle BackColor="White" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
           
        </asp:GridView>
      <p class="help-block"></p>
    </div>
  </div>

        <div class="form-group">
     
  </div>

        <div class="form-group">
    &nbsp;</div>


  <div class="form-group">
    &nbsp;</div>


  <div class="form-group">
    &nbsp;</div>

   <div class="form-group">
    &nbsp;</div>

        <div class="form-group">
    &nbsp;</div>

 <div class="form-group">
  </div>

           <div class="form-group">
  </div>



    </div>
  </div>
</div>
  </div>
</asp:Content>
