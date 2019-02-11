<%@ Page Title="" Language="C#" MasterPageFile="~/Newprocess.Master" AutoEventWireup="true" CodeBehind="unassigned.aspx.cs" Inherits="PMS1.unassigned" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DropDownList ID="ddlnames" runat="server">
    </asp:DropDownList>
    <asp:Button ID="btnassign" runat="server" Text="Assign" onclick="btnassign_Click" />
    <br /><br />
       <asp:GridView ID="GridView1" runat="server"  AutoGenerateColumns="false" AllowPaging="true" PageSize="10" OnPageIndexChanging="GridView1_PageIndexChanging">
        <Columns>
             <asp:TemplateField HeaderText="SNo">
                <ItemTemplate>
                    <%# Container.DataItemIndex + 1 %>
                    </ItemTemplate>
            </asp:TemplateField>
            
<%--<asp:BoundField DataField="Lendername" HeaderText="LenderName" />
<asp:BoundField DataField="Branchname" HeaderText="BranchName" />
<asp:BoundField DataField="Orderreceiveddate" HeaderText="OrderReceivedDate" />
<asp:BoundField DataField="Oredrreceivedtime" HeaderText="OrderReceivedTime" />
<asp:BoundField DataField="LAreferenceno" HeaderText="LAReferenceNo " />
<asp:BoundField DataField="LAname" HeaderText="LAName" />
<asp:BoundField DataField="CAContactdetailes" HeaderText="CAContactDetailes" />
<asp:BoundField DataField="CAadditionaldetailes" HeaderText="CAAdditionalDetailes" />--%>
<asp:BoundField DataField="lender_name" HeaderText="Lender Name" />
<asp:BoundField DataField="branch" HeaderText="Branch" />
<asp:BoundField DataField="order_Received_dt" HeaderText="OrderReceivedDateTime" />
<%-- <asp:BoundField DataField="Loanapplicationname" HeaderText="LoanApplicationName" />
<asp:BoundField DataField="Phonenumber" HeaderText="PhoneNumber " />
<asp:BoundField DataField="Primaryemailid" HeaderText="PrimaryEmailId" />
<asp:BoundField DataField="Primaryaddress" HeaderText="PrimaryAddress" />
<asp:BoundField DataField="Secondaryphonenumber" HeaderText="SecondaryPhoneNumber" />
<asp:BoundField DataField="Secondaryemailid" HeaderText="SecondaryEmailId" />
<asp:BoundField DataField="Secondaryaddress" HeaderText="SecondaryAddress " />
<asp:BoundField DataField="Salesrmname" HeaderText="SalesRMName" />
<asp:BoundField DataField="Salescontactphonenumber" HeaderText="SalescontactPhoneNumber" />
<asp:BoundField DataField="Salesemailid" HeaderText="SalesEmailId" />
         
<asp:BoundField DataField="CAname" HeaderText="CAname" />
<asp:BoundField DataField="CAphonedetails" HeaderText="CAPhoneDetails" />
<asp:BoundField DataField="CAemailid" HeaderText="CAEmailId" />
<asp:BoundField DataField="Haslendersalesinformed" HeaderText="HasLenderSalesInformed" />--%>
<asp:templatefield HeaderText="Select">

<itemtemplate>
<asp:checkbox ID="cbSelect" CssClass="gridCB" runat="server"></asp:checkbox>
<asp:HiddenField runat="server" ID="hdn_order" Value='<%#Eval("order_id") %>' />
</itemtemplate>
</asp:templatefield>
</Columns>
           </asp:GridView>
           

</asp:Content>
