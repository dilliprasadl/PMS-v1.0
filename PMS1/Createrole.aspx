<%@ Page Title="" Language="C#" MasterPageFile="~/Newprocess.Master" AutoEventWireup="true" CodeBehind="Createrole.aspx.cs" Inherits="PMS1.Createrole" %>
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
		<h2>Create New Role</h2>
		<div class="panel panel-primary" data-collapsed="0">
			<br/ >
							<div class="col-md-3"> New Role
								<div class="input-group">
										<asp:TextBox ID="txtrole" runat="server" CssClass="form-control"></asp:TextBox>
									</div>
							</div><br />					
<p class="bs-example bs-baseline-top">
    <asp:Button ID="btnsubmit" runat="server" Text="Register" CssClass="btn btn-primary btn-block"/>
						</p></div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
