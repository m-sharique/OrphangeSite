<%@ Page Title="UserData" Language="C#" MasterPageFile="~/AdminPanel/AdminMaster.Master" AutoEventWireup="true" CodeBehind="UserData.aspx.cs" Inherits="AutomatedOrphanageHomeManagementSystem.AdminPanel.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <center style="font-size: medium; font-weight: bold; background-color: #CCFF99">
<br />
<br />
<br />
<br />
<br />
 <asp:GridView Text-align="center" ID="GridView01User" runat="server" 
        AllowPaging="True" CellPadding="3" 
        ForeColor="Black" GridLines="Vertical" Height="332px" 
         Width="1100px" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" 
    BorderStyle="Solid" BorderWidth="1px" Font-Size="Medium"    
       >
        <PagerSettings Mode="NumericFirstLast" />
        <Columns>
            
            <asp:TemplateField HeaderText="User ID">
            <ItemTemplate>
                <asp:Label ID="lbluid" runat="server" Text='<%#Eval("userId") %>'></asp:Label>
            </ItemTemplate>
            </asp:TemplateField>
            
            <asp:TemplateField HeaderText="First Name">
            <ItemTemplate>
                <asp:Label ID="lblfname" runat="server" Text='<%#Eval("firstName") %>'></asp:Label>
            </ItemTemplate>
          
            </asp:TemplateField>
            
            
            
            <asp:TemplateField HeaderText="lastName">
            <ItemTemplate>
                <asp:Label ID="lbllnm" runat="server" Text='<%#Eval("lastName") %>'></asp:Label>
            </ItemTemplate>
           
            </asp:TemplateField>
            
            <asp:TemplateField HeaderText="Email">
            <ItemTemplate>
                <asp:Label ID="lblemail" runat="server" Text='<%#Eval("email") %>'></asp:Label>
            </ItemTemplate>
          
            </asp:TemplateField>
            
            <asp:TemplateField HeaderText="Mobile">
            <ItemTemplate>
                <asp:Label ID="lblmobile" runat="server" Text='<%#Eval("mobile") %>'></asp:Label>
            </ItemTemplate>
           
            </asp:TemplateField>
            
           <asp:TemplateField HeaderText="Password">
            <ItemTemplate>
                <asp:Label ID="lblpass" runat="server" Text='<%#Eval("pass") %>'></asp:Label>
            </ItemTemplate>
           
            </asp:TemplateField>
            
            
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="#CCCCCC" />
    </asp:GridView>
    <br />
    <br />
    <br />
    <br />
    <br />
</center>





</asp:Content>
