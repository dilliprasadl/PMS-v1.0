<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registation.aspx.cs" Inherits="PMS1.Registation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sachetassolutions</title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="margin: 0px auto 0px auto; width: 800px;">
        <table  align="center" style="margin:150px 150px 150px 150px; border: 1px solid black;">
            <tr>
                <td style="text-align:center;background-color:aquamarine;color:blue" colspan="2"> Registatio Page</td>
            </tr>
            <tr>
                <td>User Name</td>
                <td>  <asp:TextBox ID="txtuname" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Email</td>
                <td>  <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox></td>
            </tr>
          <tr>
              <td>Password</td>
              <td>  
                   <asp:TextBox ID="txtpassword" runat="server" TextMode="Password"></asp:TextBox>
             </td>
          </tr>
            <tr>
                <td>ConfirmPassword</td>
                <td>
                     <asp:TextBox ID="txtcpwd" runat="server" TextMode="Password"></asp:TextBox>
                </td>

            </tr>
            <tr>
                <td> <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Registation" /></td>
            </tr>
               <tr>
                   <td> <asp:Label ID="Label6" runat="server" Text="Already Member"></asp:Label></td>
                <td>
                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Login</asp:LinkButton>
                </td>
               </tr>

        </table>
   
    
    </div>
    </form>
</body>
</html>
