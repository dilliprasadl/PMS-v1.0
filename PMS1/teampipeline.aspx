<%@ Page Title="" Language="C#" MasterPageFile="~/Newprocess.Master" AutoEventWireup="true" CodeBehind="teampipeline.aspx.cs" Inherits="PMS1.teampipeline" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <asp:GridView ID="GridView1" runat="server"  AutoGenerateColumns="false">
        <Columns>
<asp:BoundField DataField="Orderno" HeaderText="OrderNo" />
<asp:BoundField DataField="LenderName" HeaderText="LenderName" />
<asp:BoundField DataField="Branch" HeaderText="BranchName" />
 <asp:BoundField DataField="OrderReceivedDateTime" HeaderText="OrderReceivedDate" />
<%-- <asp:BoundField DataField="Oredrreceivedtime" HeaderText="OredrReceivedTime" />--%>
<%--<asp:BoundField DataField="LAreferenceno" HeaderText="LAReferenceNo " />--%>
<%-- <asp:BoundField DataField="LAname" HeaderText="LAName" />
 <asp:BoundField DataField="CAcontactdetailes" HeaderText="CAContactDetailes" />
  <asp:BoundField DataField="CAadditionaldetailes" HeaderText="CAAdditionalDetailes" />--%>
  <asp:BoundField DataField="assignto" HeaderText="AssignTo" />
</Columns>
           </asp:GridView>
</asp:Content>
