<%@ Page Title="" Language="C#" MasterPageFile="~/Newprocess.Master" AutoEventWireup="true" CodeBehind="viewprocess.aspx.cs" Inherits="PMS1.viewprocess" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server"  AutoGenerateColumns="false">
        <Columns>
<asp:BoundField DataField="Processid" HeaderText="ProcessId" />
<asp:BoundField DataField="Processname" HeaderText="ProcessName" />
<asp:BoundField DataField="Owner" HeaderText="Owner" />
 <asp:BoundField DataField="Startdate" HeaderText="StartDate" />
 <asp:BoundField DataField="Username" HeaderText="UserName" />

 
</Columns>

    </asp:GridView>
</asp:Content>
