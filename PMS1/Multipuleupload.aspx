<%@ Page Title="" Language="C#" MasterPageFile="~/Newprocess.Master" AutoEventWireup="true" CodeBehind="Multipuleupload.aspx.cs" Inherits="PMS1.Multipuleupload" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 
   
    <table>

    <tr>

    <td> 

        Select File

        </td>

        <td>

        <asp:FileUpload ID="FileUpload1" runat="server"/>

        </td>

        <td> 

        <asp:Button ID="Button1" runat="server" Text="Upload" OnClick="btnexcelupload_Click"/>

        </td>
        
        <td>
            <asp:Label ID="lblmessage" runat="server"></asp:Label>
        </td>

        </tr>
 

</table>



</asp:Content>
