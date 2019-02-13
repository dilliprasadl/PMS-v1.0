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
    <script type="text/javascript">

        var specialKeys = new Array();

        specialKeys.push(8); //Backspace

        $(function () {

            $(".numeric").bind("keypress", function (e) {

                var keyCode = e.which ? e.which : e.keyCode

                var ret = ((keyCode >= 48 && keyCode <= 57) || specialKeys.indexOf(keyCode) != -1);

                $(".error").css("display", ret ? "none" : "inline");

                return ret;

            });

            $(".numeric").bind("paste", function (e) {

                return false;

            });

            $(".numeric").bind("drop", function (e) {

                return false;

            });

        });

        </script>



    <script type="text/javascript">



        function onlyAlphabets(e, t) {

            try {

                if (window.event) {

                    var charCode = window.event.keyCode;

                }

                else if (e) {

                    var charCode = e.which;

                }

                else { return true; }

                if ((charCode > 64 && charCode < 91) || (charCode > 96 && charCode < 123))

                    return true;

                else

                    return false;

            }

            catch (err) {

                alert(err.Description);

            }

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
							<div class="col-md-3"> First Name
								<div class="input-group">
										<span class="input-group-addon"><i class="entypo-user"></i></span>
                                    <asp:TextBox ID="txtfname" runat="server" CssClass="form-control"></asp:TextBox>
									</div>
							</div>							
							<div class="col-md-3"> Last Name
								<div class="input-group">
										<span class="input-group-addon"><i class="entypo-user"></i></span>
                                    <asp:TextBox ID="txtlaname" runat="server" CssClass="form-control"></asp:TextBox>
									</div>
							</div>							
							<div class="col-md-3"> Gender
								<div class="input-group">
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
							<%--<div class="col-md-3"> Please Enter in (YYYY-MM-DD) Format--%>
								<div class="input-group">
										<span class="input-group-addon"><i class="entypo-clipboard"></i></span>
                                    <asp:TextBox ID="txtdob" runat="server" CssClass="form-control"></asp:TextBox>
									</div>
							</div>
							<div class="clear"></div>
							<br />
							<div class="col-md-3"> Primary Mobile
								<div class="input-group">
										<span class="input-group-addon"><i class="entypo-phone"></i></span>
                                    <asp:TextBox ID="txtmnumber" runat="server" CssClass="form-control"></asp:TextBox>
									</div>
							</div>
							<div class="col-md-3"> Secondary Mobile
								<div class="input-group">
										<span class="input-group-addon"><i class="entypo-phone"></i></span>
                                    <asp:TextBox ID="txtanumber" runat="server" CssClass="form-control"></asp:TextBox>
									</div>
							</div>						
							<div class="col-md-3"> Primary Email ID
								<div class="input-group">
										<span class="input-group-addon"><i class="entypo-mail"></i></span>
                                    <asp:TextBox ID="txtemail" runat="server" CssClass="form-control"></asp:TextBox>
									</div>
							</div>
							<div class="col-md-3"> Alternate Email ID
								<div class="input-group">
										<span class="input-group-addon"><i class="entypo-mail"></i></span>
                                    <asp:TextBox ID="txtaemail" runat="server" CssClass="form-control"></asp:TextBox>
									</div>
							</div>
							<div class="clear"></div><br />
							<div class="col-md-3"> Father Name
								<div class="input-group">
										<span class="input-group-addon"><i class="entypo-users"></i></span>
                                    <asp:TextBox ID="txtfaname" runat="server" CssClass="form-control"></asp:TextBox>
									</div>
							</div>			
							<div class="col-md-3"> Mother Name
								<div class="input-group">
										<span class="input-group-addon"><i class="entypo-users"></i></span>
										<asp:TextBox ID="txtmoname" runat="server" CssClass="form-control"></asp:TextBox>
									</div>
							</div>							
							<div class="col-md-3"> Aadhaar Number
								<div class="input-group">
										<span class="input-group-addon"><i class="entypo-book"></i></span>
										<asp:TextBox ID="txtacno" runat="server" CssClass="form-control"></asp:TextBox>
									</div>
							</div>	
							<div class="col-md-3"> PAN Card Number
								<div class="input-group">
										<span class="input-group-addon"><i class="entypo-book"></i></span>
										<asp:TextBox ID="txtpcno" runat="server" CssClass="form-control"></asp:TextBox>
									</div>
							</div><div class="clear"></div><br />
							<div class="col-md-3"> Passport ID
								<div class="input-group">
										<span class="input-group-addon"><i class="entypo-book"></i></span>
										<asp:TextBox ID="txtpassno" runat="server" CssClass="form-control"></asp:TextBox>
									</div>
							</div>			
							<div class="col-md-3"> Username
								<div class="input-group">
										<span class="input-group-addon">@</span>
										<asp:TextBox ID="txtuname" runat="server" CssClass="form-control"></asp:TextBox>
									</div>
							</div>
							<div class="col-md-3"> Password
								<div class="input-group">
										<span class="input-group-addon">★</span>
										<asp:TextBox ID="txtpwd" runat="server" CssClass="form-control"></asp:TextBox>
									</div>
							</div><div class="clear"></div><br />
							<div class="form-group">
							<div class="col-md-6"> Upload Photo
								<asp:FileUpload ID="uploadphoto" runat="server" />
							</div>
							<div class="col-md-6"> Upload Other Files
								<asp:FileUpload ID="Uploadofiles" runat="server" />
							</div>
							<div class="clear"></div><br />
							<div class="panel-heading">
				<div class="panel-title">
					<h3>2. Language Skill Set</h3>
				</div>
			</div><br />
<table><tr>
                  <td colspan="9">
                      <asp:GridView ID="gv1" runat="server" BackColor="LightGoldenrodYellow"  BorderColor="Tan" BorderWidth="1px" CellPadding="2"  AutoGenerateColumns="false" ForeColor="Black" GridLines="None">
                      <AlternatingRowStyle BackColor="PaleGoldenrod" />
                      <Columns>
                      <asp:TemplateField HeaderText="S No">
                      <ItemTemplate>
                      <%#Container.DataItemIndex+1 %>
                      </ItemTemplate>
                      </asp:TemplateField>                       
                      <asp:BoundField DataField="languagename" HeaderText="Language Name" />
                      <asp:BoundField DataField="Expertise" HeaderText="Expertise level" />
                      </Columns>
                      <FooterStyle BackColor="Tan" />
                      <HeaderStyle BackColor="Tan" Font-Bold="True" />
                      <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                      <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                      <SortedAscendingCellStyle BackColor="#FAFAE7" />
                      <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                      <SortedDescendingCellStyle BackColor="#E1DB9C" />
                      <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                      </asp:GridView>  
                            </td>
                   </tr>
                     <tr><td>Language Known</td><td>:</td>
                         <td>
                               <asp:TextBox runat="server" ID="txtlknown"  onkeypress="return onlyAlphabets(event,this);"></asp:TextBox>
                        </td>
                        <td>Expertise Level</td><td>:</td>
                         <td colspan="4">
                            <asp:RadioButtonList ID="rblelevel" runat="server" RepeatDirection="Horizontal">
                                      <asp:ListItem>Basic</asp:ListItem>

                                              <asp:ListItem>Fluent</asp:ListItem>

                                     <asp:ListItem>Expert</asp:ListItem>

                            </asp:RadioButtonList>
                                                       
                         </td>

                              <td>

                                  <asp:Button ID="Button1" runat="server" Text="Add" OnClick="Button1_Click" /></td>

                              </tr>  

                    <tr>
</tr></table>
							<div class="panel-heading">
				<div class="panel-title">
					<h3>3. Office Address</h3>
				</div>
			</div><br />
							<div class="col-md-4"> Address Line 1
								<div class="input-group">
										<span class="input-group-addon">🏠</span>
                                    <asp:TextBox ID="txtoaline1" runat="server" CssClass="form-control"></asp:TextBox>
									</div>
							</div>							
							<div class="col-md-4"> Address Line 2
								<div class="input-group">
										<span class="input-group-addon">📍</span>
                                    <asp:TextBox ID="txtoaline2" runat="server" CssClass="form-control"></asp:TextBox>
									</div>
							</div>					
							<div class="col-md-4"> City
								<div class="input-group">
										<span class="input-group-addon">🏢</span>
                                    <asp:TextBox ID="txtocity" runat="server" CssClass="form-control"></asp:TextBox>
									</div>
							</div><div class="clear"></div>
							<br />
							<div class="col-md-4"> State
								<div class="input-group">
										<span class="input-group-addon">🌍</span>
                                    <asp:TextBox ID="txtostate" runat="server" CssClass="form-control"></asp:TextBox>
									</div>
							</div><div class="col-md-4"> Country
								<div class="input-group">
										<span class="input-group-addon">🗺</span>
                                    <asp:TextBox ID="txtocountry" runat="server" CssClass="form-control"></asp:TextBox>
									</div>
							</div>
							<div class="col-md-4"> Zipcode
								<div class="input-group">
										<span class="input-group-addon">🔢</span>
                                    <asp:TextBox ID="txtozcode" runat="server" CssClass="form-control"></asp:TextBox>
									</div>
							</div><div class="clear"></div><br /><div class="panel-heading">
				<div class="panel-title">
					<h3>4. Residential Address</h3>
				</div>
			</div><br />
							<div class="col-md-4"> Address Line 1
								<div class="input-group">
										<span class="input-group-addon">🏠</span>
										<asp:TextBox ID="txtraline1" runat="server" CssClass="form-control"></asp:TextBox>
									</div>
							</div>							
							<div class="col-md-4"> Address Line 2
								<div class="input-group">
										<span class="input-group-addon">📍</span>
										<asp:TextBox ID="txtraline2" runat="server" CssClass="form-control"></asp:TextBox>
									</div>
							</div>					
							<div class="col-md-4"> City
								<div class="input-group">
										<span class="input-group-addon">🏢</span>
										<asp:TextBox ID="txtrcity" runat="server" CssClass="form-control"></asp:TextBox>
									</div>
							</div><div class="clear"></div>
							<br />
							<div class="col-md-4"> State
								<div class="input-group">
										<span class="input-group-addon">🌍</span>
										<asp:TextBox ID="txtrstate" runat="server" CssClass="form-control"></asp:TextBox>
									</div>
							</div><div class="col-md-4"> Country
								<div class="input-group">
										<span class="input-group-addon">🗺</span>
										<asp:TextBox ID="txtrcountry" runat="server" CssClass="form-control"></asp:TextBox>
									</div>
							</div>
							<div class="col-md-4"> Zipcode
								<div class="input-group">
										<span class="input-group-addon">🔢</span>
										<asp:TextBox ID="txtrzcode" runat="server" CssClass="form-control"></asp:TextBox>
									</div>
							</div><div class="clear"></div><br /><div class="panel-heading">
				<div class="panel-title">
					
					<script>
					function copydata(f) {
  if(f.copytoo.checked == true) {
    txtpaddline1.value = txtraline1.value;
    txtpcity.value = txtrcity.value;
    txtpaddline2.value = txtraddline2.value;
    txtpstate.value = txtrstate.value;
    txtpcountry.value = txtrcountry.value;
    txtpzipcode.value = txtrzcode.value;
  }
}

    </script>
                    <asp:CheckBox ID="copy" runat="server" />
<em>Check this box if Residential Address and Permanent Address are the same.</em><br /><br />
					<h3>5. Permanent Address</h3>
				</div>
			</div><br />
							<div class="col-md-4"> Address Line 1
								<div class="input-group">
										<span class="input-group-addon">🏠</span>
										<asp:TextBox ID="txtpaline1" runat="server" CssClass="form-control"></asp:TextBox>
									</div>
							</div>							
							<div class="col-md-4"> Address Line 2
								<div class="input-group">
										<span class="input-group-addon">📍</span>
										<asp:TextBox ID="txtpaline2" runat="server" CssClass="form-control"></asp:TextBox>
									</div>
							</div>					
							<div class="col-md-4"> City
								<div class="input-group">
										<span class="input-group-addon">🏢</span>
										<asp:TextBox ID="txtpcity" runat="server" CssClass="form-control"></asp:TextBox>
									</div>
							</div><div class="clear"></div>
							<br />
							<div class="col-md-4"> State
								<div class="input-group">
										<span class="input-group-addon">🌍</span>
										<asp:TextBox ID="txtpstate" runat="server" CssClass="form-control"></asp:TextBox>
									</div>
							</div><div class="col-md-4"> Country
								<div class="input-group">
										<span class="input-group-addon">🗺</span>
										<asp:TextBox ID="txtpcountry" runat="server" CssClass="form-control"></asp:TextBox>
									</div>
							</div>
							<div class="col-md-4"> Zipcode
								<div class="input-group">
										<span class="input-group-addon">🔢</span>
										<asp:TextBox ID="txtpzcode" runat="server" CssClass="form-control"></asp:TextBox>
									</div>
							</div><div class="clear"></div><br />
						</div><p class="bs-example bs-baseline-top">
                            <asp:Button runat="server" ID="btnbutton" Visible="false" OnClick="btnbutton_Click" Text="Submit" ValidationGroup="fill" CssClass="btn btn-primary btn-block" />

                                <asp:Button runat="server" ID="btn_update"  Visible="false" OnClick="btn_update_Click" Text="Update" ValidationGroup="fill" CssClass="btn btn-primary btn-block"/>
						</p>
					</div>
		        		
		</div>
            </ContentTemplate>
        <Triggers>
            <asp:PostBackTrigger ControlID="btnbutton" />
        </Triggers>
        </asp:UpdatePanel>
</asp:Content>
