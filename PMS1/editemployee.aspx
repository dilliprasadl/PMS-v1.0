<%@ Page Title="Edit | Employee" Language="C#" MasterPageFile = "~/Newprocess.Master" AutoEventWireup="true" CodeBehind="editemployee.aspx.cs" Inherits="PMS1.editemployee" %>
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
    <script>
        function copydata(f) {
  if(f.copytoo.checked == true) {
    f.txtraline1.value = f.txtpaline1.value;
    f.txtraline2.value = f.txtpaline2.value;
    f.txtrcity.value = f.txtpcity.value;
    f.txtrstate.value = f.txtpstate.value;
    f.txtrcountry.value = f.txtpcountry.value;
    f.txtrzcode.value = f.txtpzcode.value;
  }
}
  </script>  

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:UpdatePanel ID="updatepan1" runat="server" UpdateMode="Conditional">
        
        <ContentTemplate>
    <div class="main-content">
		<h2>Edit Employee</h2>
		<div class="panel panel-primary" data-collapsed="0">
			<div class="panel-heading">
				<div class="panel-title">
					<h3>1. Personal Information</h3>
				</div>
			</div><br  />
							<div class="col-md-3"> First Name
								<div class="input-group">
										<span class="input-group-addon"><i class="entypo-user"></i></span>
                      
                                    <asp:TextBox ID="fname" runat="server" CssClass="form-control"></asp:TextBox>
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
							<div class="col-md-3"> Date of Birth (YYYY-MM-DD) Format
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
                                    <asp:TextBox ID="txtmnumber" runat="server" CssClass="form-control" MaxLength="10" onkeypress="return isNumberKey(event)"></asp:TextBox>
                                    
									</div>
							</div>
							<div class="col-md-3"> Secondary Mobile
								<div class="input-group">
										<span class="input-group-addon"><i class="entypo-phone"></i></span>
                                    <asp:TextBox ID="txtanumber" runat="server" CssClass="form-control" MaxLength="10" onkeypress="return isNumberKey(event)"></asp:TextBox>
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
								<asp:FileUpload ID="uploadphoto" runat="server" /><br />
                                <asp:Button ID="btndownload" runat="server" Text="Download" OnClick="btndownload_Click"/>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required Field" ControlToValidate="uploadphoto"></asp:RequiredFieldValidator>
							</div>
							<div class="col-md-6"> Upload Other Files
								<asp:FileUpload ID="Uploadofiles" runat="server"/><br />
                                <asp:Button ID="btndownloadfile" runat="server" Text="Download" OnClick="btndownloadfile_Click" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Required Field" ControlToValidate="Uploadofiles"></asp:RequiredFieldValidator>
							</div>
							<div class="clear"></div><br />
							<div class="panel-heading">
				<div class="panel-title">
					<h3>2. Language Skill Set</h3>
				</div>
			</div><br /><div class="col-md-3"> Primary Language 1
								<div class="input-group"><span class="input-group-addon">௹</span>
                                    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" value="English" Enabled="false"></asp:TextBox>
									</div>
							</div>							
							<div class="col-md-3"> Expertize Level
								<div class="input-group"><span class="input-group-addon"><i class="entypo-chart-bar"></i></span>
									<asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control">
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
									<asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" value="Hindi" Enabled="false"></asp:TextBox>
									
									</div>
							</div>
							<div class="col-md-3"> Expertize Level
								<div class="input-group"><span class="input-group-addon"><i class="entypo-chart-bar"></i></span>
									<asp:DropDownList ID="DropDownList4" runat="server" CssClass="form-control">
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
							<div class="col-md-3"> Additional Language 1
								<div class="input-group"><span class="input-group-addon">௹</span>
									<asp:DropDownList ID="DropDownList5" runat="server" CssClass="form-control">
                                        <asp:ListItem Value="0">--SELECT--</asp:ListItem>
                                        <asp:ListItem Value="Kannada">Kannada</asp:ListItem>
                                        <asp:ListItem Value="Telugu">Telugu</asp:ListItem>
                                        <asp:ListItem Value="Tamil">Tamil</asp:ListItem>
                                    </asp:DropDownList>
									
									</div>
							</div>
							<div class="col-md-3"> Expertize Level
								<div class="input-group"><span class="input-group-addon"><i class="entypo-chart-bar"></i></span>
									<asp:DropDownList ID="DropDownList6" runat="server" CssClass="form-control">
                                        <asp:ListItem Value="0">--SELECT--</asp:ListItem>
                                        <asp:ListItem Value="Beginner">Beginner</asp:ListItem>
                                        <asp:ListItem Value="Conversational">Conversational</asp:ListItem>
                                        <asp:ListItem Value="Fluent">Fluent</asp:ListItem>
                                        <asp:ListItem Value="Expert">Expert</asp:ListItem>
                                    </asp:DropDownList>
									
									</div>
							</div>								
							<div class="col-md-3"> Additional Language 2
								<div class="input-group"><span class="input-group-addon">௹</span>
									<asp:DropDownList ID="DropDownList7" runat="server" CssClass="form-control">
                                        <asp:ListItem Value="0">--SELECT--</asp:ListItem>
                                        <asp:ListItem Value="Kannada">Kannada</asp:ListItem>
                                        <asp:ListItem Value="Telugu">Telugu</asp:ListItem>
                                        <asp:ListItem Value="Tamil">Tamil</asp:ListItem>
                                    </asp:DropDownList>
									</div>
							</div>
							<div class="col-md-3"> Expertize Level
								<div class="input-group"><span class="input-group-addon"><i class="entypo-chart-bar"></i></span>
									<asp:DropDownList ID="DropDownList8" runat="server" CssClass="form-control">
                                        <asp:ListItem Value="0">--SELECT--</asp:ListItem>
                                        <asp:ListItem Value="Beginner">Beginner</asp:ListItem>
                                        <asp:ListItem Value="Conversational">Conversational</asp:ListItem>
                                        <asp:ListItem Value="Fluent">Fluent</asp:ListItem>
                                        <asp:ListItem Value="Expert">Expert</asp:ListItem>
                                    </asp:DropDownList>
									</div>
							</div>	
							<div class="clear"></div><br />
			
