<%@ Page Title="" Language="C#" MasterPageFile="~/Newprocess.Master" AutoEventWireup="true" CodeBehind="singleupload.aspx.cs" Inherits="PMS1.Mypipeline" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div>
       <%--  <table>
             <tr>
                 <td>Lender Name</td>
                 <td>
                     <asp:DropDownList ID="DropDownList1" runat="server">
                 <asp:ListItem Enabled="true" Text="Select " Value="-1"></asp:ListItem>
               <asp:ListItem Text="sindhu" Value="1"></asp:ListItem>
               <asp:ListItem Text="sailu" Value="2"></asp:ListItem>
            <asp:ListItem Text="siva" Value="3"></asp:ListItem>
           </asp:DropDownList>
                 </td>
             </tr>
             <tr>
                 <td>Branch Name</td>
                 <td> <asp:TextBox ID="txtbname" runat="server"></asp:TextBox>

                 </td>
             </tr>
             <tr>
                 <td>Order Received Date</td>
                 <td>
                     <asp:TextBox ID="txtord" runat="server"></asp:TextBox>
                 </td>
             </tr>
             <tr>
                 <td>Order received time</td>
                 <td><asp:TextBox ID="txtort" runat="server"></asp:TextBox></td>
             </tr>
             <tr>
                 <td>LA Reference No</td>
                 <td><asp:TextBox ID="txtrn" runat="server"></asp:TextBox></td>
             </tr>
             <tr>
                 <td>LA Name</td>
                 <td>
                     <asp:TextBox ID="txtlname" runat="server"></asp:TextBox>
                 </td>
             </tr>
             <tr>
                 <td>CA Cotact Detailes</td>
                 <td>
                     <asp:TextBox ID="txtcd" runat="server"></asp:TextBox>
                 </td>
             </tr>
            
                 <tr>
                  <td>CA Additinal Detailes</td>
                     <td>
                           <asp:TextBox ID="txtad" runat="server"></asp:TextBox>
                     </td>
                 </tr>
             <tr>
                 <td>
                     <asp:Button ID="btnsubmit" runat="server" OnClick="btnsubmit_Click" Text="Submit" />
                 </td>
             </tr>
           
             
         </table>--%>
    <asp:UpdatePanel ID="updatepanl" runat="server" UpdateMode="Conditional">
        <ContentTemplate>
            <div class="card card-outline-info" style="width: 1300px;">

                <div class="card-header">
                    <h3 class="m-b-0 text-white" style="font-family: 'Mallanna', sans-serif; font-size: 22px; text-align: center;"> New Order Registration</h3>
                </div>
                
                
            
                <table class="card-body" style="font-size:smaller">
                    <tr>

                        <td>Lender Name</td><td>:</td><td><asp:TextBox runat="server" ID="txtlename"></asp:TextBox></td>
                        <td>Branch</td><td>:</td><td><asp:TextBox runat="server" ID="txtbranch"></asp:TextBox></td>

                   
                    </tr>

                                    
                          <tr>
                              <td>LA Reference Number</td><td>:</td><td><asp:TextBox runat="server" ID="txtlarnumber"></asp:TextBox>
                                    
                      

                                   <td>Loan application name</td><td>:</td><td><asp:TextBox runat="server" ID="txtlaname"></asp:TextBox></td>
                              
                              </tr>       
                                        
                         
                    
                     </table>


                      <div class="card-header">
                    <h3 class="m-b-0 text-white" style="font-family: 'Mallanna', sans-serif; font-size: 15px;">LA contact details:</h3>
                </div>
                                              
                    <table class="card-body" style="font-size:smaller">
                         <tr><td>Phone Number</td><td>:</td><td><asp:TextBox runat="server" ID="txtpnumber"></asp:TextBox></td>

                        <td>Primary Email Id</td><td>:</td><td><asp:TextBox runat="server" ID="txteid"></asp:TextBox></td>
                               <td>Primary Address</td><td>:</td><td><asp:TextBox runat="server" ID="txtpaddress"></asp:TextBox></td>
                              </tr> 
                        
                        </table>        
                  <div class="card-header">
                    <h3 class="m-b-0 text-white" style="font-family: 'Mallanna', sans-serif; font-size: 15px;">LA additional  contact details:</h3>
                </div>
                                              
                    <table class="card-body" style="font-size:smaller">
                         <tr><td>Secondary Phone Number</td><td>:</td><td><asp:TextBox runat="server" ID="txtphnumber"></asp:TextBox></td>

                        <td>Secondary Email Id</td><td>:</td><td><asp:TextBox runat="server" ID="txtsemid"></asp:TextBox></td>
                               <td>Secondary Address</td><td>:</td><td><asp:TextBox runat="server" ID="txtsaddress"></asp:TextBox></td>
                              </tr>
                        <tr>
                              <td>Sales RM Name</td><td>:</td><td><asp:TextBox runat="server" ID="txtsrmname"></asp:TextBox>
                                    
                        <td>Sales Contact Phone Number</td><td>:</td><td><asp:TextBox runat="server" ID="txtscpnumber"></asp:TextBox></td>
                                   <td>Sales email ID</td><td>:</td><td><asp:TextBox runat="server" ID="txtsemailid"></asp:TextBox></td>
                              
                              </tr>      
                        <tr>
                              <td>CA Name</td><td>:</td><td><asp:TextBox runat="server" ID="txtcaname"></asp:TextBox>
                                    
                        <td>CA phone details</td><td>:</td><td><asp:TextBox runat="server" ID="txtcapdetails"></asp:TextBox></td>
                                   <td>CA email ID</td><td>:</td><td><asp:TextBox runat="server" ID="txtcaeid"></asp:TextBox></td>
                              
                              </tr>    
                         <tr>
                             
                              <td>Has lender sales informed</td><td>:</td><td><asp:DropDownList ID="ddlselect" runat="server">
                                     <asp:ListItem Value="">--select--</asp:ListItem>
                                      <asp:ListItem Value="Yes">Yes</asp:ListItem>
                                              <asp:ListItem Value="No">No</asp:ListItem>
                                        </asp:DropDownList></td>
                             
                                    
                       
                              
                              </tr>    
                        <tr><td><asp:Button  ID="btnsubmit" runat="server" Text="submit" OnClick="btnsubmit_Click"/></td></tr>
                                     
                                        
                        


                              
                             
                        </table>       
             
                                              
                    
                   
              

                    
                    

                 
            </div>
              

            

     

        </ContentTemplate>
    </asp:UpdatePanel>
        
 
        </div>
</asp:Content>
