<%@ Page Title="" Language="C#" MasterPageFile="~/Newprocess.Master" AutoEventWireup="true" CodeBehind="Createrole.aspx.cs" Inherits="PMS1.Createrole" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table>
<tr>
    <td>Role</td>
     <td><asp:TextBox  runat="server" ID="txtrole"></asp:TextBox></td>
      </tr>
          <tr>

                <td> <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" /></td>
            
</tr>
    </table>
  
</asp:Content>
