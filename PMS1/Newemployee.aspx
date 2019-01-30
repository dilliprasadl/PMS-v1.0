<%@ Page Title="PMS | New Employee" Language="C#" MasterPageFile="~/Newprocess.Master" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="Newemployee.aspx.cs" Inherits="PMS1.Newemployee" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>  
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
    <style>
        [type=checkbox]:checked, [type=checkbox]:not(:checked) {
            position: absolute;
            opacity: 0;
        }

        .table th, .table thead th {
            border: 1px solid #f1f1f1;
            font-weight: 600;
            text-align: center;
        }

        /*.table {
            width: 100%;
            max-width: 100%;
            margin-bottom: 1rem;
            background-color: transparent;
            font-size: 13px;
            overflow: scroll;
        }*/

        /*.form-horizontal label {
            margin-bottom: 0px;
            font-family: 'Mallanna', sans-serif;
            font-size: 15px;
        }*/

        /*.form-group {
            margin-bottom: 0px;
        }*/

        /*.form-control {
            color: #67757c;
            min-height: 38px;
            display: initial;
        }*/

        .card-body {
            -ms-flex: 1 1 auto;
            flex: 1 1 auto;
            padding: 1.25rem;
        }

        /*.row {
            display: -ms-flexbox;
            display: flex;
            -ms-flex-wrap: wrap;
            flex-wrap: wrap;
            margin-right: -15px;
            margin-left: -15px;
        }*/

        /*.col-md-3 {
            -ms-flex: 0 0 25%;
            flex: 0 0 25%;
            max-width: 25%;
        }*/
        .card-outline-info {
    border-color: #1976d2;
}
     
    </style>

    <%--<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>--%>

    <script src="scripts/jquerymin.js"></script>

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

    <asp:UpdatePanel ID="updatepanl" runat="server" UpdateMode="Conditional">
        <ContentTemplate>
            <div class="card card-outline-info" style="width: 1300px;">

                <div class="card-header">
                    <h3 class="m-b-0 text-white" style="font-family: 'Mallanna', sans-serif; font-size: 22px; text-align: center;">New Employee Registration</h3>
                </div>



                
                 <div class="card-header">
                    <h3 class="m-b-0 text-white" style="font-family: 'Mallanna', sans-serif; font-size: 15px;">Personal Information: </h3>
                </div>
                
            
                <table class="card-body" style="font-size:smaller;padding: 15px 30px 60px 80px;border:1px solid black">
                    <tr><td>First Name</td><td>:</td>
                        <td>
                            <asp:TextBox runat="server" ID="txtfname" onkeypress="return onlyAlphabets(event,this);" ValidationGroup="fill"></asp:TextBox>
                           
                             <asp:RequiredFieldValidator ID="rq1" runat="server" Font-Bold="true" Font-Size="Large"  ControlToValidate="txtfname" ErrorMessage="*" Display="Dynamic" SetFocusOnError="true" ForeColor="Red" ValidationGroup="fill"></asp:RequiredFieldValidator>
                          <%--<asp:RegularExpressionValidator ID="revname" runat="server" ControlToValidate="txtfname" 
                              Font-Bold="true" Font-Size="Medium" ErrorMessage="invalid" Display="Dynamic" 
                              SetFocusOnError="true" ForeColor="#99CC00" ValidationGroup="fill"></asp:RegularExpressionValidator>--%>
                        </td>
                             
                        <td>Last Name</td><td>:</td>
                        <td><asp:TextBox runat="server" ID="txtlaname"  onkeypress="return onlyAlphabets(event,this);"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rq2" runat="server" Font-Bold="true" Font-Size="Large"  ControlToValidate="txtlaname" ErrorMessage="*" Display="Dynamic" SetFocusOnError="true" ForeColor="Red" ValidationGroup="fill"></asp:RequiredFieldValidator>
                            <%-- <asp:RegularExpressionValidator ID="ren" runat="server" ControlToValidate="txtfname" Font-Bold="true" Font-Size="Medium" ErrorMessage="invalid" ValidationExpression="string" Display="Dynamic" SetFocusOnError="true" ForeColor="Red" ValidationGroup="fill"></asp:RegularExpressionValidator>--%>
                        </td>

                        <td>Gender</td><td>:</td>
                        <td>
                            <asp:DropDownList ID="ddlselect" runat="server">
                                      <asp:ListItem Value="0">--Please select--</asp:ListItem>
                                      <asp:ListItem Value="Male">Male</asp:ListItem>
                                              <asp:ListItem Value="Female">Female</asp:ListItem>
                                        </asp:DropDownList>
                             <asp:RequiredFieldValidator ID="rfvselect" runat="server" Font-Bold="true" Font-Size="Large"  InitialValue="0" ControlToValidate="ddlselect" ErrorMessage="*" Display="Dynamic" SetFocusOnError="true" ForeColor="Red" ValidationGroup="fill"></asp:RequiredFieldValidator>
                        </td>

                    </tr>
                                    
                          <tr>
                              <td>Date Of Birth</td><td>:</td>
                              <td>
                                  <asp:TextBox runat="server" ID="txtdob" placeholder="YYYY-MM-DD"></asp:TextBox>

                 
                    <%--<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox> 
                                   --%>
                    <%--<cc1:CalendarExtender ID="Calendar1"  runat="server" TargetControlID="txtdob" Format="yyyy-MM-dd"> </cc1:CalendarExtender>--%>

                                <%--  <asp:ImageButton ID="imagebutton" runat="server" ImageUrl="~/Calendar/calendar_blank.png" Height="15px" Width="15px" />
                                  <asp:Calendar ID="Calendar1" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" OnSelectionChanged="Calendar1_SelectionChanged" ShowGridLines="True" Visible="False" Width="220px">
                                      <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                                      <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                                      <OtherMonthDayStyle ForeColor="#CC9966" />
                                      <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                                      <SelectorStyle BackColor="#FFCC66" />
                                      <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                                      <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                                  </asp:Calendar>--%>
                                  <asp:RequiredFieldValidator ID="rfb" runat="server" Font-Bold="true" Font-Size="Large"  ControlToValidate="txtdob" ErrorMessage="*" Display="Dynamic" SetFocusOnError="true" ForeColor="Red" ValidationGroup="fill"></asp:RequiredFieldValidator>
                              </td>

                        <td>Mobile Number</td><td>:</td>
                              <td>
                                  <asp:TextBox runat="server" ID="txtmnumber"  class="numeric"></asp:TextBox>
                                  <asp:RequiredFieldValidator ID="rfvnumber" runat="server" Font-Bold="true" Font-Size="Large"  ControlToValidate="txtmnumber" ErrorMessage="*" Display="Dynamic" SetFocusOnError="true" ForeColor="Red" ValidationGroup="fill"></asp:RequiredFieldValidator>
                              </td>
                               <td>Alternate Number</td><td>:</td>
                              <td>
                                  <asp:TextBox runat="server" ID="txtanumber" class="numeric"></asp:TextBox>
                                  <asp:RequiredFieldValidator ID="rfvanumber" runat="server" Font-Bold="true" Font-Size="Large"  ControlToValidate="txtanumber" ErrorMessage="*" Display="Dynamic" SetFocusOnError="true" ForeColor="Red" ValidationGroup="fill"></asp:RequiredFieldValidator>
                              </td>
                              </tr>       
                                        
                           <tr><td>Email Id</td><td>:</td>
                               <td>
                                   <asp:TextBox runat="server" ID="txtemail"></asp:TextBox>
                                   <asp:RequiredFieldValidator ID="rfvemail" runat="server" Font-Bold="true" Font-Size="Large"  ControlToValidate="txtemail" ErrorMessage="*" Display="Dynamic" SetFocusOnError="true" ForeColor="Red" ValidationGroup="fill"></asp:RequiredFieldValidator>
                               </td>

                        <td>Alternate Email</td><td>:</td>
                               <td> 
                                   <asp:TextBox runat="server" ID="txtaemail"></asp:TextBox>
                                   <asp:RequiredFieldValidator ID="rfvaemail" runat="server" Font-Bold="true" Font-Size="Large"  ControlToValidate="txtaemail" ErrorMessage="*" Display="Dynamic" SetFocusOnError="true" ForeColor="Red" ValidationGroup="fill"></asp:RequiredFieldValidator>
                               </td>
                               <td>Father Name</td><td>:</td>
                               <td><asp:TextBox runat="server" ID="txtfaname"></asp:TextBox>
                                   <asp:RequiredFieldValidator ID="rfvfname" runat="server" Font-Bold="true" Font-Size="Large"  ControlToValidate="txtfaname" ErrorMessage="*" Display="Dynamic" SetFocusOnError="true" ForeColor="Red" ValidationGroup="fill"></asp:RequiredFieldValidator>
                               </td>
                              </tr>       
                                        
                              <tr><td>Mother Name</td><td>:</td>
                                  <td>
                                      <asp:TextBox runat="server" ID="txtmoname"  onkeypress="return onlyAlphabets(event,this);"></asp:TextBox>
                                      <asp:RequiredFieldValidator ID="rfvmname" runat="server" Font-Bold="true" Font-Size="Large"  ControlToValidate="txtmoname" ErrorMessage="*" Display="Dynamic" SetFocusOnError="true" ForeColor="Red" ValidationGroup="fill"></asp:RequiredFieldValidator>
                                  </td>

                        <td>Aadhaar Card No</td><td>:</td>
                                  <td>
                                      <asp:TextBox runat="server" ID="txtacno" class="numeric"></asp:TextBox>
                                      <asp:RequiredFieldValidator ID="rfvacno" runat="server" Font-Bold="true" Font-Size="Large"  ControlToValidate="txtacno" ErrorMessage="*" Display="Dynamic" SetFocusOnError="true" ForeColor="Red" ValidationGroup="fill"></asp:RequiredFieldValidator>
                                  </td>
                               <td>Pan Card No</td><td>:</td>
                                  <td>
                                      <asp:TextBox runat="server" ID="txtpcno"></asp:TextBox>
                                                                      
                                       </td>
                                    </tr>      
                          <tr><td>Passport No</td><td>:</td>
                              <td>
                                  <asp:TextBox runat="server" ID="txtpassno"></asp:TextBox>
                               
                              </td>

                        <td>User Name</td><td>:</td>
                              <td><asp:TextBox runat="server" ID="txtuname"  onkeypress="return onlyAlphabets(event,this);"></asp:TextBox>
                                  <asp:RequiredFieldValidator ID="rfvuname" runat="server" Font-Bold="true" Font-Size="Large"  ControlToValidate="txtuname" ErrorMessage="*" Display="Dynamic" SetFocusOnError="true" ForeColor="Red" ValidationGroup="fill"></asp:RequiredFieldValidator>
                              </td>
                               <td>Password</td><td>:</td>
                              <td><asp:TextBox runat="server" ID="txtpwd"></asp:TextBox>
                               
                                <asp:RequiredFieldValidator ID="rfvpwd" runat="server" Font-Bold="true" Font-Size="Large"  ControlToValidate="txtpwd" ErrorMessage="*" Display="Dynamic" SetFocusOnError="true" ForeColor="Red" ValidationGroup="fill"></asp:RequiredFieldValidator>
                              </td>
                              </tr>  
                   
                 <tr>
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
                                         
                                         
          <%--   <asp:TemplateField>  
                            <ItemTemplate>  
                                
                                <asp:LinkButton ID="lnkRemove" CommandName="delete" CommandArgument='<%#Eval("sno")+"^"+Eval("Employeeid") %>' runat="server" Text="Delete"></asp:LinkButton>  
                          
                  </ItemTemplate> 
                  </asp:TemplateField>  --%>

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
                             <asp:RequiredFieldValidator ID="rfvlang" runat="server" Font-Bold="true" Font-Size="Large" InitialValue="0" ControlToValidate="txtlknown" ErrorMessage="*" Display="Dynamic" SetFocusOnError="true" ForeColor="Red" ValidationGroup="fill"></asp:RequiredFieldValidator>
                        </td>

                        <td>Expertise Level</td><td>:</td>
                         <td colspan="4">
                            <asp:RadioButtonList ID="rblelevel" runat="server" RepeatDirection="Horizontal">
                                 
                                      <asp:ListItem>Basic</asp:ListItem>
                                              <asp:ListItem>Fluent</asp:ListItem>
                                     <asp:ListItem>Expert</asp:ListItem>
                            </asp:RadioButtonList>

                                     <asp:RequiredFieldValidator ID="rfvlevel" runat="server" Font-Bold="true" Font-Size="Large"  ControlToValidate="rblelevel" ErrorMessage="*" Display="Dynamic" SetFocusOnError="true" ForeColor="Red" ValidationGroup="fill"></asp:RequiredFieldValidator>                     
                             
                         </td>
                              <td>
                                  <asp:Button ID="Button1" runat="server" Text="Add" OnClick="Button1_Click" /></td>
                              </tr>  
                    <tr>
                        <td>Photo</td><td>:</td>
                        <td> 
                            <asp:FileUpload ID="uploadphoto" runat="server" />  
                            <asp:Label ID="lblmessage" runat="server" Font-Bold="true"></asp:Label>
                             <%--<asp:RequiredFieldValidator ID="rfvphoto" runat="server" Font-Bold="true" Font-Size="Large"  ControlToValidate="uploadphoto" ErrorMessage="*" Display="Dynamic" SetFocusOnError="true" ForeColor="Red" ValidationGroup="fill"></asp:RequiredFieldValidator>--%>
                         
                       </td>
                        <td>Otherfiles</td><td>:</td>
                        <td>
                             <asp:FileUpload ID="Uploadofiles" runat="server" />
                             <%--<asp:RequiredFieldValidator ID="rfvfiles" runat="server" Font-Bold="true" Font-Size="Large"  ControlToValidate="Uploadofiles" ErrorMessage="*" Display="Dynamic" SetFocusOnError="true" ForeColor="Red" ValidationGroup="fill"></asp:RequiredFieldValidator>--%> 
                        </td>
                         <%--<td><asp:Button ID="uploadbutton" runat="server" Text="fileaupload" onclick="UploadButton_Click" /></td>--%>
                    
                     </tr>
                    <tr>
                       <td><asp:Label ID="lblmessge" runat="server" Font-Bold="true"></asp:Label></td>
                    </tr>
                     </table>
                 


                      <div class="card-header">
                    <h3 class="m-b-0 text-white" style="font-family: 'Mallanna', sans-serif; font-size: 15px;">Residence Address</h3>
                </div>
                                              
                    <table class="card-body" style="font-size:smaller;padding: 15px 120px 60px 80px;border:1px solid black">
                         <tr><td>Address Line1</td><td>:</td>
                             <td>
                                 <asp:TextBox runat="server" ID="txtraline1"></asp:TextBox>
                                  <asp:RequiredFieldValidator ID="rfvline1" runat="server" Font-Bold="true" Font-Size="Large"  ControlToValidate="txtraline1" ErrorMessage="*" Display="Dynamic" SetFocusOnError="true" ForeColor="Red" ValidationGroup="fill"></asp:RequiredFieldValidator>
                             </td>

                        <td>Address Line2</td><td>:</td>
                             <td>
                                 <asp:TextBox runat="server" ID="txtraline2"></asp:TextBox>
                                  <asp:RequiredFieldValidator ID="rfvline2" runat="server" Font-Bold="true" Font-Size="Large"  ControlToValidate="txtraline2" ErrorMessage="*" Display="Dynamic" SetFocusOnError="true" ForeColor="Red" ValidationGroup="fill"></asp:RequiredFieldValidator>
                             </td>
                               <td>City</td><td>:</td>
                             <td>
                                 <asp:TextBox runat="server" ID="txtrcity"></asp:TextBox>
                                  <asp:RequiredFieldValidator ID="rfvcity" runat="server" Font-Bold="true" Font-Size="Large"  ControlToValidate="txtrcity" ErrorMessage="*" Display="Dynamic" SetFocusOnError="true" ForeColor="Red" ValidationGroup="fill"></asp:RequiredFieldValidator>
                             </td>
                              </tr> 
                         <tr><td>State</td><td>:</td>
                             <td>
                                 <asp:TextBox runat="server" ID="txtrstate"></asp:TextBox>
                                  <asp:RequiredFieldValidator ID="rfvstate" runat="server" Font-Bold="true" Font-Size="Large"  ControlToValidate="txtrstate" ErrorMessage="*" Display="Dynamic" SetFocusOnError="true" ForeColor="Red" ValidationGroup="fill"></asp:RequiredFieldValidator>
                             </td>

                        <td>Zip Code</td><td>:</td>
                             <td>
                                 <asp:TextBox runat="server" ID="txtrzcode"  class="numeric"></asp:TextBox>
                                  <asp:RequiredFieldValidator ID="rfvcode" runat="server" Font-Bold="true" Font-Size="Large"  ControlToValidate="txtrzcode" ErrorMessage="*" Display="Dynamic" SetFocusOnError="true" ForeColor="Red" ValidationGroup="fill"></asp:RequiredFieldValidator>
                             </td>
                              
                              </tr>
                        </table>        
                  <div class="card-header">
                    <h3 class="m-b-0 text-white" style="font-family: 'Mallanna', sans-serif; font-size: 15px;">Permanent Address</h3>
                </div>
                                              
                    <table class="card-body" style="font-size:smaller">
                         <tr><td>Address Line1</td><td>:</td>
                             <td>
                                 <asp:TextBox runat="server" ID="txtpaline1"></asp:TextBox>
                                  <asp:RequiredFieldValidator ID="rfvpline1" runat="server" Font-Bold="true" Font-Size="Large"  ControlToValidate="txtpaline1" ErrorMessage="*" Display="Dynamic" SetFocusOnError="true" ForeColor="Red" ValidationGroup="fill"></asp:RequiredFieldValidator>
                             </td>

                        <td>Address Line2</td><td>:</td>
                             <td>
                                 <asp:TextBox runat="server" ID="txtpaline2"></asp:TextBox>
                                  <asp:RequiredFieldValidator ID="rfvpline2" runat="server" Font-Bold="true" Font-Size="Large"  ControlToValidate="txtpaline2" ErrorMessage="*" Display="Dynamic" SetFocusOnError="true" ForeColor="Red" ValidationGroup="fill"></asp:RequiredFieldValidator>


                             </td>
                               <td>City</td><td>:</td>
                             <td>
                                 <asp:TextBox runat="server" ID="txtpcity"></asp:TextBox>
                                  <asp:RequiredFieldValidator ID="rfvpcity" runat="server" Font-Bold="true" Font-Size="Large"  ControlToValidate="txtpcity" ErrorMessage="*" Display="Dynamic" SetFocusOnError="true" ForeColor="Red" ValidationGroup="fill"></asp:RequiredFieldValidator>
                             </td>
                              </tr> 
                         <tr><td>State</td><td>:</td>
                             <td>
                                 <asp:TextBox runat="server" ID="txtpstate"></asp:TextBox>
                                  <asp:RequiredFieldValidator ID="rfvpstate" runat="server" Font-Bold="true" Font-Size="Large"  ControlToValidate="txtpstate" ErrorMessage="*" Display="Dynamic" SetFocusOnError="true" ForeColor="Red" ValidationGroup="fill"></asp:RequiredFieldValidator>
                             </td>

                        <td>Zip Code</td><td>:</td>
                             <td>
                                 <asp:TextBox runat="server" ID="txtpzcode"  class="numeric"></asp:TextBox>
                                  <asp:RequiredFieldValidator ID="rfvpcode" runat="server" Font-Bold="true" Font-Size="Large"  ControlToValidate="txtpzcode" ErrorMessage="*" Display="Dynamic" SetFocusOnError="true" ForeColor="Red" ValidationGroup="fill"></asp:RequiredFieldValidator>
                             </td>
                              
                              </tr>
                        </table>       
                 <div class="card-header">
                    <h3 class="m-b-0 text-white" style="font-family: 'Mallanna', sans-serif; font-size: 15px;">Office Address</h3>
                </div>
                                              
                    <table class="card-body" style="font-size:smaller">
                         <tr><td>Address Line1</td><td>:</td>
                             <td>
                                 <asp:TextBox runat="server" ID="txtoaline1"></asp:TextBox>
                                  <asp:RequiredFieldValidator ID="rfvaline1" runat="server" Font-Bold="true" Font-Size="Large"  ControlToValidate="txtoaline1" ErrorMessage="*" Display="Dynamic" SetFocusOnError="true" ForeColor="Red" ValidationGroup="fill"></asp:RequiredFieldValidator>
                             </td>

                        <td>Address Line2</td><td>:</td>
                             <td>
                                 <asp:TextBox runat="server" ID="txtoaline2"></asp:TextBox>
                                  <asp:RequiredFieldValidator ID="rfvaline2" runat="server" Font-Bold="true" Font-Size="Large"  ControlToValidate="txtoaline2" ErrorMessage="*" Display="Dynamic" SetFocusOnError="true" ForeColor="Red" ValidationGroup="fill"></asp:RequiredFieldValidator>
                             </td>
                               <td>City</td><td>:</td>
                             <td>
                                 <asp:TextBox runat="server" ID="txtocity"></asp:TextBox>
                                  <asp:RequiredFieldValidator ID="rfvocity" runat="server" Font-Bold="true" Font-Size="Large"  ControlToValidate="txtocity" ErrorMessage="*" Display="Dynamic" SetFocusOnError="true" ForeColor="Red" ValidationGroup="fill"></asp:RequiredFieldValidator>
                             </td>
                              </tr> 
                         <tr><td>State</td><td>:</td>
                             <td>
                                 <asp:TextBox runat="server" ID="txtostate"></asp:TextBox>
                                  <asp:RequiredFieldValidator ID="rfvostate" runat="server" Font-Bold="true" Font-Size="Large"  ControlToValidate="txtostate" ErrorMessage="*" Display="Dynamic" SetFocusOnError="true" ForeColor="Red" ValidationGroup="fill"></asp:RequiredFieldValidator>
                             </td>

                        <td>Zip Code</td><td>:</td>
                             <td><asp:TextBox runat="server" ID="txtozcode"  class="numeric"></asp:TextBox>
                                  <asp:RequiredFieldValidator ID="rfvocode" runat="server" Font-Bold="true" Font-Size="Large"  ControlToValidate="txtozcode" ErrorMessage="*" Display="Dynamic" SetFocusOnError="true" ForeColor="Red" ValidationGroup="fill"></asp:RequiredFieldValidator>
                             </td>
                              
                              </tr>


                        <tr>
                            <td style="align-content:center">
                            <asp:Button runat="server" ID="btnbutton" Visible="false" OnClick="btnbutton_Click" Text="Submit" ValidationGroup="fill" />
                                <asp:Button runat="server" ID="btn_update"  Visible="false" OnClick="btn_update_Click" Text="Update" ValidationGroup="fill" />

                            </td>

                        </tr>
                        </table> 


               
                </div>
             
            </ContentTemplate>

        <Triggers>
               
                <asp:PostBackTrigger ControlID="btnbutton" />
            </Triggers>
    </asp:UpdatePanel>
                            </asp:Content>      
                       

