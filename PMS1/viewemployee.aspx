<%@ Page Title="PMS | View Employee" Language="C#" MasterPageFile="~/Newprocess.Master" AutoEventWireup="true" CodeBehind="viewemployee.aspx.cs" Inherits="PMS1.viewemployee" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="http://ajax.goselect * from employees
select * from MasterRoleogleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script>
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
    <link rel='stylesheet' href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" />
   
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
  <style>
#table {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#table td, #table th {
  border: 1px solid #ddd;
  padding: 8px;
}

#table tr:nth-child(even){background-color: #f2f2f2;}

#table tr:hover {background-color: #ddd;}

#table th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #4CAF50;
  color: white;
}
</style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">    
     Download in :<asp:Button ID="btnexcel" runat="server" Text="Excel" OnClick="btnexcel_Click"/>
     <asp:Button ID="btnword" runat="server" Text="Word" OnClick="btnword_Click"/>
    <br /><br />
     <asp:Button ID="btncsv" runat="server" Text="CSV" OnClick="btncsv_Click" style="display:none" />

    <%--order-column--%> 
    <table>
        <thead>
           <tr>
                <th>S No</th>
                <th>Status</th>
                <th>First Name</th>
                <th>Gender</th>
                <th>Mobile Number</th>
                <th>Alternate Number</th>
                <th>EmailId</th>
                <th>Status Action</th>
                <th>Edit</th>
               <th>Reset Password</th>
            </tr>
        </thead>
        <tbody>
<asp:Repeater ID="GridView1" runat="server" OnItemCommand="GridView1_ItemCommand" EnableTheming="True">
      <ItemTemplate>
     
      <tr>
          <td>
               <%# Container.ItemIndex+1 %>
               <asp:HiddenField runat="server" ID="HiddenField1" Value='<%#Eval("Employeeid") %>' />
          </td>
          <td>
              <asp:Label runat="server" ID="lbid"  Text='<%#Eval("Statuss") %>'></asp:Label>
          </td>
          <td>
                <asp:Label ID="lblfname" runat="server" Text='<%# Eval("firstname") %>'></asp:Label>  
          </td >
          <td>
              <asp:Label ID="lblgender" runat="server" Text='<%# Eval("Gender") %>'></asp:Label>  
          </td>
          <td>
               <asp:Label ID="lblmnumber" runat="server" Text='<%# Eval("Mobilenumber") %>'></asp:Label>  
          </td>
          <td>
               <asp:Label ID="Label1" runat="server" Text='<%# Eval("Alternatenumber") %>'></asp:Label>  
          </td>
          <td>
              <asp:Label ID="lbleid" runat="server" Text='<%# Eval("Emailid") %>'></asp:Label>  
          </td>
          <td>
                <asp:LinkButton runat="server" ID="lnkbtn" CommandName="Active" CommandArgument='<%#Eval("Employeeid")+","+Eval("isactive") %>' Text='<%#(Convert.ToInt32(Eval("isactive")))==1?"Click Here Deactivate":"Click To Active" %>'></asp:LinkButton>
          </td>
          <td>
               <asp:LinkButton runat="server" ID="lnkbtnedt" CommandName="Edit" CommandArgument='<%#Eval("Employeeid")+","+Eval("isactive") %>' Text=""><i class='fas fa-edit'></i></asp:LinkButton>
          </td>
          <td>
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