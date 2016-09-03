<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="ManageTasks.aspx.cs" Inherits="SCMSWeb.ManageTasks" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
  <div class="col-md-6">
  <div class="panel">
    <div class="panel-heading">
        <h4>Task Inbox</h4> </div>
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
        <asp:GridView ID="DgvTask" runat="server" CssClass="form-control"  AllowPaging="True" Width="850px" BackColor ="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" AutoGenerateColumns="False" OnSelectedIndexChanged="DgvTask_SelectedIndexChanged" >
            <Columns>
<asp:BoundField DataField="CustomerID" HeaderText="Cust Code">
                <HeaderStyle Width="100px" />
</asp:BoundField>
                <asp:BoundField DataField="FirstName" HeaderText="Customer Name" >
                <HeaderStyle Height="100px" />
                </asp:BoundField>
                <asp:BoundField DataField="InteractionID" HeaderText="Interaction ID">
                <HeaderStyle ForeColor="White" Width="120px" />
                <HeaderStyle ForeColor="White" Width="120px" />
                </asp:BoundField>
                <asp:BoundField DataField="InteractionType" HeaderText="Interaction Type" >
                <HeaderStyle Width="120px" />
                </asp:BoundField>
                <asp:BoundField DataField="CreatedDate" HeaderText="Created Date" >
                <HeaderStyle Width="120px" />
                </asp:BoundField>
                <asp:BoundField DataField="Type" HeaderText="Main Category" />
                <asp:BoundField DataField="Category" HeaderText="Category" />
                <asp:BoundField DataField="SubCategory" HeaderText="Sub Category" />
                <asp:BoundField DataField="GroupName" HeaderText="Assign Group" />
                <asp:BoundField DataField="Status" HeaderText="Status" />
                <asp:CommandField ShowSelectButton="True" />
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
    <label for="inputEmail3" class="col-sm-3 control-label">Email ID</label>
      
    <div class="col-sm-9">
        <p class="help-block">
          <asp:TextBox ID="TxtEmailID" runat="server" CssClass="form-control" Enabled="False" Width="250px"></asp:TextBox>
            </p>

    
      
    </div>
     
  </div>


  <div class="form-group">
    <label for="inputEmail3" class="col-sm-3 control-label">Phone Number</label>

    <div class="col-sm-9">
        <p class="help-block">
          <asp:TextBox ID="TxthoneNumber" runat="server" CssClass="form-control" Enabled="False" Width="250px"></asp:TextBox>
        </p>

     
      
    </div>
     
  </div>
        <div class="form-group">
    <label for="inputEmail3" class="col-sm-3 control-label">Customer ID</label>

    <div class="col-sm-9">
        <p class="help-block">
          <asp:TextBox ID="TxtCusID" runat="server" CssClass="form-control" Enabled="False" Width="250px"></asp:TextBox>
        </p>

     
      
    </div>
     
  </div>
        <div class="form-group">
    <label for="inputEmail3" class="col-sm-3 control-label">Customer Name</label>

    <div class="col-sm-9">
        <p class="help-block">
          <asp:TextBox ID="TxtCusName" runat="server" CssClass="form-control" Enabled="False" Width="250px"></asp:TextBox>
        </p>

     
      
    </div>
     
  </div>

        <div class="form-group">
    <label for="inputEmail3" class="col-sm-3 control-label">Intraction ID</label>

    <div class="col-sm-9">
        <p class="help-block">
          <asp:TextBox ID="TxtIntractionID" runat="server" CssClass="form-control" Enabled="False" Width="250px"></asp:TextBox>
        </p>

     
      
    </div>
     
  </div>


  <div class="form-group">
    <label for="inputEmail3" class="col-sm-3 control-label">Interaction type</label>
    <div class="col-sm-9">
        <p class="help-block">
        <asp:DropDownList ID="CboType" runat="server" CssClass="form-control left" Width="250px" AutoPostBack="True" OnSelectedIndexChanged="CboType_SelectedIndexChanged" >
            <asp:ListItem Value="1">Activity</asp:ListItem>
            <asp:ListItem Value="2">Complain</asp:ListItem>
            <asp:ListItem Value="3">Inquery</asp:ListItem>
        </asp:DropDownList>
        </p>
    </div>
     
  </div>


  <div class="form-group">
    <label for="inputPassword3" class="col-sm-3 control-label">Main category</label>
    <div class="col-sm-9">
      <p class="help-block">
        <asp:DropDownList ID="CboMainCat" runat="server" CssClass="form-control left" Width="250px" AutoPostBack="True" OnSelectedIndexChanged="CboMainCat_SelectedIndexChanged" >
        </asp:DropDownList>

     
      
        </p>
    </div>
  </div>

   <div class="form-group">
    <label for="inputPassword3" class="col-sm-3 control-label">Category</label>
    <div class="col-sm-9">
        <p class="help-block">
        <asp:DropDownList ID="CboCat" runat="server" CssClass="form-control left" Width="250px" AutoPostBack="True" OnSelectedIndexChanged="CboCat_SelectedIndexChanged" >
        </asp:DropDownList>

     </p>
      
    </div>
  </div>

          <div class="form-group">
    <label for="inputPassword3" class="col-sm-3 control-label">Sub Category</label>
    <div class="col-sm-9">
      <p class="help-block">
        <asp:DropDownList ID="CboSubCat" runat="server" CssClass="form-control left" Width="250px" AutoPostBack="True" OnSelectedIndexChanged="CboSubCat_SelectedIndexChanged" >
        </asp:DropDownList>

     
      
        </p>
    </div>

              
  </div>

        <div class="form-group">
    <label for="inputPassword3" class="col-sm-3 control-label">Assigned Group</label>
    <div class="col-sm-9">
      <p class="help-block">
        <asp:DropDownList ID="CboUserGrp" runat="server" CssClass="form-control left" Width="250px" AutoPostBack="True" OnSelectedIndexChanged="CboUserGrp_SelectedIndexChanged" >
        </asp:DropDownList>

     
      
        </p>
    </div>

              
  </div>

        <div class="form-group">
    <label for="inputPassword3" class="col-sm-3 control-label">Status</label>
    <div class="col-sm-9">
      <p class="help-block">
        <asp:DropDownList ID="CboStatus" runat="server" CssClass="form-control left" Width="250px" AutoPostBack="True" >
            <asp:ListItem>Open</asp:ListItem>
            <asp:ListItem>Closed</asp:ListItem>
            <asp:ListItem>Inprograss</asp:ListItem>
        </asp:DropDownList>

     
      
        </p>
    </div>

              
  </div>

        <div class="form-group">
    <div class="col-sm-offset-3 col-sm-9">
      <div class="checkbox">
        <label>
            <asp:CheckBox ID="ChkReassign" runat="server" /> Reassign
        </label>
      </div>
      <p class="help-block"></p>
    </div>
  </div>

        <div class="form-group">
    <label for="inputEmail3" class="col-sm-3 control-label">Message</label>

    <div class="col-sm-9">
        <p class="help-block">
          <asp:TextBox ID="TxtMessage" runat="server" CssClass="form-control" Enabled="False" Width="250px"></asp:TextBox>
        </p>

     
      
    </div>
     
  </div>

        <div class="form-group">
    <label for="inputEmail3" class="col-sm-3 control-label">Agent Comment</label>

    <div class="col-sm-9">
        <p class="help-block">
          <asp:TextBox ID="TxtAgentComment" runat="server" CssClass="form-control" Width="250px"></asp:TextBox>
        </p>

     
      
    </div>
     
  </div>

        <div class="form-group">
    <label for="inputPassword3" class="col-sm-3 control-label"></label>
    <div class="col-sm-9">
        <asp:Button ID="bntSave" runat="server" Text="Save" CssClass="bottom-right" Width="108px" OnClick="bntSave_Click"  />
        <asp:Button ID="BtnClear" runat="server" Text="Clear" CssClass="bottom-right" Width="108px" OnClick="BtnClear_Click" />
      <p class="help-block">
        <asp:Label ID="LblMessage" runat="server" BackColor="#FFFF99" ForeColor="Red"></asp:Label>
        </p>
    </div>
  </div>

  <div class="form-group">
    <div class="col-sm-offset-3 col-sm-9">
      
      <p class="help-block">
          &nbsp;</p>
    </div>
  </div>

 <div class="form-group">
  </div>

           <div class="form-group">
    <label for="inputPassword3" class="col-sm-3 control-label"></label>
    <div class="col-sm-9">
      <p class="help-block"></p>
    </div>
  </div>


  

 
<!--</form> -->


    </div>
  </div>
</div>
  </div>
</asp:Content>
