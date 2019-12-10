<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
	<meta name="description" content="">
	<meta name="author" content="">
	<title>Registration</title>
	<link rel="stylesheet" href="assets/styles/style.min.css">
	<link rel="stylesheet" href="assets/plugin/waves/waves.min.css">
</head>
<body>
<div id="single-wrapper">
	<form action="#" class="frm-single" name="form1" runat="server">
		<div class="inside">
			<div class="title"><strong>Telephone</strong> Directory</div>
			<div class="frm-title">Register</div>
			<div class="frm-input">
              <div class="frm-input"><asp:TextBox ID="firstname"  placeholder="First Name" runat="server" class="frm-inp"></asp:TextBox><i class="fa fa-user frm-ico"></i></div>
			<div class="frm-input"><asp:TextBox ID="lastname"  placeholder="Last Name" runat="server" class="frm-inp"></asp:TextBox><i class="fa fa-user frm-ico"></i></div>
			<div class="frm-input"><asp:TextBox ID="email"  placeholder="Email" runat="server" class="frm-inp"></asp:TextBox><i class="fa fa-envelope frm-ico"></i></div>
			<div class="frm-input"><asp:TextBox ID="username"  placeholder="UserName" runat="server" class="frm-inp"></asp:TextBox><i class="fa fa-user frm-ico"></i></div>
			<div class="frm-input"><asp:TextBox ID="password"  placeholder="Password" runat="server" class="frm-inp" TextMode="Password"></asp:TextBox><i class="fa fa-lock frm-ico"></i></div>
			<div class="frm-input"><asp:TextBox ID="contact" placeholder="Contact" runat="server" class="frm-inp"></asp:TextBox> <i class="fa fa-lock frm-ico"></i></div>
			
            <asp:Button Text="Register" ID="submit" runat="server" class="frm-submit" OnClick="submit_Click" />
		</div>
			<a href="page-login.html" class="a-link"><i class="fa fa-sign-in"></i>Already have account? Login.</a>
		
            </div>
	</form>
</div>

		<script src="assets/script/html5shiv.min.js"></script>
		<script src="assets/script/respond.min.js"></script>
	<script src="assets/scripts/jquery.min.js"></script>
	<script src="assets/scripts/modernizr.min.js"></script>
	<script src="assets/plugin/bootstrap/js/bootstrap.min.js"></script>
	<script src="assets/plugin/nprogress/nprogress.js"></script>
	<script src="assets/plugin/waves/waves.min.js"></script>
	<script src="assets/scripts/main.min.js"></script>
</body>

</html>