<%--<table><tr>
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
                           
							
                               <asp:TextBox runat="server" ID="txtlknown"  onkeypress="return onlyAlphabets(event,this);" CssClass="form-control"></asp:TextBox>
                        
                                 </td>
                         </tr>
                         

                              </tr>  

                    <tr>
                        <td>Expertise Level</td>
                        <td>:</td>
                        <td colspan="4">
                            <asp:RadioButtonList ID="rblelevel" runat="server" RepeatDirection="Horizontal">
                                <asp:ListItem>Basic</asp:ListItem>
                                <asp:ListItem>Fluent</asp:ListItem>
                                <asp:ListItem>Expert</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                        <td>
                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add" />
                        </td>
    </tr>
                                </table>--%>

                                </div><br />
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
                                    <asp:TextBox ID="txtozcode" runat="server" CssClass="form-control" onkeypress="return isNumberKey(event)"></asp:TextBox>
									</div>
							</div><div class="clear"></div><br /><div class="panel-heading">
				<div class="panel-title">
					<h3>4. Residential Address</h3>
				</div>
			</div><br />
							<div class="col-md-4"> Address Line 1
								<div class="input-group">
										<span class="input-group-addon">🏠</span>
										<asp:TextBox ID="txtraline1" name = "txtraline1" runat="server" CssClass="form-control"></asp:TextBox>
									</div>
							</div>							
							<div class="col-md-4"> Address Line 2
								<div class="input-group">
										<span class="input-group-addon">📍</span>
										<asp:TextBox ID="txtraline2" name = "txtraline2" runat="server" CssClass="form-control"></asp:TextBox>
									</div>
							</div>					
							<div class="col-md-4"> City
								<div class="input-group">
										<span class="input-group-addon">🏢</span>
										<asp:TextBox ID="txtrcity" name = "txtrcity" runat="server" CssClass="form-control"></asp:TextBox>
									</div>
							</div><div class="clear"></div>
							<br />
							<div class="col-md-4"> State
								<div class="input-group">
										<span class="input-group-addon">🌍</span>
										<asp:TextBox ID="txtrstate" name = "txtrstate" runat="server" CssClass="form-control"></asp:TextBox>
									</div>
							</div><div class="col-md-4"> Country
								<div class="input-group">
										<span class="input-group-addon">🗺</span>
										<asp:TextBox ID="txtrcountry" name = "txtrcountry" runat="server" CssClass="form-control"></asp:TextBox>
									</div>
							</div>
							<div class="col-md-4"> Zipcode
								<div class="input-group">
										<span class="input-group-addon">🔢</span>
										<asp:TextBox ID="txtrzcode" name = "txtrzcode" runat="server" CssClass="form-control" onkeypress="return isNumberKey(event)"></asp:TextBox>
									</div>
							</div><div class="clear"></div><br />
				
            <asp:CheckBox ID="copytoo" runat="server" onclick="copydata(this.form)"/>
<em>Check this box if Residential Address and Permanent Address are the same.</em><br><br>	
					
                   <div class="panel-heading">
					<h3>5. Permanent Address</h3>
			</div><br />
							<div class="col-md-4"> Address Line 1
								<div class="input-group">
										<span class="input-group-addon">🏠</span>
										<asp:TextBox ID="txtpaline1" name = "txtpaline1" runat="server" CssClass="form-control"></asp:TextBox>
									</div>
							</div>							
							<div class="col-md-4"> Address Line 2
								<div class="input-group">
										<span class="input-group-addon">📍</span>
										<asp:TextBox ID="txtpaline2" name = "txtpaline2" runat="server" CssClass="form-control"></asp:TextBox>
									</div>
							</div>					
							<div class="col-md-4"> City
								<div class="input-group">
										<span class="input-group-addon">🏢</span>
										<asp:TextBox ID="txtpcity" name = "txtpcity" runat="server" CssClass="form-control"></asp:TextBox>
									</div>
							</div><div class="clear"></div>
							<br />
							<div class="col-md-4"> State
								<div class="input-group">
										<span class="input-group-addon">🌍</span>
										<asp:TextBox ID="txtpstate" name = "txtpstate" runat="server" CssClass="form-control"></asp:TextBox>
									</div>
							</div><div class="col-md-4"> Country
								<div class="input-group">
										<span class="input-group-addon">🗺</span>
										<asp:TextBox ID="txtpcountry" name = "txtpcountry" runat="server" CssClass="form-control"></asp:TextBox>
									</div>
							</div>
							<div class="col-md-4"> Zipcode
								<div class="input-group">
										<span class="input-group-addon">🔢</span>
										<asp:TextBox ID="txtpzcode" name = "txtpzcode" runat="server" CssClass="form-control" onkeypress="return isNumberKey(event)"></asp:TextBox>
									</div>
							</div><div class="clear"></div><br />
						</div><p class="bs-example bs-baseline-top">

                                <asp:Button runat="server" ID="btn_update"  Visible="True" OnClick="btn_update_Click" Text="Update" ValidationGroup="fill" CssClass="btn btn-primary btn-block"/>
						</p>
					</div>
		        		
		</div>
            </ContentTemplate>
        <%--<Triggers>
            <asp:PostBackTrigger ControlID="btnbutton" />
        </Triggers>--%>
        </asp:UpdatePanel>
</asp:Content>


