<%@ Page Title="" Language="C#" MasterPageFile="~/Newprocess.Master" AutoEventWireup="true" CodeBehind="text1.aspx.cs" Inherits="PMS1.text1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="col-md-3">
        <input type="text" class="form-control"/>
        <label for="field-1" class="col-sm-3 control-label">First Name</label>
    </div>
     <div class="col-md-3">
          <label for="field-1" class="col-sm-3 control-label">Last Name</label>
        <input type="text" class="form-control"/>
    </div>
     <div class="col-md-3">
          <label for="field-1" class="col-sm-3 control-label">Date of birthday</label>
        <input type="text" class="form-control"/>
    </div>
     <div class="col-md-3">
          <label for="field-1" class="col-sm-3 control-label">mobile mymber</label>
        <input type="text" class="form-control"/>
    </div>
    <div class="clear"></div>
   
</asp:Content>
