<%@ Page Title="PMS | New Order" Language="C#" MasterPageFile="~/Newprocess.Master" AutoEventWireup="true" CodeBehind="New_orders.aspx.cs" Inherits="PMS1.New_orders" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />

	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<meta name="description" content="Neon Admin Panel" />
	<meta name="author" content="" />

	<link rel="icon" href="assets/images/favicon.png" />

	<link rel="stylesheet" href="assets/js/jquery-ui/css/no-theme/jquery-ui-1.10.3.custom.min.css" />
	<link rel="stylesheet" href="assets/css/font-icons/entypo/css/entypo.css" />
	<link rel="stylesheet" href="//fonts.googleapis.com/css?family=Noto+Sans:400,700,400italic" />
	<link rel="stylesheet" href="assets/css/bootstrap.css" />
	<link rel="stylesheet" href="assets/css/neon-core.css" />
	<link rel="stylesheet" href="assets/css/neon-theme.css" />
	<link rel="stylesheet" href="assets/css/neon-forms.css" />
	<link rel="stylesheet" href="assets/css/custom.css" />

	<script src="assets/js/jquery-1.11.3.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:UpdatePanel ID="updatepan1" runat="server" UpdateMode="Conditional">
        <ContentTemplate>
   <div class="main-content">
		<h2>New Order</h2>
		<div class="panel panel-primary" data-collapsed="0">
			<div class="panel-heading">
				<div class="panel-title">
					<h3>1. Order Details</h3>
				</div>
			</div><br />
														
							<div class="col-md-3"> Lender Name
								<div class="input-group">
										<span class="input-group-addon"><i class="entypo-user"></i></span>
                                    <asp:TextBox ID="lender_name" runat="server" CssClass="form-control"></asp:TextBox>
									</div>
							</div>							
							<div class="col-md-3"> Branch
								<div class="input-group">
										<span class="input-group-addon">♁</span>
                                    <asp:TextBox ID="branch" runat="server" CssClass="form-control"></asp:TextBox>
									</div>
							</div>
							<div class="clear"></div><br />
							<div class="panel-heading">
				<div class="panel-title">
					<h3>2. Loan Applicant Details</h3>
				</div>
			</div><br /><div class="col-md-4"> LA Ref. No
								<div class="input-group">
										<span class="input-group-addon"><i class="entypo-clipboard"></i></span>
										<asp:TextBox ID="la_reference_no" runat="server" CssClass="form-control"></asp:TextBox>
									</div>
							</div><div class="col-md-4"> LA Name
								<div class="input-group">
										<span class="input-group-addon">♁</span>
										<asp:TextBox ID="la_name" runat="server" CssClass="form-control"></asp:TextBox>
									</div>
							</div>						
							<div class="col-md-4"> Primary Phone
								<div class="input-group">
										<span class="input-group-addon">♁</span>
										<asp:TextBox ID="la_phonenumber" runat="server" CssClass="form-control"></asp:TextBox>
									</div>
							</div><div class="clear"></div>
							<br />						
							<div class="col-md-4"> Secondary Phone
								<div class="input-group">
										<span class="input-group-addon">♁</span>
										<asp:TextBox ID="la_phonenumber2" runat="server" CssClass="form-control"></asp:TextBox>
									</div>
							</div>
							<div class="col-md-4"> Primary Email ID
								<div class="input-group">
										<span class="input-group-addon">♁</span>
										<asp:TextBox ID="la_email1" runat="server" CssClass="form-control"></asp:TextBox>
									</div>
							</div>
							<div class="col-md-4"> Secondary Email ID
								<div class="input-group">
										<span class="input-group-addon">♁</span>
										<asp:TextBox ID="la_email2" runat="server" CssClass="form-control"></asp:TextBox>
									</div>
							</div><div class="clear"></div>
							<br />
							<div class="col-md-4"> Primary Address Line 1
								<div class="input-group">
										<span class="input-group-addon">🏠</span>
										<asp:TextBox ID="la_primaryadd1" runat="server" CssClass="form-control"></asp:TextBox>
									</div>
							</div>				
							<div class="col-md-4"> Primary Address Line 2
								<div class="input-group">
										<span class="input-group-addon">📍</span>
										<asp:TextBox ID="la_primaryadd2" runat="server" CssClass="form-control"></asp:TextBox>
									</div>
							</div>					
							<div class="col-md-4"> Secondary Address Line 1
								<div class="input-group">
										<span class="input-group-addon">🏢</span>
										<asp:TextBox ID="la_secondaryadd1" runat="server" CssClass="form-control"></asp:TextBox>
									</div>
							</div><div class="clear"></div>
							<br />
							<div class="col-md-4"> Secondary Address Line 2
								<div class="input-group">
										<span class="input-group-addon">🌍</span>
										<asp:TextBox ID="la_secondaryadd2" runat="server" CssClass="form-control"></asp:TextBox>
									</div>
							</div><div class="clear"></div>
							<br />
							<div class="panel-heading">
				<div class="panel-title">
					<h3>3. Chartedred Accountant Details</h3>
				</div>
			</div><br />
							<div class="col-md-4"> Full Name
								<div class="input-group">
										<span class="input-group-addon">CA</span>
										<asp:TextBox ID="ca_name" runat="server" CssClass="form-control"></asp:TextBox>
									</div>
							</div>							
							<div class="col-md-4"> Phone Number
								<div class="input-group">
										<span class="input-group-addon"><i class="entypo-user"></i></span>
										<asp:TextBox ID="ca_phone" runat="server" CssClass="form-control"></asp:TextBox>
									</div>
							</div>							
							<div class="col-md-4"> Email ID
								<div class="input-group">
										<span class="input-group-addon">♁</span>
										<asp:TextBox ID="ca_email" runat="server" CssClass="form-control"></asp:TextBox>
									</div>
							</div><div class="clear"></div>
							<br />
							<div class="panel-heading">
				<div class="panel-title">
					<h3>4. Sales RM Details</h3>
				</div>
			</div><br/ >
							<div class="col-md-3"> Full Name
								<div class="input-group">
										<span class="input-group-addon">♁</span>
										<asp:TextBox ID="sales_rm_name" runat="server" CssClass="form-control"></asp:TextBox>
									</div>
							</div>
							<div class="col-md-3"> Phone Number
								<div class="input-group">
										<span class="input-group-addon">♁</span>
										<asp:TextBox ID="scp_number" runat="server" CssClass="form-control"></asp:TextBox>
									</div>
							</div>							
							<div class="col-md-3"> Email ID
								<div class="input-group">
										<span class="input-group-addon">♁</span>
										<asp:TextBox ID="scp_email" runat="server" CssClass="form-control"></asp:TextBox>
									</div>
							</div>
							<div class="col-md-3"> Has Lender Sales Informed ?
								<div class="input-group">
										<span class="input-group-addon">♁</span>
                                    <asp:DropDownList ID="hls_info" runat="server">
                                        <asp:ListItem Value="0">--SELECT--</asp:ListItem>
                                        <asp:ListItem Value="yes">YES</asp:ListItem>
                                        <asp:ListItem Value="no">NO</asp:ListItem>
                                    </asp:DropDownList>
									</div>
							</div><div class="clear"></div><br />
							<p class="bs-example bs-baseline-top">
                                <asp:Button ID="btnsubmit" OnClick="btnsubmit_Click" runat="server" Text="Create Order" class="btn btn-primary btn-block"/>
						</p></div>
       </div>
            </ContentTemplate>
	</asp:UpdatePanel>
</asp:Content>
