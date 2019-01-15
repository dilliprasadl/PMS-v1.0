<%@ Page Title="" Language="C#" MasterPageFile="~/Newprocess.Master" AutoEventWireup="true" CodeBehind="get assign role.aspx.cs" Inherits="PMS1.get_assign_role" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <asp:GridView ID="gvgetrole" runat="server"  AutoGenerateColumns="false">
        <Columns>
<asp:BoundField DataField="id" HeaderText="Id" />
<asp:BoundField DataField="Username" HeaderText="UserName" />
<asp:BoundField DataField="Email" HeaderText="Email" />
 <asp:BoundField DataField="Password" HeaderText="Password" />
 <asp:BoundField DataField="Rolename" HeaderText="Rolename" />

 
</Columns>

    </asp:GridView>
</asp:Content>
