<%@ Page Title="PMS | mypipeline" Language="C#" MasterPageFile="~/Newprocess.Master" EnableEventValidation="false" AutoEventWireup="true" CodeBehind="mypipeline.aspx.cs" Inherits="PMS1.mypipeline" %>
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
            $('#example2').DataTable({
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
     <table id="example2" class="display nowrap;" style="width:100%;padding:1Px">
        <thead>
           <tr>
             
               <th>Order No</th>
                <th>LA Applicant Name</th>
                <th>Branch</th>
                <th>Assigned To </th>
                <th>Assigned By</th>
               <th>Order Received On</th>
               <th>Action</th>
                <th>Status</th>
            </tr>
        </thead>
        <tbody>

        
           
<asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand">
      <ItemTemplate>
     
      <tr>
         <%-- <td>
               <%# Container.ItemIndex+1 %>
                    <asp:HiddenField runat="server" ID="HiddenField1" Value='<%#Eval("id") %>' />
          </td>--%>
           <td>
         <asp:Label runat="server" ID="Label2"  Text='<%#Eval("order_id") %>'></asp:Label>
          </td>
          <td>
         <asp:Label runat="server" ID="lbid"  Text='<%#Eval("la_name") %>'></asp:Label>
          </td>
          <td>
                <asp:Label ID="lblfname" runat="server" Text='<%# Eval("branch") %>'></asp:Label>  
          </td>
      
          <td>
               <asp:Label ID="Label1" runat="server" Text='<%# Eval("assignto") %>'></asp:Label>  
          </td>
          <td>
              <asp:Label ID="Label3" runat="server" Text='<%# Eval("assignby") %>'></asp:Label>
          </td>
          <td>
              <asp:Label ID="Label4" runat="server" Text='<%# Eval("order_received_dt") %>'></asp:Label>
          </td>
          <td>
              <asp:LinkButton runat="server" ID="takeorder" CommandName="takeorder" CommandArgument='<%#Eval("order_id") %>' Text="Take Order" />
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

          <asp:TemplateField>
                <ItemTemplate>
                    <%# Container.DataItemIndex + 1 %>
                    <asp:HiddenField runat="server" ID="hdn_empid" Value='<%#Eval("order_id") %>' />
                    </ItemTemplate>
            </asp:TemplateField>
              <asp:TemplateField HeaderText="LenderName">  
                            <EditItemTemplate>  
                                <asp:TextBox ID="txtlname" runat="server" Text='<%# Eval("la_name") %>'></asp:TextBox>  
                            </EditItemTemplate>  
                            <ItemTemplate>  
                                <asp:Label ID="lbllname" runat="server" Text='<%# Eval("la_name") %>'></asp:Label>  
                            </ItemTemplate>  
                        </asp:TemplateField>  
             <asp:TemplateField HeaderText="MobileNumber">
                 <EditItemTemplate>  
                                <asp:TextBox ID="txtbranch" runat="server" Text='<%# Eval("branch") %>'></asp:TextBox>  
                            </EditItemTemplate> 
                <ItemTemplate>  
                                <asp:Label ID="lblbranch" runat="server" Text='<%# Eval("branch") %>'></asp:Label>  
                            </ItemTemplate>  
                        </asp:TemplateField>  
           
         
             <asp:TemplateField HeaderText="AlternateEmail">
                 <EditItemTemplate>  
                                <asp:TextBox ID="txtassto" runat="server" Text='<%# Eval("assignto") %>'></asp:TextBox>  
                            </EditItemTemplate> 
                <ItemTemplate>  
                                <asp:Label ID="lblassto" runat="server" Text='<%# Eval("assignto") %>'></asp:Label>  
                            </ItemTemplate>  
                        </asp:TemplateField>
            <asp:TemplateField HeaderText="Assign By">
                 <EditItemTemplate>  
                                <asp:TextBox ID="txtassby" runat="server" Text='<%# Eval("assignby") %>'></asp:TextBox>  
                            </EditItemTemplate> 
                <ItemTemplate>  
                                <asp:Label ID="lblassby" runat="server" Text='<%# Eval("assignby") %>'></asp:Label>  
                            </ItemTemplate>  
                        </asp:TemplateField>
              <asp:TemplateField HeaderText="order_received_dt">
                 <EditItemTemplate>  
                                <asp:TextBox ID="orderreceived" runat="server" Text='<%# Eval("order_received_dt") %>'></asp:TextBox>  
                            </EditItemTemplate> 
                <ItemTemplate>  
                                <asp:Label ID="orderreceived" runat="server" Text='<%# Eval("order_received_dt") %>'></asp:Label>  
                            </ItemTemplate>  
                        </asp:TemplateField>  
              </Columns>
    </asp:GridView>
         </div>         
</asp:Content>


