<%@ Page Language="C#" MasterPageFile="~/Newprocess.Master" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="OrderTask.aspx.cs" Inherits="PMS1.OrderTask" %>

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
    <script>
       <!--
       function isNumberKey(evt)
       {
          var charCode = (evt.which) ? evt.which : event.keyCode
          if (charCode != 46 && charCode > 31 
            && (charCode < 48 || charCode > 57))
             return false;

          return true;
       }
       //-->
        </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:UpdatePanel ID="updatepan1" runat="server" UpdateMode="Conditional">
        <ContentTemplate>
   <div class="main-content">
		<h2>Processing Order</h2>
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
										<asp:TextBox ID="la_phonenumber" runat="server" CssClass="form-control" MaxLength="10" onkeypress="return isNumberKey(event)"></asp:TextBox>
									</div>
							</div><div class="clear"></div>
							<br />						
							<div class="col-md-4"> Secondary Phone
								<div class="input-group">
										<span class="input-group-addon">♁</span>
										<asp:TextBox ID="la_phonenumber2" runat="server" CssClass="form-control" MaxLength="10" onkeypress="return isNumberKey(event)"></asp:TextBox>
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
										<asp:TextBox ID="ca_phone" runat="server" CssClass="form-control" MaxLength="10" onkeypress="return isNumberKey(event)"></asp:TextBox>
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
										<asp:TextBox ID="scp_number" runat="server" CssClass="form-control" MaxLength="10" onkeypress="return isNumberKey(event)"></asp:TextBox>
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
                                    <asp:DropDownList ID="hls_info" runat="server" CssClass="form-control">
                                        <asp:ListItem Value="0">--SELECT--</asp:ListItem>
                                        <asp:ListItem Value="yes">YES</asp:ListItem>
                                        <asp:ListItem Value="no">NO</asp:ListItem>
                                    </asp:DropDownList>
									</div>
							</div><div class="clear"></div><br />
            <div class="panel-heading">
				<div class="panel-title">
					<h3>5. Process</h3>
				</div>
			</div><br />
														
								<div class="col-md-3"> Mode of Download
								<div class="input-group">
										<span class="input-group-addon"><i class="entypo-user"></i></span>
                                    <asp:TextBox ID="modeofdownload" runat="server" CssClass="form-control"></asp:TextBox>
                                    <%--<asp:DropDownList ID="modeofdwnld" runat="server" CssClass="form-control">
                                        <asp:ListItem Value="0">--SELECT--</asp:ListItem>
                                        <asp:ListItem Value="yes">Item1</asp:ListItem>
                                        <asp:ListItem Value="no">Item2</asp:ListItem>
                                    </asp:DropDownList>--%>
									</div>
							</div>							
							<div class="col-md-3"> Comments
								<div class="input-group">
										<span class="input-group-addon">♁</span>
                                    <asp:TextBox ID="comments" runat="server" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
									</div>
							</div>
							
							<div class="col-md-3"> Currently Called To
								<div class="input-group">
										<span class="input-group-addon">♁</span>
                                    <asp:TextBox ID="currentlycaldto" runat="server" CssClass="form-control"></asp:TextBox>
                                    <%--<asp:DropDownList ID="currentlycalledto" runat="server" CssClass="form-control">
                                        <asp:ListItem Value="0">--SELECT--</asp:ListItem>
                                        <asp:ListItem Value="yes">Item1</asp:ListItem>
                                        <asp:ListItem Value="no">Item2</asp:ListItem>
                                    </asp:DropDownList>--%>
									</div>
							</div>
                             <div class="col-md-3"> Called By
								<div class="input-group">
										<span class="input-group-addon">♁</span>
                                    <asp:TextBox ID="calledb" runat="server" CssClass="form-control"></asp:TextBox>
                                   <%-- <asp:DropDownList ID="calledby" runat="server" CssClass="form-control">
                                        <asp:ListItem Value="0">--SELECT--</asp:ListItem>
                                        <asp:ListItem Value="item1">item1</asp:ListItem>
                                        <asp:ListItem Value="item2">item2</asp:ListItem>
                                    </asp:DropDownList>--%>
									</div>
							</div><div class="clear"></div><br />						
							
                             <div class="col-md-3"> Call Description
								<div class="input-group">
										<span class="input-group-addon">♁</span>
                                    <asp:TextBox ID="calldescription" runat="server" CssClass="form-control"></asp:TextBox>
                                   <%-- <asp:DropDownList ID="caldes" runat="server" CssClass="form-control">
                                        <asp:ListItem Value="0">--SELECT--</asp:ListItem>
                                        <asp:ListItem Value="item1">item1</asp:ListItem>
                                        <asp:ListItem Value="item2">item2</asp:ListItem>
                                    </asp:DropDownList>--%>
									</div>
							</div>
							<div class="col-md-3"> Next Action Date & Time
								<div class="input-group">
										<span class="input-group-addon">♁</span>
										<asp:TextBox ID="nxtactiondt" runat="server" CssClass="form-control"></asp:TextBox>
									</div>
							</div>
							
                             <div class="col-md-3"> Next Call To
								<div class="input-group">
										<span class="input-group-addon">♁</span>
                                    <asp:TextBox ID="nxtcallt" runat="server" CssClass="form-control"></asp:TextBox>
                                    <%--<asp:DropDownList ID="nxtcallto" runat="server" CssClass="form-control">
                                        <asp:ListItem Value="0">--SELECT--</asp:ListItem>
                                        <asp:ListItem Value="item1">item1</asp:ListItem>
                                        <asp:ListItem Value="item2">item2</asp:ListItem>
                                    </asp:DropDownList>--%>
									</div>
							</div>
							
                             <div class="col-md-3"> Order Status
								<div class="input-group">
										<span class="input-group-addon">♁</span>
                                    <asp:TextBox ID="orderstatu" runat="server" CssClass="form-control"></asp:TextBox>
                                    <%--<asp:DropDownList ID="orderstatus" runat="server" CssClass="form-control">
                                        <asp:ListItem Value="0">--SELECT--</asp:ListItem>
                                        <asp:ListItem Value="item1">item1</asp:ListItem>
                                        <asp:ListItem Value="item2">item2</asp:ListItem>
                                    </asp:DropDownList>--%>
									</div>
							</div><div class="clear"></div><br />
							
                             <div class="col-md-3"> Reassign To
								<div class="input-group">
										<span class="input-group-addon">♁</span>
                                    <asp:TextBox ID="reassignt" runat="server" CssClass="form-control"></asp:TextBox>
                                    <%--<asp:DropDownList ID="reassignto" runat="server" CssClass="form-control">
                                        <asp:ListItem Value="0">--SELECT--</asp:ListItem>
                                        <asp:ListItem Value="item1">item1</asp:ListItem>
                                        <asp:ListItem Value="item2">item2</asp:ListItem>
                                    </asp:DropDownList>--%>
									</div>
							</div>				
							
                             <div class="col-md-3"> Downloaded By
								<div class="input-group">
										<span class="input-group-addon">♁</span>
                                    <asp:TextBox ID="downloadedb" runat="server" CssClass="form-control"></asp:TextBox>
                                    <%--<asp:DropDownList ID="downloadedby" runat="server" CssClass="form-control">
                                        <asp:ListItem Value="0">--SELECT--</asp:ListItem>
                                        <asp:ListItem Value="item1">item1</asp:ListItem>
                                        <asp:ListItem Value="item2">item2</asp:ListItem>
                                    </asp:DropDownList>--%>
									</div>
							</div>					
							
                             <div class="col-md-3"> Cancelled Reason
								<div class="input-group">
										<span class="input-group-addon">♁</span>
                                    <asp:TextBox ID="cancelreaso" runat="server" CssClass="form-control"></asp:TextBox>
                                    <%--<asp:DropDownList ID="cancelreason" runat="server" CssClass="form-control">
                                        <asp:ListItem Value="0">--SELECT--</asp:ListItem>
                                        <asp:ListItem Value="item1">item1</asp:ListItem>
                                        <asp:ListItem Value="item2">item2</asp:ListItem>
                                    </asp:DropDownList>--%>
									</div>
							</div>
							
                             <div class="col-md-3"> CSR Name Assignment
								<div class="input-group">
										<span class="input-group-addon">♁</span>
                                    <asp:TextBox ID="csrnameassign" runat="server" CssClass="form-control"></asp:TextBox>
                                    <%--<asp:DropDownList ID="csrnameassignment" runat="server" CssClass="form-control">
                                        <asp:ListItem Value="0">--SELECT--</asp:ListItem>
                                        <asp:ListItem Value="item1">item1</asp:ListItem>
                                        <asp:ListItem Value="item2">item2</asp:ListItem>
                                    </asp:DropDownList>--%>
									</div>
							</div><div class="clear"></div><br />
							
							
                             <div class="col-md-3"> CSR Code Assignment
								<div class="input-group">
										<span class="input-group-addon">♁</span>
                                    <asp:TextBox ID="csrcodeassignmen" runat="server" CssClass="form-control"></asp:TextBox>
                                    <%--<asp:DropDownList ID="csrcodeassignment" runat="server" CssClass="form-control">
                                        <asp:ListItem Value="0">--SELECT--</asp:ListItem>
                                        <asp:ListItem Value="item1">item1</asp:ListItem>
                                        <asp:ListItem Value="item2">item2</asp:ListItem>
                                    </asp:DropDownList>--%>
									</div>
							</div>							
							
                             <div class="col-md-3"> Assignment Status
								<div class="input-group">
										<span class="input-group-addon">♁</span>
                                    <asp:TextBox ID="assignmentstatu" runat="server" CssClass="form-control"></asp:TextBox>
                                    <%--<asp:DropDownList ID="assignmentstatus" runat="server" CssClass="form-control">
                                        <asp:ListItem Value="0">--SELECT--</asp:ListItem>
                                        <asp:ListItem Value="item1">item1</asp:ListItem>
                                        <asp:ListItem Value="item2">item2</asp:ListItem>
                                    </asp:DropDownList>--%>
									</div>
							</div>							
							
                             <div class="col-md-3"> CSR Reassign To
								<div class="input-group">
										<span class="input-group-addon">♁</span>
                                    <asp:TextBox ID="csrreassignt" runat="server" CssClass="form-control"></asp:TextBox>
                                    <%--<asp:DropDownList ID="csrreassignto" runat="server" CssClass="form-control">
                                        <asp:ListItem Value="0">--SELECT--</asp:ListItem>
                                        <asp:ListItem Value="item1">item1</asp:ListItem>
                                        <asp:ListItem Value="item2">item2</asp:ListItem>
                                    </asp:DropDownList>--%>
									</div>
							</div>
							
							
                             <div class="col-md-3"> Reassign Status
								<div class="input-group">
										<span class="input-group-addon">♁</span>
                                    <asp:TextBox ID="reassignstatu" runat="server" CssClass="form-control"></asp:TextBox>
                                    <%--<asp:DropDownList ID="reassignstatus" runat="server" CssClass="form-control">
                                        <asp:ListItem Value="0">--SELECT--</asp:ListItem>
                                        <asp:ListItem Value="item1">item1</asp:ListItem>
                                        <asp:ListItem Value="item2">item2</asp:ListItem>
                                    </asp:DropDownList>--%>
									</div>
							</div><div class="clear"></div><br />
							<div class="col-md-3"> Downloaded Time
								<div class="input-group">
										<span class="input-group-addon">♁</span>
										<asp:TextBox ID="dwnldtime" runat="server" CssClass="form-control" MaxLength="10" onkeypress="return isNumberKey(event)"></asp:TextBox>
									</div>
							</div>							
							
                             <div class="col-md-3"> Product Name
								<div class="input-group">
										<span class="input-group-addon">♁</span>
                                    <asp:TextBox ID="productname" runat="server" CssClass="form-control"></asp:TextBox>
                                    <%--<asp:DropDownList ID="prdctname" runat="server" CssClass="form-control">
                                        <asp:ListItem Value="0">--SELECT--</asp:ListItem>
                                        <asp:ListItem Value="item1">item1</asp:ListItem>
                                        <asp:ListItem Value="item2">item2</asp:ListItem>
                                    </asp:DropDownList>--%>
									</div>
							</div>
							<div class="col-md-3"> Data Agent Name Assignment
								<div class="input-group">
										<span class="input-group-addon">♁</span>
                                    <asp:TextBox ID="dataagentnameassign" runat="server" CssClass="form-control"></asp:TextBox>
                                    <%--<asp:DropDownList ID="dtaagntnmassgnment" runat="server" CssClass="form-control">
                                        <asp:ListItem Value="0">--SELECT--</asp:ListItem>
                                        <asp:ListItem Value="item1">Item1</asp:ListItem>
                                        <asp:ListItem Value="item2">Item2</asp:ListItem>
                                    </asp:DropDownList>--%>
									</div>
							</div>
                          <div class="col-md-3"> Data Agent code Assignment
								<div class="input-group">
										<span class="input-group-addon">♁</span>
                                    <asp:TextBox ID="dataagentcode" runat="server" CssClass="form-control"></asp:TextBox>
                                    <%--<asp:DropDownList ID="dtaagntnmassgnment" runat="server" CssClass="form-control">
                                        <asp:ListItem Value="0">--SELECT--</asp:ListItem>
                                        <asp:ListItem Value="item1">Item1</asp:ListItem>
                                        <asp:ListItem Value="item2">Item2</asp:ListItem>
                                    </asp:DropDownList>--%>
									</div>
							</div><div class="clear"></div><br />
            <div class="col-md-3"> Data Agent Reassign to
								<div class="input-group">
										<span class="input-group-addon">♁</span>
                                    <asp:TextBox ID="dataagentreassignto" runat="server" CssClass="form-control"></asp:TextBox>
                                    <%--<asp:DropDownList ID="dtaagntnmassgnment" runat="server" CssClass="form-control">
                                        <asp:ListItem Value="0">--SELECT--</asp:ListItem>
                                        <asp:ListItem Value="item1">Item1</asp:ListItem>
                                        <asp:ListItem Value="item2">Item2</asp:ListItem>
                                    </asp:DropDownList>--%>
									</div>
							</div>
							<div class="col-md-3"> Order Complete Status
								<div class="input-group">
										<span class="input-group-addon">♁</span>
                                    <asp:TextBox ID="ordercompletestatus" runat="server" CssClass="form-control"></asp:TextBox>
                                    <%--<asp:DropDownList ID="dtaagntnmassgnment" runat="server" CssClass="form-control">
                                        <asp:ListItem Value="0">--SELECT--</asp:ListItem>
                                        <asp:ListItem Value="item1">Item1</asp:ListItem>
                                        <asp:ListItem Value="item2">Item2</asp:ListItem>
                                    </asp:DropDownList>--%>
									</div>
							</div>
							<div class="col-md-3"> If Status Says Issue
								<div class="input-group">
										<span class="input-group-addon">♁</span>
                                    <asp:TextBox ID="statussaysissue" runat="server" CssClass="form-control"></asp:TextBox>
                                    <%--<asp:DropDownList ID="dtaagntnmassgnment" runat="server" CssClass="form-control">
                                        <asp:ListItem Value="0">--SELECT--</asp:ListItem>
                                        <asp:ListItem Value="item1">Item1</asp:ListItem>
                                        <asp:ListItem Value="item2">Item2</asp:ListItem>
                                    </asp:DropDownList>--%>
									</div>
							</div>
							<div class="col-md-3"> If Status Says Tech Issue
								<div class="input-group">
										<span class="input-group-addon">♁</span>
                                    <asp:TextBox ID="techissuestatus" runat="server" CssClass="form-control"></asp:TextBox>
                                    <%--<asp:DropDownList ID="dtaagntnmassgnment" runat="server" CssClass="form-control">
                                        <asp:ListItem Value="0">--SELECT--</asp:ListItem>
                                        <asp:ListItem Value="item1">Item1</asp:ListItem>
                                        <asp:ListItem Value="item2">Item2</asp:ListItem>
                                    </asp:DropDownList>--%>
									</div>
							</div><div class="clear"></div><br />
						<div class="col-md-3"> Completed Mode
								<div class="input-group">
										<span class="input-group-addon">♁</span>
                                    <asp:TextBox ID="completemode" runat="server" CssClass="form-control"></asp:TextBox>
                                    <%--<asp:DropDownList ID="dtaagntnmassgnment" runat="server" CssClass="form-control">
                                        <asp:ListItem Value="0">--SELECT--</asp:ListItem>
                                        <asp:ListItem Value="item1">Item1</asp:ListItem>
                                        <asp:ListItem Value="item2">Item2</asp:ListItem>
                                    </asp:DropDownList>--%>
									</div>
							</div>
            <div class="col-md-3"> Remarks/Comments
								<div class="input-group">
										<span class="input-group-addon">♁</span>
                                    <asp:TextBox ID="remarkscomments" runat="server" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
                                    <%--<asp:DropDownList ID="dtaagntnmassgnment" runat="server" CssClass="form-control">
                                        <asp:ListItem Value="0">--SELECT--</asp:ListItem>
                                        <asp:ListItem Value="item1">Item1</asp:ListItem>
                                        <asp:ListItem Value="item2">Item2</asp:ListItem>
                                    </asp:DropDownList>--%>
									</div>
							</div>
							
							<div class="col-md-3"> All ITRs & acknowledgement available in S3
								<div class="input-group">
										<span class="input-group-addon">♁</span>
                                    <asp:TextBox ID="avaliableins3" runat="server" CssClass="form-control"></asp:TextBox>
                                    <%--<asp:DropDownList ID="dtaagntnmassgnment" runat="server" CssClass="form-control">
                                        <asp:ListItem Value="0">--SELECT--</asp:ListItem>
                                        <asp:ListItem Value="item1">Item1</asp:ListItem>
                                        <asp:ListItem Value="item2">Item2</asp:ListItem>
                                    </asp:DropDownList>--%>
									</div>
							</div>
							<div class="col-md-3"> 3CB forms available in S3
								<div class="input-group">
										<span class="input-group-addon">♁</span>
                                    <asp:TextBox ID="cbins3" runat="server" CssClass="form-control"></asp:TextBox>
                                    <%--<asp:DropDownList ID="dtaagntnmassgnment" runat="server" CssClass="form-control">
                                        <asp:ListItem Value="0">--SELECT--</asp:ListItem>
                                        <asp:ListItem Value="item1">Item1</asp:ListItem>
                                        <asp:ListItem Value="item2">Item2</asp:ListItem>
                                    </asp:DropDownList>--%>
									</div>
							</div><div class="clear"></div><br />
            <div class="col-md-3"> Is CAM & FF Report is available?
								<div class="input-group">
										<span class="input-group-addon">♁</span>
                                    <asp:TextBox ID="ffreport" runat="server" CssClass="form-control"></asp:TextBox>
                                    <%--<asp:DropDownList ID="dtaagntnmassgnment" runat="server" CssClass="form-control">
                                        <asp:ListItem Value="0">--SELECT--</asp:ListItem>
                                        <asp:ListItem Value="item1">Item1</asp:ListItem>
                                        <asp:ListItem Value="item2">Item2</asp:ListItem>
                                    </asp:DropDownList>--%>
									</div>
							</div>
            <div class="col-md-3"> All files & FF Report available in ODS
								<div class="input-group">
										<span class="input-group-addon">♁</span>
                                    <asp:TextBox ID="ffinods" runat="server" CssClass="form-control"></asp:TextBox>
                                    <%--<asp:DropDownList ID="dtaagntnmassgnment" runat="server" CssClass="form-control">
                                        <asp:ListItem Value="0">--SELECT--</asp:ListItem>
                                        <asp:ListItem Value="item1">Item1</asp:ListItem>
                                        <asp:ListItem Value="item2">Item2</asp:ListItem>
                                    </asp:DropDownList>--%>
									</div>
							</div>
            <div class="col-md-3"> Any issues/ Observations on uploads
								<div class="input-group">
										<span class="input-group-addon">♁</span>
                                    <asp:TextBox ID="issueonuploads" runat="server" CssClass="form-control"></asp:TextBox>
                                    <%--<asp:DropDownList ID="dtaagntnmassgnment" runat="server" CssClass="form-control">
                                        <asp:ListItem Value="0">--SELECT--</asp:ListItem>
                                        <asp:ListItem Value="item1">Item1</asp:ListItem>
                                        <asp:ListItem Value="item2">Item2</asp:ListItem>
                                    </asp:DropDownList>--%>
									</div>
							</div>
            <div class="col-md-3"> Update Recreated order details
								<div class="input-group">
										<span class="input-group-addon">♁</span>
                                    <asp:TextBox ID="updatereorderdetails" runat="server" CssClass="form-control"></asp:TextBox>
                                    <%--<asp:DropDownList ID="dtaagntnmassgnment" runat="server" CssClass="form-control">
                                        <asp:ListItem Value="0">--SELECT--</asp:ListItem>
                                        <asp:ListItem Value="item1">Item1</asp:ListItem>
                                        <asp:ListItem Value="item2">Item2</asp:ListItem>
                                    </asp:DropDownList>--%>
									</div>
							</div><div class="clear"></div><br />
            <div class="col-md-3"> Resolution Status
								<div class="input-group">
										<span class="input-group-addon">♁</span>
                                    <asp:TextBox ID="resolutionstatus" runat="server" CssClass="form-control"></asp:TextBox>
                                    <%--<asp:DropDownList ID="dtaagntnmassgnment" runat="server" CssClass="form-control">
                                        <asp:ListItem Value="0">--SELECT--</asp:ListItem>
                                        <asp:ListItem Value="item1">Item1</asp:ListItem>
                                        <asp:ListItem Value="item2">Item2</asp:ListItem>
                                    </asp:DropDownList>--%>
									</div>
							</div><div class="clear"></div><br />
       
							<p class="bs-example bs-baseline-top">
                                
						</p>
            </div>
		</div>
            <asp:Button ID="notcompleted" Width="40%"  runat="server" Text="Not completed" Font-Size="Medium"/>
             <asp:Button ID="completed" Width="40%" runat="server" Text="Next Step" Font-Size="Medium"/>
       </div>
            </ContentTemplate>
	</asp:UpdatePanel>
</asp:Content>

