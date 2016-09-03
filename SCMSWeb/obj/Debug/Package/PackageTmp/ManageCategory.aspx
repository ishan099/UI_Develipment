<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true"  CodeBehind="ManageCategory.aspx.cs" Inherits="SCMSWeb.frmCreateNewCategory"  %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

  <div class="row">
  <div class="col-md-6">
  <div class="panel">
    <div class="panel-heading">
        <h4>Manage  Category</h4> </div>
    <div class="panel-body">
    <!--  <form class="form-horizontal" role="form" > -->
  <div class="form-group">
    <label for="inputEmail3" class="col-sm-3 control-label">Interaction type</label>
    <div class="col-sm-9">
     
      
        <asp:DropDownList ID="CboType" runat="server" CssClass="form-control left" Width="200px" OnSelectedIndexChanged="CboMainType_SelectedIndexChanged" AutoPostBack="True" >
            <asp:ListItem Value="1">Activity</asp:ListItem>
            <asp:ListItem Value="2">Complain</asp:ListItem>
            <asp:ListItem Value="3">Inquery</asp:ListItem>
        </asp:DropDownList>
      
        <div class="clearfix">
        </div>
      

       <p class="help-block"></p>
    </div>
     
  </div>

  <div class="form-group">
    <label for="inputPassword3" class="col-sm-3 control-label">Main category</label>
    <div class="col-sm-9">
     <asp:DropDownList ID="CboMainCategory" runat="server" CssClass="form-control" Width="200px" AutoPostBack="True"></asp:DropDownList>
      <p class="help-block">
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="View" />
        </p>
    </div>
  </div>

  

      <div class="form-group">
      <label for="inputPassword3" class="col-sm-3 control-label"> </label>
    <div class="col-sm-9">
        <asp:GridView ID="DgvMainCat" runat="server" CssClass="form-control"  AllowPaging="True" Width="390px" BackColor ="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" AutoGenerateColumns="False" OnSelectedIndexChanged="DgvMainCat_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="InteractionType" HeaderText="InteractionType" >
                <HeaderStyle ForeColor="White" Width="120px" />
                </asp:BoundField>
                <asp:BoundField DataField="Type" HeaderText="Main Category">
                <HeaderStyle ForeColor="White" Width="120px" />
                </asp:BoundField>
                <asp:BoundField DataField="Category" HeaderText="Category" />
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
    <label for="inputPassword3" class="col-sm-3 control-label"> Category ID</label>
    <div class="col-sm-9">
      <p class="help-block">
        <asp:TextBox ID="TxtCatId" runat="server" Width="200px" CssClass="form-control" Enabled="False" ></asp:TextBox>
        </p>
    </div>
  </div>
        <div class="form-group">
    <label for="inputPassword3" class="col-sm-3 control-label"> Category</label>
    <div class="col-sm-9">
      <p class="help-block">
        <asp:TextBox ID="TxtCategory" runat="server" Width="200px" CssClass="form-control" ></asp:TextBox>
        </p>
    </div>
  </div>

          <div class="form-group">
    <label for="inputPassword3" class="col-sm-3 control-label"> Description</label>
    <div class="col-sm-9">
        <asp:TextBox ID="TxtDescription" runat="server" Width="200px" CssClass="form-control" ></asp:TextBox>
      <p class="help-block"></p>
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
    <label for="inputPassword3" class="col-sm-3 control-label"></label>
    <div class="col-sm-9">
        <asp:Button ID="bntSave" runat="server" Text="Save" CssClass="bottom-right" Width="108px" OnClick="bntSave_Click" />
        <asp:Button ID="BtnClear" runat="server" Text="Clear" CssClass="bottom-right" Width="108px" OnClick="BtnClear_Click" />
      <p class="help-block">
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
