<%@ Page Title="" Language="C#" MasterPageFile="~/Newprocess.Master" AutoEventWireup="true" CodeBehind="mypipeline.aspx.cs" Inherits="PMS1.mypipeline" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <asp:GridView ID="GridView1" runat="server"  AutoGenerateColumns="false">
        <Columns>
<asp:BoundField DataField="Orderno" HeaderText="OrderNo" />
<asp:BoundField DataField="Lendername" HeaderText="LenderName" />
<asp:BoundField DataField="Branch" HeaderText="BranchName" />
 <asp:BoundField DataField="OrderReceivedDateTime" HeaderText="OrderReceivedDateTime" />
 <%--<asp:BoundField DataField="Oredrreceivedtime" HeaderText="OredrReceivedTime" />--%>
<%--<asp:BoundField DataField="LAreferenceno" HeaderText="LAReferenceNo " />--%>
 <%--<asp:BoundField DataField="LAname" HeaderText="LAName" />
 <asp:BoundField DataField="CAcontactdetailes" HeaderText="CAContactDetailes" />
  <asp:BoundField DataField="CAadditionaldetailes" HeaderText="CAAdditionalDetailes" />--%>
   <asp:BoundField DataField="assignto" HeaderText="AssignTo" />


</Columns>
           </asp:GridView>
</asp:Content>
