<%@ Page Title="" Language="C#" MasterPageFile="~/Newprocess.Master" AutoEventWireup="true" CodeBehind="Resetpassword.aspx.cs" Inherits="PMS1.Resetpassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DropDownList ID="ddlrpwd" runat="server"></asp:DropDownList>
     
    <asp:TextBox  runat="server" ID="txtpwd"></asp:TextBox>

    <asp:Button ID="btnsub" runat="server" Text="submit" OnClick="btnsub_Click" />
</asp:Content>
