<%@ Page Title="" Language="C#" MasterPageFile="~/Newprocess.Master" AutoEventWireup="true" CodeBehind="newclientprocess.aspx.cs" Inherits="PMS1.newclientprocess" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <table style="align-content:center">
            <tr>
                <td>Process id</td>
                <td> <asp:TextBox ID="txtpid" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Process Name</td>
                <td> <asp:TextBox ID="txtpname" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Owner</td>
                <td> <asp:TextBox ID="txtowner" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Start Date</td>
                <td>  <asp:TextBox ID="txtSdate" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td> <asp:Button ID="btnsubmit" runat="server" Text="submit" OnClick="btnsubmi_Click"/></td>
            </tr>
        </table>
    
          </div>
</asp:Content>
