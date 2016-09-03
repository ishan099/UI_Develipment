<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SCMSWeb.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <link rel="stylesheet" href="Style/login-page/css/style.css" media="screen" type="text/css" />
    <title></title>
</head>
<body>
     <span href="#" class="button" id="toggle-login">Log in</span>
 <div id="login">
     
  <div id="triangle"></div>
  <h1>Log in</h1>
    <form id="form1" runat="server">
       
    <div>
    <!--<input type="email" placeholder="Email" />
    <input type="password" placeholder="Password" /> -->
    <asp:TextBox ID="txtUserName" runat="server" placeholder="Username"></asp:TextBox>
    <asp:TextBox ID="txtPassword" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
    <asp:Button ID="btnLogin" runat="server" Text="Log in" OnClick="btnLogin_Click" />
    <asp:Label ID="LblMessage" runat="server" ForeColor="Red"></asp:Label>
    </div>
    </form>       
 </div>

 <script src="Style/login-page/js/jquery.js"></script>
<script src="Style/login-page/js/index.js"></script>


   
</body>
</html>
