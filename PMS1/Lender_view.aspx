<%@ Page Title="" Language="C#" MasterPageFile="Newprocess.Master" AutoEventWireup="true" CodeBehind="Lender_view.aspx.cs" Inherits="PMS1.client_view" %>
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
    <script>

        $(document).ready(function () {
            $('#example1').DataTable({
                dom: 'Bfrtip',
                buttons: [
                   // 'copy', 'csv', 'excel', 'pdf', 'print'
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
     <table id="example1" class="display nowrap;" style="width:100%;padding:1Px">
        <thead>
           <tr>
                <th>S No</th>
                <th>Lender Name</th>
                <th>Manager Number</th>
                <th>Loan Contact Number</th>
                <th>Manager Email</th>
                <th>Loan Contact Email</th>
                <th>Action To Edit</th>
            </tr>
        </thead>
        <tbody>

        
           
<asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand">
      <ItemTemplate>
     
      <tr>
          <td>
               <%# Container.ItemIndex+1 %>
                    <asp:HiddenField runat="server" ID="lender_id" Value='<%#Eval("lender_id") %>' />
          </td>
          <td>
         <asp:Label runat="server" ID="lender_name"  Text='<%#Eval("lender_name") %>'></asp:Label>
          </td>
          <td>
                <asp:Label ID="manager_number" runat="server" Text='<%# Eval("manager_number") %>'></asp:Label>  
          </td>
          <td>
              <asp:Label ID="lc_number" runat="server" Text='<%# Eval("lc_number") %>'></asp:Label>  
          </td>
          <td>
               <asp:Label ID="manager_email" runat="server" Text='<%# Eval("manager_email") %>'></asp:Label>  
          </td>
          <td>
               <asp:Label ID="lc_email" runat="server" Text='<%# Eval("lc_email") %>'></asp:Label>  
          </td>
          <td>
               <asp:LinkButton runat="server" ID="lnkbtnedt" CommandName="Action to Edit" CommandArgument='<%#Eval("lender_id")%>' Text="Click to update"></asp:LinkButton>
          </td>
       
      </tr>

  
          </ItemTemplate>
         

    </asp:Repeater>
                  
        
          
        </tbody>
    </table>
    <div style="display:none">
         <asp:GridView ID="Grd_downlod1" runat="server" AutoGenerateColumns="False">

         <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />

        <Columns>

          <asp:TemplateField HeaderText="S No">
                <ItemTemplate>
                    <%# Container.DataItemIndex + 1 %>
                    <asp:HiddenField runat="server" ID="hdn_empid" Value='<%#Eval("lender_id") %>' />
                    </ItemTemplate>
            </asp:TemplateField>
              <asp:TemplateField HeaderText="LenderName">  
                            <EditItemTemplate>  
                                <asp:TextBox ID="txtlname" runat="server" Text='<%# Eval("lender_name") %>'></asp:TextBox>  
                            </EditItemTemplate>  
                            <ItemTemplate>  
                                <asp:Label ID="lbllname" runat="server" Text='<%# Eval("lender_name") %>'></asp:Label>  
                            </ItemTemplate>  
                        </asp:TemplateField>  
             <asp:TemplateField HeaderText="MobileNumber">
                 <EditItemTemplate>  
                                <asp:TextBox ID="txtmnumber" runat="server" Text='<%# Eval("manager_number") %>'></asp:TextBox>  
                            </EditItemTemplate> 
                <ItemTemplate>  
                                <asp:Label ID="lblmnumber" runat="server" Text='<%# Eval("manager_number") %>'></asp:Label>  
                            </ItemTemplate>  
                        </asp:TemplateField>  
             <asp:TemplateField HeaderText="AlternateNumber">
                 <EditItemTemplate>  
                                <asp:TextBox ID="txtalnumber" runat="server" Text='<%# Eval("lc_number") %>'></asp:TextBox>  
                            </EditItemTemplate> 
                <ItemTemplate>  
                                <asp:Label ID="lblalnumber" runat="server" Text='<%# Eval("lc_number") %>'></asp:Label>  
                            </ItemTemplate>  
                        </asp:TemplateField>  
             <asp:TemplateField HeaderText="Emailid">
                 <EditItemTemplate>  
                                <asp:TextBox ID="txtemid" runat="server" Text='<%# Eval("manager_email") %>'></asp:TextBox>  
                            </EditItemTemplate> 
                <ItemTemplate>  
                                <asp:Label ID="lblemid" runat="server" Text='<%# Eval("manager_email") %>'></asp:Label>  
                            </ItemTemplate>  
                        </asp:TemplateField>  
             <asp:TemplateField HeaderText="AlternateEmail">
                 <EditItemTemplate>  
                                <asp:TextBox ID="txtalemail" runat="server" Text='<%# Eval("lc_email") %>'></asp:TextBox>  
                            </EditItemTemplate> 
                <ItemTemplate>  
                                <asp:Label ID="lblalemail" runat="server" Text='<%# Eval("lc_email") %>'></asp:Label>  
                            </ItemTemplate>  
                        </asp:TemplateField>  
          
          
              
              </Columns>
      
    </asp:GridView>
    </div>
   
</asp:Content>
