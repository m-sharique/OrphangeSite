<%@ Page Title="OrphaneChild" Language="C#" MasterPageFile="~/AdminPanel/AdminMaster.Master" AutoEventWireup="true" CodeBehind="OrphaneChild.aspx.cs" Inherits="AutomatedOrphanageHomeManagementSystem.AdminPanel.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<asp:GridView Text-align="center" ID="GridView01Orphane" runat="server" 
        AllowPaging="True" CellPadding="4" Height="332px" 
         Width="1100px" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" 
    BorderStyle="None" BorderWidth="1px" Font-Size="Medium" OnSelectedIndexChanged="GridView01Orphane_SelectedIndexChanged" OnSelectedIndexChanging="GridView01Orphane_SelectedIndexChanging" >
        <Columns>
            
            <asp:TemplateField HeaderText="Children Id">
            <ItemTemplate>
                <asp:Label ID="lblcid" runat="server" Text='<%#Eval("childrenId") %>'></asp:Label>
            </ItemTemplate>
            </asp:TemplateField>
            
            <asp:TemplateField HeaderText="Children Name">
            <ItemTemplate>
                <asp:Label ID="lblcname" runat="server" Text='<%#Eval("childrenName") %>'></asp:Label>
            </ItemTemplate>
          
            </asp:TemplateField>
            
            
            
            <asp:TemplateField HeaderText="Gender">
            <ItemTemplate>
                <asp:Label ID="lblcgender" runat="server" Text='<%#Eval("gender") %>'></asp:Label>
            </ItemTemplate>
           
            </asp:TemplateField>
            
            <asp:TemplateField HeaderText="Date Of Birth">
            <ItemTemplate>
                <asp:Label ID="lbldob" runat="server" Text='<%#Eval("dateOfBirth") %>'></asp:Label>
            </ItemTemplate>
          
            </asp:TemplateField>
            
            <asp:TemplateField HeaderText="Description">
            <ItemTemplate>
                <asp:Label ID="lbldescription" runat="server" Text='<%#Eval("description") %>'></asp:Label>
            </ItemTemplate>
          
            </asp:TemplateField>

             <asp:TemplateField HeaderText="Join Date">
            <ItemTemplate>
                <asp:Label ID="lbljdate" runat="server" Text='<%#Eval("joinDate") %>'></asp:Label>
            </ItemTemplate>
          
            </asp:TemplateField>
            
            
        </Columns>
        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#330099" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
        <SortedAscendingCellStyle BackColor="#FEFCEB" />
        <SortedAscendingHeaderStyle BackColor="#AF0101" />
        <SortedDescendingCellStyle BackColor="#F6F0C0" />
        <SortedDescendingHeaderStyle BackColor="#7E0000" />
    </asp:GridView>



</asp:Content>
