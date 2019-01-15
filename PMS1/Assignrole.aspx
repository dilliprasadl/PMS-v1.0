<%@ Page Title="" Language="C#" MasterPageFile="~/Newprocess.Master" AutoEventWireup="true" CodeBehind="Assignrole.aspx.cs" Inherits="PMS1.rolebased" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DropDownList ID="ddlregister" runat="server"></asp:DropDownList>
    <asp:Button ID="btnget" runat="server" Text="Get" onclick="btnget_Click"/>
    <asp:DropDownList ID="ddlrole" runat="server"></asp:DropDownList>
    <asp:Button ID="btnassign" runat="server" Text="Assign" onclick="btnassign_Click" />
    
</asp:Content>
