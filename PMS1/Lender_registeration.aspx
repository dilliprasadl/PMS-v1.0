<%@ Page Title="" Language="C#" MasterPageFile="Newprocess.Master" EnableEventValidation="false" AutoEventWireup="true" CodeBehind="Lender_registeration.aspx.cs" Inherits="PMS1.Client_registeration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%--<div>
        <table>
            <tr>
                <td>ClientName</td>
                <td>
                     <asp:TextBox ID="txtcname" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>ClientCode</td>
                <td> <asp:TextBox ID="txtcode" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>ContactName</td>
                <td>
                       <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>ContactNumbe</td>
                <td><asp:TextBox ID="txtnumber" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td> EmailId</td>
                <td>
                     <asp:TextBox ID="txtEid" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>BranchName</td>
                <td>
                    <asp:TextBox ID="txtbname" runat="server"></asp:TextBox>
    
                </td>
            </tr>
            <tr>
                <td>StreetName</td>
                <td>
                    <asp:TextBox ID="txtsname" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Town</td>
                <td>
                     <asp:TextBox ID="txttown" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>State</td>
                <td>
                    <asp:TextBox ID="txtstate" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>PinCode</td>
                <td>
                    <asp:TextBox ID="txtpincode" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td><asp:Button ID="btnsubmit" runat="server" OnClick="btnsubmit_Click" Text="Submit" />
 </td>
            </tr>
        </table>
 
        </div>--%>
    <asp:UpdatePanel ID="updatepanl" runat="server" UpdateMode="Conditional">
        <ContentTemplate>
            <div class="card card-outline-info" style="width: 1300px;">

                <div class="card-header">
                    <h3 class="m-b-0 text-white" style="font-family: 'Mallanna', sans-serif; font-size: 22px; text-align: center;">New Lender Registration</h3>
                </div>
                
                
            
                <table class="card-body" style="font-size:smaller">
                    <tr><td>Lender Name</td><td>:</td><td><asp:TextBox runat="server" ID="txtlname"></asp:TextBox></td>

                        <td>Lender Code</td><td>:</td><td><asp:TextBox runat="server" ID="txtlcode"></asp:TextBox></td>
                            
                          <td>Manager Name</td><td>:</td><td><asp:TextBox runat="server" ID="txtmaname"></asp:TextBox></td>

                    </tr>
                                    
                          <tr><td>Mobile Number</td><td>:</td><td><asp:TextBox runat="server" ID="txtmnumber"></asp:TextBox></td>

                        <td>Alternate Number</td><td>:</td><td><asp:TextBox runat="server" ID="txtanumber"></asp:TextBox></td>
                               <td>Email id</td><td>:</td><td><asp:TextBox runat="server" ID="txtemailid"></asp:TextBox></td>
                              </tr>       
                                        
                           <tr><td>Alternate Email</td><td>:</td><td><asp:TextBox runat="server" ID="txtaemail"></asp:TextBox></td>

                        <td>Contact Name</td><td>:</td><td><asp:TextBox runat="server" ID="txtcname"></asp:TextBox></td>
                               <td>Branch Name</td><td>:</td><td><asp:TextBox runat="server" ID="txtbname"></asp:TextBox></td>
                              </tr>       
                                        
                              <tr><td>Address Line1</td><td>:</td><td><asp:TextBox runat="server" ID="txtaline1"></asp:TextBox></td>

                        <td>Address Line2</td><td>:</td><td><asp:TextBox runat="server" ID="txtaline2"></asp:TextBox></td>
                               <td>city</td><td>:</td><td><asp:TextBox runat="server" ID="txtcity"></asp:TextBox></td>
                              </tr>      
                          <tr><td>State</td><td>:</td><td><asp:TextBox runat="server" ID="txtstate"></asp:TextBox></td>

                        <td>Zip Code</td><td>:</td><td><asp:TextBox runat="server" ID="txtzcode"></asp:TextBox></td>
                              
                              </tr>  
                     
                      <tr><td><asp:Button  runat="server" ID="btnsubmit" OnClick="btnsubmit_Click" Text="Submit"/></td></tr>
                     </table>


                                              
                          
              
                            
             
                    
                </div>
            </ContentTemplate>
    </asp:UpdatePanel>
                          

</asp:Content>