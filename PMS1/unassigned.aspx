<%@ Page Title="" Language="C#" MasterPageFile="~/Newprocess.Master" AutoEventWireup="true" CodeBehind="unassigned.aspx.cs" Inherits="PMS1.unassigned" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <script  src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.10.0.min.js" type="text/javascript"></script>

    <script src="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.9.2/jquery-ui.min.js" type="text/javascript"></script>

    <link href="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.9.2/themes/blitzer/jquery-ui.css" rel="Stylesheet" type="text/css" />
    <script type="text/javascript">

    $(function () {
        $("[id$=txtsearch]").autocomplete({
            source: function (request, response) {
                var role = document.getElementById('ContentPlaceHolder1_ddlselectrole').value;
                var roleid;
                if (role == '-SELECT-')
                {
                    roleid = "0";
                }
                else if(role != '-SELECT-')
                {
                    roleid = role;
                }
                $.ajax({
                    url: '<%=ResolveUrl("~/unassigned.aspx/GetCustomers") %>',
                    data: "{ 'prefix': '" + request.term + "'}",
                    dataType: "json",
                    type: "POST",
                    contentType: "application/json; charset=utf-8",
                    success: function (data) {

                        if (data.d.length > 0) {
                            response($.map(data.d, function (item) {
                                return {
                                    label: item.split('^')[0],
                                    val: item.split('^')[1]
                                }
                            }));
                        }
                        else
                        {
                            response([{ label: 'No Records Found', val: -1 }]);
                            $("[id$=hfOrderNo]").val(-1);
                        }
                    },

                    error: function (response) {
                        alert(response.responseText);
                    },

                    failure: function (response) {
                        alert(response.responseText);
                    }
                });
            },

            select: function (e, i) {
                $("[id$=hfOrderNo]").val(i.item.val);
            },
            minLength: 1
        });
    });
</script>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    Select Role:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:DropDownList runat="server" ID="ddlselectrole" Width="150px"></asp:DropDownList><br />
   Enter Employee Username:
    <asp:TextBox ID="txtsearch"  runat="server"></asp:TextBox>

    <asp:HiddenField ID="hfOrderNo" runat="server" ClientIDMode="Static" />
    <asp:Button ID="btnassign" runat="server" Text="Assign" onclick="btnassign_Click" />
    <br /><br />
       <asp:GridView ID="GridView1" runat="server"  AutoGenerateColumns="False" AllowPaging="True" OnPageIndexChanging="GridView1_PageIndexChanging" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical">
           <AlternatingRowStyle BackColor="White" />
        <Columns>
             <asp:TemplateField HeaderText="SNo">
                <ItemTemplate>
                    <%# Container.DataItemIndex + 1 %>
                    </ItemTemplate>
            </asp:TemplateField>
            

<asp:BoundField DataField="lender_name" HeaderText="Lender Name" />
<asp:BoundField DataField="branch" HeaderText="Branch" />
<asp:BoundField DataField="order_Received_dt" HeaderText="OrderReceivedDateTime" />
<asp:templatefield HeaderText="Select">

<itemtemplate>
<asp:checkbox ID="cbSelect" CssClass="gridCB" runat="server"></asp:checkbox>
<asp:HiddenField runat="server" ID="hdn_order" Value='<%#Eval("order_id") %>' />
</itemtemplate>
</asp:templatefield>
</Columns>
           <FooterStyle BackColor="#CCCC99" />
           <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
           <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
           <RowStyle BackColor="#F7F7DE" />
           <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
           <SortedAscendingCellStyle BackColor="#FBFBF2" />
           <SortedAscendingHeaderStyle BackColor="#848384" />
           <SortedDescendingCellStyle BackColor="#EAEAD3" />
           <SortedDescendingHeaderStyle BackColor="#575357" />
           </asp:GridView>
           

</asp:Content>
