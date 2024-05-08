<%@ Page Title="Staff" Language="C#" MasterPageFile="~/UserMaster/UsreMaster.Master" AutoEventWireup="true" CodeBehind="Staff.aspx.cs" Inherits="AutomatedOrphanageHomeManagementSystem.UserMaster.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<center style="font-size: medium; font-weight: bold; background-color: #CCFF99">
<br />
<br />
<br />
<br />
<br />
 <asp:GridView Text-align="center" ID="GridView01" runat="server" 
        AllowPaging="True" CellPadding="3" 
        ForeColor="Black" GridLines="Vertical" Height="332px" 
         Width="1100px" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" 
    BorderStyle="Solid" BorderWidth="1px" Font-Size="Medium" OnSelectedIndexChanged="GridView01_SelectedIndexChanged"  
       >
        <PagerSettings Mode="NumericFirstLast" />
        <Columns>
            
            <asp:TemplateField HeaderText="Staff ID">
            <ItemTemplate>
                <asp:Label ID="lblid" runat="server" Text='<%#Eval("staffId") %>'></asp:Label>
            </ItemTemplate>
            </asp:TemplateField>
            
            <asp:TemplateField HeaderText="Name">
            <ItemTemplate>
                <asp:Label ID="lblname" runat="server" Text='<%#Eval("name") %>'></asp:Label>
            </ItemTemplate>
          
            </asp:TemplateField>
            
            
            
            <asp:TemplateField HeaderText="Gender">
            <ItemTemplate>
                <asp:Label ID="lblgdr" runat="server" Text='<%#Eval("gender") %>'></asp:Label>
            </ItemTemplate>
           
            </asp:TemplateField>
            
            <asp:TemplateField HeaderText="Join Date">
            <ItemTemplate>
                <asp:Label ID="lbljdate" runat="server" Text='<%#Eval("joinDate") %>'></asp:Label>
            </ItemTemplate>
          
            </asp:TemplateField>
            
            <asp:TemplateField HeaderText="Image Path">
            <ItemTemplate>
                <asp:Label ID="lblipath" runat="server" Text='<%#Eval("image") %>'></asp:Label>
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
