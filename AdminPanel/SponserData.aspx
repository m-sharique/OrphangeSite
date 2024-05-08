<%@ Page Title="Sponser" Language="C#" MasterPageFile="~/AdminPanel/AdminMaster.Master" AutoEventWireup="true" CodeBehind="SponserData.aspx.cs" Inherits="AutomatedOrphanageHomeManagementSystem.AdminPanel.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<asp:GridView Text-align="center" ID="GridView01Osponser" runat="server" 
        AllowPaging="True" CellPadding="4" Height="332px" 
         Width="1100px" AutoGenerateColumns="False" Font-Size="Medium" ForeColor="#333333" GridLines="None" OnPageIndexChanging="GridView01Orphane_PageIndexChanging" OnSelectedIndexChanged="GridView01Orphane_SelectedIndexChanged" OnSelectedIndexChanging="GridView01Orphane_SelectedIndexChanging"  >
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            
            <asp:TemplateField HeaderText="Sponser Id">
            <ItemTemplate>
                <asp:Label ID="lblsid" runat="server" Text='<%#Eval("sponserId") %>'></asp:Label>
            </ItemTemplate>
            </asp:TemplateField>
            
            <asp:TemplateField HeaderText=" Name">
            <ItemTemplate>
                <asp:Label ID="lblsname" runat="server" Text='<%#Eval("name") %>'></asp:Label>
            </ItemTemplate>
          
            </asp:TemplateField>
            
            
            
            <asp:TemplateField HeaderText="Gender">
            <ItemTemplate>
                <asp:Label ID="lblsgender" runat="server" Text='<%#Eval("gender") %>'></asp:Label>
            </ItemTemplate>
           
            </asp:TemplateField>
            
            <asp:TemplateField HeaderText="HireChildrens">
            <ItemTemplate>
                <asp:Label ID="lblhirechild" runat="server" Text='<%#Eval("hirechild") %>'></asp:Label>
            </ItemTemplate>
          
            </asp:TemplateField>
            
            <asp:TemplateField HeaderText="City">
            <ItemTemplate>
                <asp:Label ID="lblcity" runat="server" Text='<%#Eval("city") %>'></asp:Label>
            </ItemTemplate>
          
            </asp:TemplateField>

             <asp:TemplateField HeaderText="Address">
            <ItemTemplate>
                <asp:Label ID="lbladdress" runat="server" Text='<%#Eval("address") %>'></asp:Label>
            </ItemTemplate>
          
            </asp:TemplateField>
            
            
        </Columns>
        <FooterStyle BackColor="#990000" ForeColor="White" Font-Bold="True" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
    </asp:GridView>




</asp:Content>
