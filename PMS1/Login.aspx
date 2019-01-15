<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="PMS1.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>PMS | Login</title>
<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="LoginStylesheets/images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="LoginStylesheets/vendor/bootstrap/css/bootstrap.min.css" />
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="LoginStylesheets/fonts/font-awesome-4.7.0/css/font-awesome.min.css" />
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="LoginStylesheets/fonts/Linearicons-Free-v1.0.0/icon-font.min.css" />
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="LoginStylesheets/vendor/animate/animate.css" />
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="LoginStylesheets/vendor/css-hamburgers/hamburgers.min.css" />
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="LoginStylesheets/vendor/animsition/css/animsition.min.css" />
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="LoginStylesheets/vendor/select2/select2.min.css" />
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="LoginStylesheets/vendor/daterangepicker/daterangepicker.css" />
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="LoginStylesheets/css/util.css" />
	<link rel="stylesheet" type="text/css" href="LoginStylesheets/css/main.css" />
<!--===============================================================================================-->


</head>
<body>
    <form id="form1" runat="server">
      
        <div class="limiter">
    <div class="container-login100">
    <div class="wrap-login100 p-t-50 p-b-90">
        <span class="login100-form-title p-b-51">
						Pipeline Management System
					</span>

            
       <div class="wrap-input100 validate-input m-b-16" data-validate = "Username is required">
         <asp:TextBox ID="txtuname" runat="server" Cssclass="input100" placeholder="Enter your Email"></asp:TextBox>
           <span class="focus-input100"></span>
           </div>
               <div class="wrap-input100 validate-input m-b-16" data-validate = "Password is required">
                     <asp:TextBox ID="txtpwd" runat="server" Cssclass="input100" TextMode="Password" placeholder="Enter your Password"></asp:TextBox>
                     <span class="focus-input100"></span>
					</div>
                 <div class="container-login100-form-btn m-t-17">
                 <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" Cssclass="login100-form-btn"/>
                 </div>
    </div>
    </div>
    </div>
    </form>
</body>
</html>
