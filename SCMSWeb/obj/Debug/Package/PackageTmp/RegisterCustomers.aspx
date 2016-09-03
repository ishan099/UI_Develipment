<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="RegisterCustomers.aspx.cs" Inherits="SCMSWeb.RegisterCustomers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <div class="row">
  <div class="col-md-6">
  <div class="panel">
    <div class="panel-heading">
        <h4>Customer Registration</h4> </div>
    <div class="panel-body">
    <!--  <form class="form-horizontal" role="form" > -->


  <div class="form-group">
    <label for="inputEmail3" class="col-sm-3 control-label">Search Customer</label>
      
    <div class="col-sm-9">
        <p class="help-block">
          <asp:TextBox ID="TxtMainCatID0" runat="server" CssClass="form-control" Enabled="False" Width="250px">Enter Email or Phone number</asp:TextBox>
        <asp:Button ID="bntSave" runat="server" Text="Search" CssClass="bottom-right" Width="108px"  />
            </p>

    
      
       
    
      
    </div>
     
  </div>

        <asp:GridView ID="DgvMainCat" runat="server" CssClass="form-control"  AllowPaging="True" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
            <Columns>
                <asp:BoundField DataField="InteractionType" HeaderText="dd" />
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


  <div class="form-group">
    <label for="inputEmail3" class="col-sm-3 control-label">Customer ID</label>

    <div class="col-sm-9">
        <p class="help-block">
          <asp:TextBox ID="TxtMainCatID1" runat="server" CssClass="form-control" Enabled="False" Width="250px"></asp:TextBox>
        </p>

     
      
    </div>
     
  </div>
  <div class="form-group">
    <label for="inputEmail3" class="col-sm-3 control-label">Salutation</label>

    <div class="col-sm-9">
        <p class="help-block">
            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control"  Width="250px" >
                <asp:ListItem>Mr</asp:ListItem>
                <asp:ListItem>Miss</asp:ListItem>
                <asp:ListItem>Hon</asp:ListItem>
                <asp:ListItem>Ven</asp:ListItem>
                <asp:ListItem>Dr</asp:ListItem>
                <asp:ListItem>Ms</asp:ListItem>
                <asp:ListItem>Prof</asp:ListItem>
                <asp:ListItem>Mrs</asp:ListItem>
            </asp:DropDownList>
        </p>

     
      
    </div>
     
  </div>



  <div class="form-group">
    <label for="inputEmail3" class="col-sm-3 control-label">First Name</label>
    <div class="col-sm-9">
        <p class="help-block">
            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"  Width="250px"></asp:TextBox>
        </p>
    </div>
     
  </div>


  <div class="form-group">
    <label for="inputPassword3" class="col-sm-3 control-label">Second Name</label>
    <div class="col-sm-9">
      <p class="help-block">
          <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"  Width="250px"></asp:TextBox>

     
      
        </p>
    </div>
  </div>

   <div class="form-group">
    <label for="inputPassword3" class="col-sm-3 control-label">E mail</label>
    <div class="col-sm-9">
        <p class="help-block">
          <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"  Width="250px"></asp:TextBox>

     
      
     </p>
      
    </div>
  </div>

          <div class="form-group">
    <label for="inputPassword3" class="col-sm-3 control-label">Phone number</label>
    <div class="col-sm-9">
      <p class="help-block">
          <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control"  Width="250px"></asp:TextBox>

     
      
        </p>
    </div>

  </div>


          <div class="form-group">
    <label for="inputPassword3" class="col-sm-3 control-label">Mobile number</label>
    <div class="col-sm-9">
      <p class="help-block">
          <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control"  Width="250px"></asp:TextBox>

     
      
        </p>
    </div>

  </div>
          <div class="form-group">
    <label for="inputPassword3" class="col-sm-3 control-label">DOB</label>
    <div class="col-sm-9">
      <p class="help-block">
          <asp:Calendar ID="Calendar1" runat="server"  CssClass="form-control"></asp:Calendar>

     
      
        </p>
    </div>

  </div>

          <div class="form-group">
    <label for="inputPassword3" class="col-sm-3 control-label">Gender</label>
    <div class="col-sm-9">
      <p class="help-block">
            <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control"  Width="250px" >
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
            </asp:DropDownList>

     
      
        </p>
    </div>

  </div>

          <div class="form-group">
    <label for="inputPassword3" class="col-sm-3 control-label">Address</label>
    <div class="col-sm-9">
      <p class="help-block">
          <asp:TextBox ID="TextBox8" runat="server" CssClass="form-control"  Width="250px"></asp:TextBox>

     
      
        </p>
    </div>

  </div>

          <div class="form-group">
    <label for="inputPassword3" class="col-sm-3 control-label">NIC</label>
    <div class="col-sm-9">
      <p class="help-block">
          <asp:TextBox ID="TextBox9" runat="server" CssClass="form-control"  Width="250px"></asp:TextBox>

     
      
        </p>
    </div>

  </div>










  <div class="form-group">
    <div class="col-sm-offset-3 col-sm-9">
      
              
    </div>
  </div>

 <div class="form-group">
    <label for="inputPassword3" class="col-sm-3 control-label"></label>
    <div class="col-sm-9">
      <p class="help-block">
        <asp:Button ID="bntSave0" runat="server" Text="Clear" CssClass="bottom-right" Width="121px"  />
        <asp:Button ID="bntSave1" runat="server" Text="Save" CssClass="bottom-right" Width="108px"  />
        <asp:Label ID="LblMessage" runat="server" BackColor="#FFFF99" ForeColor="Red" Text="Err"></asp:Label>
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
