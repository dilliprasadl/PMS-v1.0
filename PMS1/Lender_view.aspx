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
            $('#GridView1').DataTable({
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
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false">
<%--        <Columns>
<asp:BoundField DataField="Clientname" HeaderText="ClientName" />
<asp:BoundField DataField="Clientcode" HeaderText="ClientCode" />
<asp:BoundField DataField="Contactname" HeaderText="ContactName" />
 <asp:BoundField DataField="Contactnumber" HeaderText="ContactNumber" />
 <asp:BoundField DataField="Emailid" HeaderText="EmailId" />
 <asp:BoundField DataField="Branchname" HeaderText="BranchName" />
 <asp:BoundField DataField="Streetname" HeaderText="StreetName" />
 <asp:BoundField DataField="Town" HeaderText="Town" />
 <asp:BoundField DataField="State" HeaderText="State" />
 <asp:BoundField DataField="Pincode" HeaderText="Pincode" />

</Columns>--%>
        <Columns>

          <asp:TemplateField HeaderText="S No">
                <ItemTemplate>
                    <%# Container.DataItemIndex + 1 %>
                    <asp:HiddenField runat="server" ID="hdn_empid" Value='<%#Eval("id") %>' />
                    </ItemTemplate>
            </asp:TemplateField>
              <asp:TemplateField HeaderText="LenderName">  
                            <EditItemTemplate>  
                                <asp:TextBox ID="txtlname" runat="server" Text='<%# Eval("Lendername") %>'></asp:TextBox>  
                            </EditItemTemplate>  
                            <ItemTemplate>  
                                <asp:Label ID="lbllname" runat="server" Text='<%# Eval("Lendername") %>'></asp:Label>  
                            </ItemTemplate>  
                        </asp:TemplateField>  
               <%--         <asp:TemplateField HeaderText="AddressLine1">  
                            <EditItemTemplate>  
                                <asp:TextBox ID="txtaline1" runat="server" Text='<%# Eval("Addressline1") %>'></asp:TextBox>  
                            </EditItemTemplate>  
                            <ItemTemplate>  
                                <asp:Label ID="lblaline1" runat="server" Text='<%# Eval("Addressline1") %>'></asp:Label>  
                            </ItemTemplate>  
                        </asp:TemplateField>  
              <asp:TemplateField HeaderText="AddressLine2">  
                            <EditItemTemplate>  
                                <asp:TextBox ID="txtaline2" runat="server" Text='<%# Eval("Addressline2") %>'></asp:TextBox>  
                            </EditItemTemplate>  
                            <ItemTemplate>  
                                <asp:Label ID="lblaline2" runat="server" Text='<%# Eval("Addressline2") %>'></asp:Label>  
                            </ItemTemplate>  
                        </asp:TemplateField>  
            <asp:TemplateField HeaderText="City">
                 <EditItemTemplate>  
                                <asp:TextBox ID="txtaline2" runat="server" Text='<%# Eval("city") %>'></asp:TextBox>  
                            </EditItemTemplate> 
                <ItemTemplate>  
                                <asp:Label ID="lblaline2" runat="server" Text='<%# Eval("city") %>'></asp:Label>  
                            </ItemTemplate>  
                        </asp:TemplateField>  
            <asp:TemplateField HeaderText="State">
                 <EditItemTemplate>  
                                <asp:TextBox ID="txtaline2" runat="server" Text='<%# Eval("State") %>'></asp:TextBox>  
                            </EditItemTemplate> 
                <ItemTemplate>  
                                <asp:Label ID="lblaline2" runat="server" Text='<%# Eval("State") %>'></asp:Label>  
                            </ItemTemplate>  
                        </asp:TemplateField>  
            <asp:TemplateField HeaderText="ZipCode">
                 <EditItemTemplate>  
                                <asp:TextBox ID="txtaline2" runat="server" Text='<%# Eval("ZipCode") %>'></asp:TextBox>  
                            </EditItemTemplate> 
                <ItemTemplate>  
                                <asp:Label ID="lblaline2" runat="server" Text='<%# Eval("Zipcode") %>'></asp:Label>  
                            </ItemTemplate>  
                        </asp:TemplateField>--%>  
             <asp:TemplateField HeaderText="MobileNumber">
                 <EditItemTemplate>  
                                <asp:TextBox ID="txtaline2" runat="server" Text='<%# Eval("Mobilenumber") %>'></asp:TextBox>  
                            </EditItemTemplate> 
                <ItemTemplate>  
                                <asp:Label ID="lblaline2" runat="server" Text='<%# Eval("Mobilenumber") %>'></asp:Label>  
                            </ItemTemplate>  
                        </asp:TemplateField>  
             <asp:TemplateField HeaderText="AlternateNumber">
                 <EditItemTemplate>  
                                <asp:TextBox ID="txtaline2" runat="server" Text='<%# Eval("Alternatenumber") %>'></asp:TextBox>  
                            </EditItemTemplate> 
                <ItemTemplate>  
                                <asp:Label ID="lblaline2" runat="server" Text='<%# Eval("Alternatenumber") %>'></asp:Label>  
                            </ItemTemplate>  
                        </asp:TemplateField>  
             <asp:TemplateField HeaderText="Emailid">
                 <EditItemTemplate>  
                                <asp:TextBox ID="txtaline2" runat="server" Text='<%# Eval("Emailid") %>'></asp:TextBox>  
                            </EditItemTemplate> 
                <ItemTemplate>  
                                <asp:Label ID="lblaline2" runat="server" Text='<%# Eval("Emailid") %>'></asp:Label>  
                            </ItemTemplate>  
                        </asp:TemplateField>  
             <asp:TemplateField HeaderText="AlternateEmail">
                 <EditItemTemplate>  
                                <asp:TextBox ID="txtaline2" runat="server" Text='<%# Eval("Alternateemail") %>'></asp:TextBox>  
                            </EditItemTemplate> 
                <ItemTemplate>  
                                <asp:Label ID="lblaline2" runat="server" Text='<%# Eval("Alternateemail") %>'></asp:Label>  
                            </ItemTemplate>  
                        </asp:TemplateField>  
          
          
              
              </Columns>
    </asp:GridView>
</asp:Content>
