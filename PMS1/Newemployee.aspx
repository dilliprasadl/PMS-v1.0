<%@ Page Title="PMS | New Employee" Language="C#" MasterPageFile="~/Newprocess.Master" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="Newemployee.aspx.cs" Inherits="PMS1.Newemployee" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>  

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
    <script>    
       function isNumberKey(evt)
       {
          var charCode = (evt.which) ? evt.which : event.keyCode
          if (charCode != 46 && charCode > 31 
            && (charCode < 48 || charCode > 57))
             return false;
          return true;
       }
        </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:UpdatePanel ID="updatepan1" runat="server" UpdateMode="Conditional">
        <ContentTemplate>
    <div class="main-content">
		<h2>NEW EMPLOYEE REGISTRATION</h2>
		<div class="panel panel-primary" data-collapsed="0">
			<div class="panel-heading">
				<div class="panel-title">
					<h3>1. Personal Information</h3>
				</div>
			</div><br  />
							<div class="col-md-3"> First Name <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ValidationGroup="fill" ControlToValidate="txtfname" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
&nbsp;<div class="input-group">
										<span class="input-group-addon"><i class="entypo-user"></i></span>
                      
                                    <asp:TextBox ID="txtfname" runat="server"  CssClass="form-control"></asp:TextBox>
                                    
									</div>
							</div>							
							<div class="col-md-3"> Last Name <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ValidationGroup="fill" ErrorMessage="*" ForeColor="Red" Font-Bold="true" ControlToValidate="txtlaname"></asp:RequiredFieldValidator>
								<div class="input-group">
										<span class="input-group-addon"><i class="entypo-user"></i></span>
                                    <asp:TextBox ID="txtlaname" runat="server" CssClass="form-control"></asp:TextBox>
									</div>
							</div>							
							<div class="col-md-3"> Gender
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ddlselect" ValidationGroup="fill" ErrorMessage="*" Font-Bold="true" ForeColor="Red"></asp:RequiredFieldValidator>
                                &nbsp;<div class="input-group">
										<span class="input-group-addon">♁</span>
                                    <asp:DropDownList ID="ddlselect" runat="server" CssClass="form-control">
                                        <asp:ListItem Value="0">--SELECT--</asp:ListItem>
                                        <asp:ListItem Value="Male">Male</asp:ListItem>
                                        <asp:ListItem Value="Female">Female</asp:ListItem>
                                        <asp:ListItem Value="others">Other's</asp:ListItem>
                                        <asp:ListItem Value="don't disclose">Don't Disclose</asp:ListItem>
                                    </asp:DropDownList>
									</div>
							</div>
							<div class="col-md-3"> Date of Birth<asp:RequiredFieldValidator ID="RequiredFieldValidator4" ValidationGroup="fill" runat="server" ControlToValidate="txtdob" ErrorMessage="*" Font-Bold="true" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<div class="input-group">
										<span class="input-group-addon"><i class="entypo-clipboard"></i></span>
                                    <asp:TextBox ID="txtdob" runat="server" placeholder="YYYY-MM-DD" CssClass="form-control"></asp:TextBox>
									</div>
							</div>
							<div class="clear"></div>
							<br />
							<div class="col-md-3"> Primary Mobile <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ValidationGroup="fill" runat="server" ControlToValidate="txtmnumber" ErrorMessage="*" Font-Bold="true" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<div class="input-group">
										<span class="input-group-addon"><i class="entypo-phone"></i></span>
                                    <asp:TextBox ID="txtmnumber" runat="server" CssClass="form-control" MaxLength="10" onkeypress="return isNumberKey(event)"></asp:TextBox>
                                    
									</div>
							</div>
							<div class="col-md-3"> Secondary Mobile 
								<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ValidationGroup="fill" ControlToValidate="txtanumber" ErrorMessage="*" Font-Bold="true" ForeColor="Red"></asp:RequiredFieldValidator>
                                &nbsp;<div class="input-group">
										<span class="input-group-addon"><i class="entypo-phone"></i></span>
                                    <asp:TextBox ID="txtanumber" runat="server" CssClass="form-control" MaxLength="10" onkeypress="return isNumberKey(event)"></asp:TextBox>
									</div>
							</div>						
							<div class="col-md-3"> Primary Email ID
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ValidationGroup="fill" ControlToValidate="txtemail" ErrorMessage="*" Font-Bold="true" ForeColor="Red"></asp:RequiredFieldValidator>
                                &nbsp;<div class="input-group">
										<span class="input-group-addon"><i class="entypo-mail"></i></span>
                                    <asp:TextBox ID="txtemail" runat="server" CssClass="form-control"></asp:TextBox>
									</div>
							</div>
							<div class="col-md-3"> Alternate Email ID
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ValidationGroup="fill" ControlToValidate="txtaemail" ErrorMessage="*" Font-Bold="true" ForeColor="Red"></asp:RequiredFieldValidator>
                                &nbsp;<div class="input-group">
										<span class="input-group-addon"><i class="entypo-mail"></i></span>
                                    <asp:TextBox ID="txtaemail" runat="server" CssClass="form-control"></asp:TextBox>
									</div>
							</div>
							<div class="clear"></div><br />
							<div class="col-md-3"> Father Name
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ValidationGroup="fill" ControlToValidate="txtfaname" ErrorMessage="*" Font-Bold="true" ForeColor="Red"></asp:RequiredFieldValidator>
                                &nbsp;<div class="input-group">
										<span class="input-group-addon"><i class="entypo-users"></i></span>
                                    <asp:TextBox ID="txtfaname" runat="server" CssClass="form-control"></asp:TextBox>
									</div>
							</div>			
							<div class="col-md-3"> Mother Name&nbsp;
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ValidationGroup="fill" ControlToValidate="txtmoname" ErrorMessage="*" Font-Bold="true" ForeColor="Red"></asp:RequiredFieldValidator>
                                &nbsp;<div class="input-group">
										<span class="input-group-addon"><i class="entypo-users"></i></span>
										<asp:TextBox ID="txtmoname" runat="server" CssClass="form-control"></asp:TextBox>
									</div>
							</div>							
							<div class="col-md-3"> Aadhaar Number
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ValidationGroup="fill" ControlToValidate="txtacno" ErrorMessage="*" Font-Bold="true" ForeColor="Red"></asp:RequiredFieldValidator>
                                &nbsp;<div class="input-group">
										<span class="input-group-addon"><i class="entypo-book"></i></span>
										<asp:TextBox ID="txtacno" runat="server" CssClass="form-control"></asp:TextBox>
									</div>
							</div>	
							<div class="col-md-3"> PAN Card Number 
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ValidationGroup="fill" ControlToValidate="txtpcno" ErrorMessage="*" Font-Bold="true" ForeColor="Red"></asp:RequiredFieldValidator>
								<div class="input-group">
										<span class="input-group-addon"><i class="entypo-book"></i></span>
										<asp:TextBox ID="txtpcno" runat="server" CssClass="form-control"></asp:TextBox>
									</div>
							</div><div class="clear"></div><br />
							<div class="col-md-3"> Passport ID <asp:RequiredFieldValidator ID="RequiredFieldValidator13" ValidationGroup="fill" runat="server" ControlToValidate="txtpassno" ErrorMessage="*" Font-Bold="true" ForeColor="Red"></asp:RequiredFieldValidator>
								<div class="input-group">
										<span class="input-group-addon"><i class="entypo-book"></i></span>
										<asp:TextBox ID="txtpassno" runat="server" CssClass="form-control"></asp:TextBox>
									</div>
							</div>			
							<div class="col-md-3"> Username
								<asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ValidationGroup="fill" ControlToValidate="txtuname" ErrorMessage="*" Font-Bold="true" ForeColor="Red"></asp:RequiredFieldValidator>
                                &nbsp;<div class="input-group">
										<span class="input-group-addon">@</span>
										<asp:TextBox ID="txtuname" runat="server" CssClass="form-control"></asp:TextBox>
									</div>
							</div>
							<div class="col-md-3"> Password
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ValidationGroup="fill" ControlToValidate="txtpwd" ErrorMessage="*" Font-Bold="true" ForeColor="Red"></asp:RequiredFieldValidator>
                                &nbsp;<div class="input-group">
										<span class="input-group-addon">★</span>
										<asp:TextBox ID="txtpwd" runat="server" CssClass="form-control"></asp:TextBox>
									</div>
							</div><div class="clear"></div><br />
							<div class="form-group">
							<div class="col-md-6"> Upload Photo
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ValidationGroup="fill" ControlToValidate="uploadphoto" ErrorMessage="*" Font-Bold="true" ForeColor="Red"></asp:RequiredFieldValidator>
                                &nbsp;<asp:FileUpload ID="uploadphoto" runat="server" /><br />
                                
                                
							</div>
							<div class="col-md-6"> Upload Other Files
								<asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ValidationGroup="fill" ControlToValidate="Uploadofiles" ErrorMessage="*" Font-Bold="true" ForeColor="Red"></asp:RequiredFieldValidator>
                                &nbsp;<asp:FileUpload ID="Uploadofiles" runat="server"/><br />
                               
                               
							</div>
							<div class="clear"></div><br />
							<div class="panel-heading">
				<div class="panel-title">
					<h3>2. Language Skill Set</h3>
				</div>
			</div><br /><div class="col-md-3"> Primary Language 1
								<div class="input-group"><span class="input-group-addon">௹</span>
                                    <asp:TextBox ID="txtplan1" runat="server" CssClass="form-control" value="English" Enabled="false"></asp:TextBox>
									</div>
							</div>							
							<div class="col-md-3"> Expertize Level
								<asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" ValidationGroup="fill" ControlToValidate="txtpassno" ErrorMessage="*" Font-Bold="true" ForeColor="Red"></asp:RequiredFieldValidator>
                                &nbsp;<div class="input-group"><span class="input-group-addon"><i class="entypo-chart-bar"></i></span>
									<asp:DropDownList ID="ddlElevel1" runat="server" CssClass="form-control">
                                        <asp:ListItem Value="0">--SELECT--</asp:ListItem>
                                        <asp:ListItem Value="Beginner">Beginner</asp:ListItem>
                                        <asp:ListItem Value="Conversational">Conversational</asp:ListItem>
                                        <asp:ListItem Value="Fluent">Fluent</asp:ListItem>
                                        <asp:ListItem Value="Expert">Expert</asp:ListItem>
                                    </asp:DropDownList>
									
									</div>
							</div>									
							<div class="col-md-3"> Primary Language 2
								<div class="input-group"><span class="input-group-addon">௹</span>
									<asp:TextBox ID="txtplan2" runat="server" CssClass="form-control" value="Hindi" Enabled="false"></asp:TextBox>
									
									</div>
							</div>
							<div class="col-md-3"> Expertize Level
								<asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" ValidationGroup="fill" ControlToValidate="txtpassno" ErrorMessage="*" Font-Bold="true" ForeColor="Red"></asp:RequiredFieldValidator>
                                &nbsp;<div class="input-group"><span class="input-group-addon"><i class="entypo-chart-bar"></i></span>
									<asp:DropDownList ID="ddlExlevel2" runat="server" CssClass="form-control">
                                        <asp:ListItem Value="0">--SELECT--</asp:ListItem>
                                        <asp:ListItem Value="Beginner">Beginner</asp:ListItem>
                                        <asp:ListItem Value="Conversational">Conversational</asp:ListItem>
                                        <asp:ListItem Value="Fluent">Fluent</asp:ListItem>
                                        <asp:ListItem Value="Expert">Expert</asp:ListItem>
                                    </asp:DropDownList>
									
									
									</div>
							</div>	
							<div class="clear"></div>
							<br />
                                <asp:Repeater ID="langrepeater" runat="server" OnItemCommand="langrepeater_ItemCommand">
                                    <HeaderTemplate>
                                        <table width="300px" border="1px">
                                            <tr>
                                                <td>S.No</td>
                                                <td>Language Name</td>
                                                <td>Expertise level</td>
                                                <td>Options</td>
                                            </tr>

                                        </table>
                                    </HeaderTemplate>
                                    <ItemTemplate>
                                        <tr>
                                            <tb>
                                                <%# Container.ItemIndex+1 %>
                                            </tb>
                                            <td>
                                                <asp:Label runat="server" ID="lbid" Text='<%#("languagename") %>'></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label runat="server" ID="lblfname" Text='<%#("Expertise") %>'></asp:Label>
                                            </td>
                                            <td>
                                                <asp:LinkButton ID="lnkRemove" CommandName="delete" CommandArgument='<%#Eval("sno")+"^"+Eval("Employeeid") %>' runat="server"  OnClientClick='javascript:return confirm("Are you sure you want to delete?")'>Delete</asp:LinkButton>
                                            </td>
                                        </tr>
                                    </ItemTemplate>
                                </asp:Repeater>
							<div class="col-md-3"> Additional Languages
								<asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ValidationGroup="fill" ControlToValidate="txtpassno" ErrorMessage="*" Font-Bold="true" ForeColor="Red"></asp:RequiredFieldValidator>
                                &nbsp;<div class="input-group"><span class="input-group-addon">௹</span>
									<asp:DropDownList ID="ddlalan1" runat="server" CssClass="form-control">
                                        <asp:ListItem Value="0">--SELECT--</asp:ListItem>
                                        <asp:ListItem Value="Kannada">Kannada</asp:ListItem>
                                        <asp:ListItem Value="Telugu">Telugu</asp:ListItem>
                                        <asp:ListItem Value="Tamil">Tamil</asp:ListItem>
                                    </asp:DropDownList>
									
									</div>
							</div>
                                <div class="col-md-3"> Expertize Level
								<asp:RequiredFieldValidator ID="RequiredFieldValidator39" runat="server" ValidationGroup="fill" ControlToValidate="txtpassno" ErrorMessage="*" Font-Bold="true" ForeColor="Red"></asp:RequiredFieldValidator>
                                &nbsp;<div class="input-group"><span class="input-group-addon"><i class="entypo-chart-bar"></i></span>
									<asp:DropDownList ID="ddleleveladdleng" runat="server" CssClass="form-control">
                                        <asp:ListItem Value="0">--SELECT--</asp:ListItem>
                                        <asp:ListItem Value="Beginner">Beginner</asp:ListItem>
                                        <asp:ListItem Value="Conversational">Conversational</asp:ListItem>
                                        <asp:ListItem Value="Fluent">Fluent</asp:ListItem>
                                        <asp:ListItem Value="Expert">Expert</asp:ListItem>
                                    </asp:DropDownList>
									
									
									</div>
							</div>
                                
                                 <asp:Button ID="Button1" runat="server" OnClick="Button1_Click"  Text="Add Language" />
							</div>
                                <br />
                                <div class="panel-heading">
				<div class="panel-title">
					<h3>3. Office Address</h3>
				</div>
			</div><br />
							<div class="col-md-4"> Address Line 1 
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" ValidationGroup="fill" ControlToValidate="txtoaline1" ErrorMessage="*" Font-Bold="true" ForeColor="Red"></asp:RequiredFieldValidator>
								<div class="input-group">
										<span class="input-group-addon">🏠</span>
                                    <asp:TextBox ID="txtoaline1" runat="server" CssClass="form-control"></asp:TextBox>
									</div>
							</div>							
							<div class="col-md-4"> Address Line 2
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator22" runat="server" ValidationGroup="fill" ControlToValidate="txtoaline2" ErrorMessage="*" Font-Bold="true" ForeColor="Red"></asp:RequiredFieldValidator>
								<div class="input-group">
										<span class="input-group-addon">📍</span>
                                    <asp:TextBox ID="txtoaline2" runat="server" CssClass="form-control"></asp:TextBox>
									</div>
							</div>					
							<div class="col-md-4"> City
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator23" runat="server" ValidationGroup="fill" ControlToValidate="txtocity" ErrorMessage="*" Font-Bold="true" ForeColor="Red"></asp:RequiredFieldValidator>
								<div class="input-group">
										<span class="input-group-addon">🏢</span>
                                    <asp:TextBox ID="txtocity" runat="server" CssClass="form-control"></asp:TextBox>
									</div>
							</div><div class="clear"></div>
							<br />
							<div class="col-md-4"> State
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator24" runat="server" ValidationGroup="fill" ControlToValidate="txtostate" ErrorMessage="*" Font-Bold="true" ForeColor="Red"></asp:RequiredFieldValidator>
								<div class="input-group">
										<span class="input-group-addon">🗺</span>
                                    <asp:TextBox ID="txtostate" runat="server" CssClass="form-control"></asp:TextBox>
									</div>
							</div><div class="col-md-4"> Country
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator25" runat="server" ValidationGroup="fill" ControlToValidate="txtocountry" ErrorMessage="*" Font-Bold="true" ForeColor="Red"></asp:RequiredFieldValidator>
								<div class="input-group">
										<span class="input-group-addon">🌍</span>
                                    <asp:TextBox ID="txtocountry" runat="server" CssClass="form-control"></asp:TextBox>
									</div>
							</div>
							<div class="col-md-4"> Zipcode
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator26" runat="server" ValidationGroup="fill" ControlToValidate="txtozcode" ErrorMessage="*" Font-Bold="true" ForeColor="Red"></asp:RequiredFieldValidator>
								<div class="input-group">
										<span class="input-group-addon">🔢</span>
                                    <asp:TextBox ID="txtozcode" runat="server" CssClass="form-control" onkeypress="return isNumberKey(event)"></asp:TextBox>
									</div>
							</div><div class="clear"></div><br /><div class="panel-heading">
				<div class="panel-title">
					<h3>4. Residential Address</h3>
				</div>
			</div><br />
							<div class="col-md-4"> Address Line 1
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator27" runat="server" ValidationGroup="fill" ControlToValidate="txtraline1" ErrorMessage="*" Font-Bold="true" ForeColor="Red"></asp:RequiredFieldValidator>
								<div class="input-group">
										<span class="input-group-addon">🏠</span>
										<asp:TextBox ID="txtraline1" name = "txtraline1" runat="server" CssClass="form-control"></asp:TextBox>
									</div>
							</div>							
							<div class="col-md-4"> Address Line 2
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator28" runat="server" ValidationGroup="fill" ControlToValidate="txtraline2" ErrorMessage="*" Font-Bold="true" ForeColor="Red"></asp:RequiredFieldValidator>
								<div class="input-group">
										<span class="input-group-addon">📍</span>
										<asp:TextBox ID="txtraline2" name = "txtraline2" runat="server" CssClass="form-control"></asp:TextBox>
									</div>
							</div>					
							<div class="col-md-4"> City
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator29" runat="server" ValidationGroup="fill" ControlToValidate="txtrcity" ErrorMessage="*" Font-Bold="true" ForeColor="Red"></asp:RequiredFieldValidator>
								<div class="input-group">
										<span class="input-group-addon">🏢</span>
										<asp:TextBox ID="txtrcity" name = "txtrcity" runat="server" CssClass="form-control"></asp:TextBox>
									</div>
							</div><div class="clear"></div>
							<br />
							<div class="col-md-4"> State
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator30" runat="server" ValidationGroup="fill" ControlToValidate="txtrstate" ErrorMessage="*" Font-Bold="true" ForeColor="Red"></asp:RequiredFieldValidator>
								<div class="input-group">
										<span class="input-group-addon">🌍</span>
										<asp:TextBox ID="txtrstate" name = "txtrstate" runat="server" CssClass="form-control"></asp:TextBox>
									</div>
							</div><div class="col-md-4"> Country
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator31" runat="server" ValidationGroup="fill" ControlToValidate="txtrcountry" ErrorMessage="*" Font-Bold="true" ForeColor="Red"></asp:RequiredFieldValidator>
								<div class="input-group">
										<span class="input-group-addon">🗺</span>
										<asp:TextBox ID="txtrcountry" name = "txtrcountry" runat="server" CssClass="form-control"></asp:TextBox>
									</div>
							</div>
							<div class="col-md-4"> Zipcode
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator32" runat="server" ValidationGroup="fill" ControlToValidate="txtrzcode" ErrorMessage="*" Font-Bold="true" ForeColor="Red"></asp:RequiredFieldValidator>
								<div class="input-group">
										<span class="input-group-addon">🔢</span>
										<asp:TextBox ID="txtrzcode" name = "txtrzcode" runat="server" CssClass="form-control" onkeypress="return isNumberKey(event)"></asp:TextBox>
									</div>
							</div><div class="clear"></div><br />
				
           
					
                   <div class="panel-heading">
					<h3>5. Permanent Address</h3>
			</div><br />
							<div class="col-md-4"> Address Line 1
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator33" runat="server" ValidationGroup="fill" ControlToValidate="txtpaline1" ErrorMessage="*" Font-Bold="true" ForeColor="Red"></asp:RequiredFieldValidator>
								<div class="input-group">
										<span class="input-group-addon">🏠</span>
										<asp:TextBox ID="txtpaline1" name = "txtpaline1" runat="server" CssClass="form-control"></asp:TextBox>
									</div>
							</div>							
							<div class="col-md-4"> Address Line 2
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator34" runat="server" ValidationGroup="fill" ControlToValidate="txtpaline2" ErrorMessage="*" Font-Bold="true" ForeColor="Red"></asp:RequiredFieldValidator>
								<div class="input-group">
										<span class="input-group-addon">📍</span>
										<asp:TextBox ID="txtpaline2" name = "txtpaline2" runat="server" CssClass="form-control"></asp:TextBox>
									</div>
							</div>					
							<div class="col-md-4"> City
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator35" runat="server" ValidationGroup="fill" ControlToValidate="txtpcity" ErrorMessage="*" Font-Bold="true" ForeColor="Red"></asp:RequiredFieldValidator>
								<div class="input-group">
										<span class="input-group-addon">🏢</span>
										<asp:TextBox ID="txtpcity" name = "txtpcity" runat="server" CssClass="form-control"></asp:TextBox>
									</div>
							</div><div class="clear"></div>
							<br />
							<div class="col-md-4"> State
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator36" runat="server" ValidationGroup="fill" ControlToValidate="txtpstate" ErrorMessage="*" Font-Bold="true" ForeColor="Red"></asp:RequiredFieldValidator>
								<div class="input-group">
										<span class="input-group-addon">🌍</span>
										<asp:TextBox ID="txtpstate" name = "txtpstate" runat="server" CssClass="form-control"></asp:TextBox>
									</div>
							</div><div class="col-md-4"> Country
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator37" runat="server" ValidationGroup="fill" ControlToValidate="txtpcountry" ErrorMessage="*" Font-Bold="true" ForeColor="Red"></asp:RequiredFieldValidator>
								<div class="input-group">
										<span class="input-group-addon">🗺</span>
										<asp:TextBox ID="txtpcountry" name = "txtpcountry" runat="server" CssClass="form-control"></asp:TextBox>
									</div>
							</div>
							<div class="col-md-4"> Zipcode
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator38" runat="server" ValidationGroup="fill" ControlToValidate="txtpzcode" ErrorMessage="*" Font-Bold="true" ForeColor="Red"></asp:RequiredFieldValidator>
								<div class="input-group">
										<span class="input-group-addon">🔢</span>
										<asp:TextBox ID="txtpzcode" name = "txtpzcode" runat="server"  CssClass="form-control" onkeypress="return isNumberKey(event)"></asp:TextBox>
									</div>
							</div><div class="clear"></div><br />
						</div><p class="bs-example bs-baseline-top">
                            <asp:Button runat="server" ID="btnbutton" OnClick="btnbutton_Click" Text="Submit" ValidationGroup="fill" CssClass="btn btn-primary btn-block" />
						</p>
					</div>
		        		
		</div>
            </ContentTemplate>
        <Triggers>
            <asp:PostBackTrigger ControlID="btnbutton" />
        </Triggers>
        </asp:UpdatePanel>
</asp:Content>
