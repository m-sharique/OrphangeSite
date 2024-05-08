<%@ Page Title="Feedback" Language="C#" MasterPageFile="~/AdminPanel/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Feedback.aspx.cs" Inherits="AutomatedOrphanageHomeManagementSystem.AdminPanel.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<asp:GridView Text-align="center" ID="GridView01feedback" runat="server" 
        AllowPaging="True" CellPadding="4" Height="332px" 
         Width="1100px" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" 
    BorderStyle="None" BorderWidth="1px" Font-Size="Medium" OnSelectedIndexChanged="GridView01feedback_SelectedIndexChanged" OnSelectedIndexChanging="GridView01feedback_SelectedIndexChanging"    
       >
        <Columns>
            
            <asp:TemplateField HeaderText="Name">
            <ItemTemplate>
                <asp:Label ID="lblname" runat="server" Text='<%#Eval("name") %>'></asp:Label>
            </ItemTemplate>
            </asp:TemplateField>
            
            <asp:TemplateField HeaderText="Email">
            <ItemTemplate>
                <asp:Label ID="lblemail" runat="server" Text='<%#Eval("email") %>'></asp:Label>
            </ItemTemplate>
          
            </asp:TemplateField>
            
            
            
            <asp:TemplateField HeaderText="Mobile Number">
            <ItemTemplate>
                <asp:Label ID="lbllmno" runat="server" Text='<%#Eval("mobile") %>'></asp:Label>
            </ItemTemplate>
           
            </asp:TemplateField>
            
            <asp:TemplateField HeaderText="Message">
            <ItemTemplate>
                <asp:Label ID="lblmessage" runat="server" Text='<%#Eval("message") %>'></asp:Label>
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
