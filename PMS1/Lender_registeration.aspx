<%@ Page Title="" Language="C#" MasterPageFile="Newprocess.Master" EnableEventValidation="false" AutoEventWireup="true" CodeBehind="Lender_registeration.aspx.cs" Inherits="PMS1.Client_registeration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link rel="stylesheet" href="assets/js/jquery-ui/css/no-theme/jquery-ui-1.10.3.custom.min.css" />
	<link rel="stylesheet" href="assets/css/font-icons/entypo/css/entypo.css" />
	<link rel="stylesheet" href="//fonts.googleapis.com/css?family=Noto+Sans:400,700,400italic" />
	<link rel="stylesheet" href="assets/css/bootstrap.css" />
	<link rel="stylesheet" href="assets/css/neon-core.css" />
	<link rel="stylesheet" href="assets/css/neon-theme.css" />
	<link rel="stylesheet" href="assets/css/neon-forms.css" />
	<link rel="stylesheet" href="assets/css/custom.css" />

	<script src="assets/js/jquery-1.11.3.min.js"></script><script src="scripts/jquerymin.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:UpdatePanel ID="updatepan1" runat="server" UpdateMode="Conditional">
        <ContentTemplate>
            <div class="main-content">
		<h2>New Lender Registration</h2>
		<div class="panel panel-primary" data-collapsed="0">
			<br/ >
							<div class="col-md-3"> Lender Name
								<div class="input-group">
										<asp:TextBox ID="lender_name" runat="server" CssClass="form-control"></asp:TextBox>
									</div>
							</div>						
							<div class="col-md-3"> Lender Code
								<div class="input-group">
										<asp:TextBox ID="lender_code" runat="server" CssClass="form-control"></asp:TextBox>
									</div>
							</div>							
							<div class="col-md-3"> Manager Name
								<div class="input-group">
										<asp:TextBox ID="manager_name" runat="server" CssClass="form-control"></asp:TextBox>
									</div>
							</div>
							<div class="col-md-3"> Manager Phone Number
								<div class="input-group">
										<asp:TextBox ID="manager_number" runat="server" CssClass="form-control"></asp:TextBox>
									</div>
							</div>
							<div class="clear"></div>
							<br />
							<div class="col-md-3"> Manager Email ID
								<div class="input-group">
										<asp:TextBox ID="manager_email" runat="server" CssClass="form-control"></asp:TextBox>
									</div>
							</div>
							<div class="col-md-3"> Contact Name
								<div class="input-group">
										<asp:TextBox ID="contact_name" runat="server" CssClass="form-control"></asp:TextBox>
									</div>
							</div>						
							<div class="col-md-3"> Contact Number
								<div class="input-group">
										<asp:TextBox ID="lc_number" runat="server" CssClass="form-control"></asp:TextBox>
									</div>
							</div>
							<div class="col-md-3"> Contact Email ID
								<div class="input-group">
										<asp:TextBox ID="lc_email" runat="server" CssClass="form-control"></asp:TextBox>
									</div>
							</div>
							<div class="clear"></div><br />
							<div class="col-md-3"> Designation
								<div class="input-group">
										<asp:TextBox ID="designation" runat="server" CssClass="form-control"></asp:TextBox>
									</div>
							</div>			
							<div class="col-md-3"> Branch Name
								<div class="input-group">
										<asp:TextBox ID="branch_name" runat="server" CssClass="form-control"></asp:TextBox>
									</div>
							</div>							
							<div class="col-md-3"> Address Line 1
								<div class="input-group">
										<asp:TextBox ID="branch_add" runat="server" CssClass="form-control"></asp:TextBox>
									</div>
							</div>	
							<div class="col-md-3"> Address Line 2
								<div class="input-group">
										<asp:TextBox ID="branch_add2" runat="server" CssClass="form-control"></asp:TextBox>
									</div>
							</div><div class="clear"></div><br />
							<div class="col-md-3"> City
								<div class="input-group">
										<asp:TextBox ID="branch_city" runat="server" CssClass="form-control"></asp:TextBox>
									</div>
							</div>
							<div class="col-md-3"> State
								<div class="input-group">
										<asp:TextBox ID="branch_state" runat="server" CssClass="form-control"></asp:TextBox>
									</div>
							</div>
							<div class="col-md-3"> Country
								<div class="input-group">
										<asp:TextBox ID="branch_country" runat="server" CssClass="form-control"></asp:TextBox>
									</div>
							</div>
							<div class="col-md-3"> Zipcode
								<div class="input-group">
										<asp:TextBox ID="branch_zip" runat="server" CssClass="form-control"></asp:TextBox>
									</div>
							</div>
							<div class="clear"></div><br />
<p class="bs-example bs-baseline-top">
    <asp:Button ID="btnsubbmit" runat="server" Text="Register" OnClick="btnsubmit_Click" CssClass="btn btn-primary btn-block"/>
						</p></div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>