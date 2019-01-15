
<%@ Page Language="C#" MasterPageFile="~/Newprocess.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="PMS1.home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  <%--  <style>--%>

<%--        /*.cla{
             border: 1px solid black; 
             margin: 0px auto 0px 0px; 
             width:150px;
             background-color:aqua;
             padding:45px;
              margin: 45px;
              border-radius:10Px;
             position:relative
        }*/--%>
 <%--   </style>--%>
    <style type="text/css">
	<!--
	#container {
		width:100%;
	}
	#box1	{
		background:aqua; border:1px solid #000;
		float:left; min-height:60px; margin-right:70px;border-radius:10px; width:170px;
         padding:30px;
              margin: 35px;
              text-align:center;
	}
	#box2 	{
		background:SlateBlue; border:1px solid #000;
		float:left; min-height:60px; width:170px;border-radius:10px;
        padding:30px;
              margin: 35px;
              text-align:center;
	}
    #box3 	{
		background:Violet; border:1px solid #000;
		float:left; min-height:60px; width:170px;border-radius:10px;
        padding:30px;
              margin: 35px;
              text-align:center;
	}
      #box4	{
		background:skyBlue; border:1px solid #000;
		float:left; min-height:60px; width:170px;border-radius:10px;
        padding:30px;
              margin: 35px;
              text-align:center;
	}
        #box5 {
            background: Orange;
            border: 1px solid #000;
            float: left;
            min-height: 60px;
            margin-right: 70px;
            border-radius: 10px;
            width: 170px;
            padding: 30px;
            margin: 35px;
            text-align:center;
        }
        #box6 	{
		background:DodgerBlue; border:1px solid #000;
		float:left; min-height:60px; width:170px;border-radius:10px;
        padding:30px;
              margin: 35px;
              text-align:center;
	}
        #box7 	{
		background:Tomato; border:1px solid #000;
		float:left; min-height:60px; width:170px;border-radius:10px;
        padding:30px;
              margin: 35px;
              text-align:center
	}
          #box8 	{
		background:lightgreen; border:1px solid #000;
		float:left; min-height:60px; width:170px;border-radius:10px;
        padding:30px;
              margin: 35px;
              text-align:center;
	}


	-->
	</style>	

    <style>

       
    </style>
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

   
   
    <div id="box1">
       
    <%--<asp:Label ID="lblallorders" runat="server" Text="All Orders"></asp:Label>--%>
      
       <i>Total Orders</i><br />
        <br />
        <asp:Label ID="lblallorders_count"   runat="server"></asp:Label>
      
        </div>
     <div id="box2">
           <i >Completed Orders</i><br />
        <br />
    <asp:Label ID="lblcompleteaorders_count" class="center" runat="server"></asp:Label>
        </div>
     <div id="box3">
           <i>Assign Orders</i><br />
        <br />
    <asp:Label ID="lblaorders" runat="server"></asp:Label>
        </div>
     <div id="box4">
         <i>UnAssign Orders</i><br />
         <br />
    <asp:Label ID="lbluaorders" runat="server"></asp:Label>
        </div>
      <div id="box5">
          <i>Total Employees</i><br />
          <br />
    <asp:Label ID="lbltemployees" runat="server"></asp:Label>
        </div>
     <div id="box6">
          <i>Active Employees</i><br />
          <br />
    <asp:Label ID="lblacemployees" runat="server"></asp:Label>
        </div>
         <div id="box7">
         <i>DeActive Employees</i><br />
          <br />
    <asp:Label ID="lbldaemployees" runat="server"></asp:Label>
        </div>
    <div id="box8">
          <i>Total Lenders</i><br />
          <br />
    <asp:Label ID="lbltlenders" runat="server"></asp:Label>
        </div>
       
</asp:Content>