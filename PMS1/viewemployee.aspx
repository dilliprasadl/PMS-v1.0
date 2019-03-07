<%@ Page Title="PMS | View Employee" Language="C#" MasterPageFile="~/Newprocess.Master" AutoEventWireup="true" CodeBehind="viewemployee.aspx.cs" Inherits="PMS1.viewemployee" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
    <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>   
    <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
    <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.5.2/js/dataTables.buttons.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.flash.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/pdfmake.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/vfs_fonts.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.html5.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.print.min.js"></script>

     <link href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css" rel="stylesheet"/>
     <link href="https://cdn.datatables.net/buttons/1.5.2/css/buttons.dataTables.min.css" rel="stylesheet"/>

	<link rel="stylesheet" type="text/css" href="TableStyles/TableStyle.css" />
    <link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.7.0/css/all.css' />
   
    <script>

        $(document).ready(function () {
            $('#example').DataTable({
                dom: 'Bfrtip',
                buttons: [  
                    'csv', 'pdf', 'print'
                ]
            });
        });
    </script>
   

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">    
     Download in :<asp:Button ID="btnexcel" runat="server" Text="Excel" OnClick="btnexcel_Click"/>
     <asp:Button ID="btnword" runat="server" Text="Word" OnClick="btnword_Click"/>
    <br /><br />
     <asp:Button ID="btncsv" runat="server" Text="CSV" OnClick="btncsv_Click" style="display:none" />

    <%--order-column--%> 
    <table id="example" class="table-fill">
        <thead>
           <tr>
                <th class="text-left">S No</th>
                <th class="text-left">Status</th>
                <th class="text-left">First Name</th>
                <th class="text-left">Gender</th>
                <th class="text-left">Mobile Number</th>
                <th class="text-left">Alternate Number</th>
                <th class="text-left">EmailId</th>
                <th class="text-left">Status Action</th>
                <th class="text-left">Edit</th>
               <th class="text-left">Reset Password</th>
            </tr>
        </thead>
        <tbody>
<asp:Repeater ID="GridView1" runat="server" OnItemCommand="GridView1_ItemCommand" EnableTheming="True">
      <ItemTemplate>
     
      <tr>
          <td class="text-left">
               <%# Container.ItemIndex+1 %>
               <asp:HiddenField runat="server" ID="HiddenField1" Value='<%#Eval("Employeeid") %>' />
          </td>
          <td class="text-left">
              <asp:Label runat="server" ID="lbid"  Text='<%#Eval("Statuss") %>'></asp:Label>
          </td>
          <td>
                <asp:Label ID="lblfname" runat="server" Text='<%# Eval("firstname") %>'></asp:Label>  
          </td >
          <td class="text-left">
              <asp:Label ID="lblgender" runat="server" Text='<%# Eval("Gender") %>'></asp:Label>  
          </td>
          <td class="text-left">
               <asp:Label ID="lblmnumber" runat="server" Text='<%# Eval("Mobilenumber") %>'></asp:Label>  
          </td>
          <td class="text-left">
               <asp:Label ID="Label1" runat="server" Text='<%# Eval("Alternatenumber") %>'></asp:Label>  
          </td>
          <td class="text-left">
              <asp:Label ID="lbleid" runat="server" Text='<%# Eval("Emailid") %>'></asp:Label>  
          </td>
          <td class="text-left">
                <asp:LinkButton runat="server" ID="lnkbtn" CommandName="Active" CommandArgument='<%#Eval("Employeeid")+","+Eval("isactive") %>' Text='<%#(Convert.ToInt32(Eval("isactive")))==1?"Click Here Deactivate":"Click To Active" %>'></asp:LinkButton>
          </td>
          <td class="text-left">
               <asp:LinkButton runat="server" ID="lnkbtnedt" CommandName="Edit" CommandArgument='<%#Eval("Employeeid")+","+Eval("isactive") %>' Text=""><i class='fas fa-edit'></i></asp:LinkButton>
          </td>
          <td class="text-left">
               <asp:LinkButton runat="server" ID="lblreset" CommandName="ResetPassword" CommandArgument='<%#Eval("Employeeid") %>' Text="ResetPassword"></asp:LinkButton>
          </td>
      </tr>
        </ItemTemplate>
        </asp:Repeater>   
        </tbody>
    </table> 
                       
   
    <div style="display:none">
    <asp:GridView ID="Grd_downlod" runat="server" AutoGenerateColumns="False">
      
         <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
         <AlternatingRowStyle CssClass="alt" />
         <Columns>
 
                  <asp:TemplateField HeaderText="S No">
                <ItemTemplate>
                    <%# Container.DataItemIndex + 1 %>
                    <asp:HiddenField runat="server" ID="hdn_empid" Value='<%#Eval("Employeeid") %>' />
                    </ItemTemplate>
            </asp:TemplateField>
             <asp:TemplateField HeaderText="Status">
                <ItemTemplate>
                    
                   <asp:Label runat="server" ID="lbid"  Text='<%#Eval("Statuss") %>'></asp:Label>
                    </ItemTemplate>
            </asp:TemplateField>                            
              <asp:TemplateField HeaderText="FirstName" SortExpression="firstname">  
                              
                            <ItemTemplate>  
                                <asp:Label ID="lblfname" runat="server" Text='<%# Eval("firstname") %>'></asp:Label>  
                            </ItemTemplate>  
                        </asp:TemplateField>  
                        <asp:TemplateField HeaderText="LastName" SortExpression="lastname">  
                             
                            <ItemTemplate>  
                                <asp:Label ID="lbllname" runat="server" Text='<%# Eval("lastname") %>'></asp:Label>  
                            </ItemTemplate>  
                        </asp:TemplateField>  
             
              <asp:TemplateField HeaderText="Gender" SortExpression="Gender">  
                             
                            <ItemTemplate>  
                                <asp:Label ID="lblgender" runat="server" Text='<%# Eval("Gender") %>'></asp:Label>  
                            </ItemTemplate>  
                        </asp:TemplateField>   
            
              <asp:TemplateField HeaderText="MobileNumber" SortExpression="Mobilenumber">  
                            
                            <ItemTemplate>  
                                <asp:Label ID="lblmnumber" runat="server" Text='<%# Eval("Mobilenumber") %>'></asp:Label>  
                            </ItemTemplate>  
                        </asp:TemplateField>  
              <asp:TemplateField HeaderText="AlternateNumber" SortExpression="Alternatenumber">  
                            
                            <ItemTemplate>  
                                <asp:Label ID="lblanumber" runat="server" Text='<%# Eval("Alternatenumber") %>'></asp:Label>  
                            </ItemTemplate>  
                        </asp:TemplateField>  
              <asp:TemplateField HeaderText="EmailId" SortExpression="Emailid">  
                             
                            <ItemTemplate>  
                                <asp:Label ID="lbleid" runat="server" Text='<%# Eval("Emailid") %>'></asp:Label>  
                            </ItemTemplate>  
                        </asp:TemplateField>  
              <asp:TemplateField HeaderText="AlternateEmail" SortExpression="AlternateEmail">  
                             
                            <ItemTemplate>  
                                <asp:Label ID="lblaemail" runat="server" Text='<%# Eval("AlternateEmail") %>'></asp:Label>  
                            </ItemTemplate>  
                        </asp:TemplateField>  
         </Columns>
    </asp:GridView>
    </div>
</asp:Content>
