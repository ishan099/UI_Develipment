<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="ManageUserGroups.aspx.cs" Inherits="SCMSWeb.ManageUserGroups" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
  <div class="col-md-6">
  <div class="panel">
    <div class="panel-heading">
        <h4>Create New User Group</h4> </div>
    <div class="panel-body">
    <!--  <form class="form-horizontal" role="form" > -->
    <div class="form-group">
      <label for="inputPassword3" class="col-sm-3 control-label"> </label>
    
  </div>
<div class="form-group">
      <label for="inputPassword3" class="col-sm-3 control-label">Group Details</label><div class="col-sm-9">
        <asp:GridView ID="DgvGroups" runat="server" CssClass="form-control"  AllowPaging="True" Width="400px" BackColor ="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" AutoGenerateColumns="False" OnSelectedIndexChanged="DgvGroups_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="GroupName" HeaderText="Group Name" >
                <HeaderStyle ForeColor="White" Width="140px" />
                </asp:BoundField>
                <asp:BoundField DataField="Description" HeaderText="Description">
                <HeaderStyle ForeColor="White" Width="120px" />
                </asp:BoundField>
                <asp:BoundField DataField="Username" HeaderText="User Name">
                <HeaderStyle Width="120px" />
                </asp:BoundField>
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
    <label for="inputPassword3" class="col-sm-3 control-label">User Group ID</label>
    <div class="col-sm-9">
      <p class="help-block">
          <asp:TextBox ID="TxtUserGroupID" runat="server" CssClass="form-control" Enabled="False" Width="250px"></asp:TextBox>
        </p>
    </div>
  </div>

   <div class="form-group">
    <label for="inputPassword3" class="col-sm-3 control-label">User Group Name</label>
    <div class="col-sm-9">
        <asp:TextBox ID="TxtUserGroup" runat="server" CssClass="form-control" Width="250px"></asp:TextBox> 
      <p class="help-block"></p>
    </div>
  </div>

          <div class="form-group">
    <label for="inputPassword3" class="col-sm-3 control-label"> Description</label>
    <div class="col-sm-9">
        <asp:TextBox ID="TxtDescription" runat="server" Width="250px" CssClass="form-control" ></asp:TextBox>
      <p class="help-block"></p>
    </div>
          <div class="form-group">
    <label for="inputPassword3" class="col-sm-3 control-label"> Distribution</label>
    <div class="col-sm-9">
      <p class="help-block">
          <asp:DropDownList ID="CboDistribution" runat="server" Width="250px" CssClass="form-control">
              <asp:ListItem>Auto</asp:ListItem>
              <asp:ListItem>Supervisor Assign</asp:ListItem>
          </asp:DropDownList>
        </p>
    </div>
  </div>


  </div>
  <div class="form-group">
    <div class="col-sm-offset-3 col-sm-9">
      <div class="checkbox">
        <label>
            <asp:CheckBox ID="ChkActive" runat="server" /> Active
        </label>
      </div>
      <p class="help-block"></p>
    </div>
  </div>
        <div class="form-group">
    <label for="inputPassword3" class="col-sm-3 control-label"> Assign Agents</label>
    <div class="col-sm-9">
      <p class="help-block">
          <asp:DropDownList ID="CboAgent" runat="server" Width="250px" CssClass="form-control" AutoPostBack="True">
          </asp:DropDownList>
        </p>
    </div>
  </div>

 <div class="form-group">
    <label for="inputPassword3" class="col-sm-3 control-label"></label>
    <div class="col-sm-9">
        <asp:Button ID="bntSave" runat="server" Text="Save" CssClass="bottom-right" Width="108px" OnClick="bntSave_Click"  />
        <asp:Button ID="BtnClear" runat="server" Text="Clear" CssClass="bottom-right" Width="108px" />
      <p class="help-block" dir="ltr">
        <asp:Label ID="LblMessage" runat="server" BackColor="#FFFF99" ForeColor="Red"></asp:Label>
        </p>
    </div>
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
