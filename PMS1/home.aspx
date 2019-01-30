
<%@ Page Language="C#" MasterPageFile="~/Newprocess.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="PMS1.home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>PMS | Dashboard</title>
     <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <link rel="stylesheet" href="Dashboard Styles/Dashboard.css" />
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

   
   
    <div class="panel panel-primary">
       
    <asp:Label ID="lblallorders" runat="server"></asp:Label>
      
       <div class="panel-heading">Total Orders</div><br />
        <br />
       <div class="panel-body"><asp:Label ID="lblallorders_count" runat="server"></asp:Label></div> 
        </div>
     <div class="panel panel-primary">
           <div class="panel-heading">Completed Orders</div><br />
        <br />
    <div class="panel-body"><asp:Label ID="lblcompleteaorders_count" class="center" runat="server"></asp:Label></div>
        </div>
     <div class="panel panel-primary">
           <div class="panel-heading">Assign Orders</div><br />
        <br />
         <div class="panel-body"><asp:Label ID="lblaorders" runat="server"></asp:Label></div>
        </div>
     <div class="panel panel-primary">
         <div class="panel-heading">UnAssign Orders</div><br />
         <br />
    <div class="panel-body"><asp:Label ID="lbluaorders" runat="server"></asp:Label></div>
        </div>
      <div class="panel panel-primary">
          <div class="panel-heading">Total Employees</div><br />
          <br />
    <div class="panel-body"><asp:Label ID="lbltemployees" runat="server"></asp:Label></div>
        </div>
     <div class="panel panel-primary">
          <div class="panel-heading">Active Employees</div><br />
          <br />
    <div class="panel-body"><asp:Label ID="lblacemployees" runat="server"></asp:Label></div>
        </div>
         <div class="panel panel-primary">
         <div class="panel-heading">DeActive Employees</div><br />
          <br />
    <div class="panel-body"><asp:Label ID="lbldaemployees" runat="server"></asp:Label></div>
        </div>
    <div class="panel panel-primary">
          <div class="panel-heading">Total Lenders</div><br />
          <br />
    <div class="panel-body"><asp:Label ID="lbltlenders" runat="server"></asp:Label></div>
        </div>
    
       
</asp:Content>