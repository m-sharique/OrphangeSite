<%@ Page Title="WholeInfo" Language="C#" MasterPageFile="~/UserMaster/UsreMaster.Master" AutoEventWireup="true" CodeBehind="WholeInformation.aspx.cs" Inherits="AutomatedOrphanageHomeManagementSystem.UserMaster.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


   <center style="font-size: medium; font-weight: bold; background-color: #CCFF99">
<br />
<br />
<br />
<br />
<br />
 <asp:GridView Text-align="center" ID="GridView1Whole" runat="server" 
        AllowPaging="True" CellPadding="4" 
        ForeColor="#333333" GridLines="None" Height="332px" 
         Width="1100px" AutoGenerateColumns="False" Font-Size="Medium" OnSelectedIndexChanged="GridView01_SelectedIndexChanged"   
       >
        <Columns>
            
            <asp:TemplateField HeaderText="Whole Number">
            <ItemTemplate>
                <asp:Label ID="lblnumber" runat="server" Text='<%#Eval("wholeNo") %>'></asp:Label>
            </ItemTemplate>
            </asp:TemplateField>
            
            <asp:TemplateField HeaderText="Whole Name">
            <ItemTemplate>
                <asp:Label ID="lblWname" runat="server" Text='<%#Eval("name") %>'></asp:Label>
            </ItemTemplate>
          
            </asp:TemplateField>
            
            
            
            <asp:TemplateField HeaderText="Member">
            <ItemTemplate>
                <asp:Label ID="lblmember" runat="server" Text='<%#Eval("member") %>'></asp:Label>
            </ItemTemplate>
           
            </asp:TemplateField>
            
            <asp:TemplateField HeaderText="Rooms">
            <ItemTemplate>
                <asp:Label ID="lblrooms" runat="server" Text='<%#Eval("rooms") %>'></asp:Label>
            </ItemTemplate>
          
            </asp:TemplateField>
            
            <asp:TemplateField HeaderText="Description">
            <ItemTemplate>
                <asp:Label ID="lbldscn" runat="server" Text='<%#Eval("description") %>'></asp:Label>
            </ItemTemplate>
           
            </asp:TemplateField>
            
            
           
            
            
        </Columns>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="White" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
    </asp:GridView>
    <br />
    <br />
    <br />
    <br />
    <br />
</center> 



</asp:Content>
