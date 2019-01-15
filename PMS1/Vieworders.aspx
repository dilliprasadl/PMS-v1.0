<%@ Page Title="" Language="C#" MasterPageFile="~/Newprocess.Master" AutoEventWireup="true" CodeBehind="Vieworders.aspx.cs" Inherits="PMS1.Vieworders" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server"  AutoGenerateColumns="false"  AutoGenerateEditButton="True" onrowediting="GridView1_RowEditing"  onrowupdating="GridView1_RowUpdating"  onrowcancelingedit="GridView1_RowCancelingEdit">
      
        <Columns>
<%--<asp:BoundField DataField="OrderId" HeaderText="OrderId" />
<asp:BoundField DataField="OrdaerName" HeaderText="OrderName" />
<asp:BoundField DataField="OrderReceivedTime" HeaderText="OrderReceivedTime" />
 <asp:BoundField DataField="OrderReceivedDate" HeaderText="OrderReceivedTime" />--%>
                                 
                  <asp:TemplateField HeaderText="S No">
                <ItemTemplate>
                    <%# Container.DataItemIndex + 1 %>
                    <asp:HiddenField runat="server" ID="hdn_empid" Value='<%#Eval("OrderId") %>' />
                    </ItemTemplate>
            </asp:TemplateField>
              <asp:TemplateField HeaderText="OrdaerName">  
                            <EditItemTemplate>  
                                <asp:TextBox ID="txtorder" runat="server" Text='<%# Eval("OrdaerName") %>'></asp:TextBox>  
                            </EditItemTemplate>  
                            <ItemTemplate>  
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("OrdaerName") %>'></asp:Label>
                            </ItemTemplate>  
                        </asp:TemplateField>  
                       <%-- <asp:TemplateField HeaderText="OrderReceivedTime">  
                            <EditItemTemplate>  
                                <asp:TextBox ID="txtord" runat="server" Text='<%# Eval("OrderReceivedTime") %>'></asp:TextBox>  
                            </EditItemTemplate>  
                            <ItemTemplate>  
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("OrderReceivedTime") %>'></asp:Label>  
                            </ItemTemplate>  
                        </asp:TemplateField>  --%>
              <asp:TemplateField HeaderText="OrderReceivedDate">  
                            <EditItemTemplate>  
                                <asp:TextBox ID="txtort" runat="server" Text='<%# Eval("OrderReceivedDate") %>'></asp:TextBox>  
                            </EditItemTemplate>  
                            <ItemTemplate>  
                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("OrderReceivedDate") %>'></asp:Label>  
                            </ItemTemplate>  
                        </asp:TemplateField>  
              
 
</Columns>

    </asp:GridView>
</asp:Content>
