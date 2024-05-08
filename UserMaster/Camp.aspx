<%@ Page Title="Camp" Language="C#" MasterPageFile="~/UserMaster/UsreMaster.Master" AutoEventWireup="true" CodeBehind="Camp.aspx.cs" Inherits="AutomatedOrphanageHomeManagementSystem.UserMaster.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<center style="font-size: medium; font-weight: bold; background-color: #CCFF99">
<br />
<br />
<br />
<br />
<br /><asp:FormView ID="FormView1" runat="server" AllowPaging="True"  CellPadding="4" ForeColor="#333333" Height="200px" Width="410px" OnPageIndexChanging="FormView1_PageIndexChanging1"  >
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <ItemTemplate>
            <table border="5">
                <tr>
                    <th colspan="2" align="center">
                        <h2>UpComming Orphanage Camp</h2>
                    </th>
                </tr>
            <tr>
                <td>Admin Name</td>
                <td><%#Eval("adminName") %></td>
            </tr>
            
            <tr>
                <td>Place Name</td>
                <td><%#Eval("place") %></td>
            </tr>
            
            <tr>
                <td>City</td>
                <td><%#Eval("city") %></td>
            </tr>
            
            <tr>
                <td>Camp Date</td>
                <td><%#Eval("campDate") %></td>
            </tr>
            
            </table>
        </ItemTemplate>
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        </asp:FormView>
    <%-- <asp:GridView ID="CampGV" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="ObjectDataSource1" GridLines="Vertical" OnSelectedIndexChanged="CampGV_SelectedIndexChanged" >
         <AlternatingRowStyle BackColor="#DCDCDC" />
         <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
         <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
         <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
         <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
         <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
         <SortedAscendingCellStyle BackColor="#F1F1F1" />
         <SortedAscendingHeaderStyle BackColor="#0000A9" />
         <SortedDescendingCellStyle BackColor="#CAC9C9" />
         <SortedDescendingHeaderStyle BackColor="#000065" />
         <Columns>
            
            <asp:TemplateField HeaderText="Admin Name">
            <ItemTemplate>
                <asp:Label ID="lblanm" runat="server" Text='<%#Eval("adminName") %>'></asp:Label>
            </ItemTemplate>
            </asp:TemplateField>
            
            <asp:TemplateField HeaderText="Place">
            <ItemTemplate>
                <asp:Label ID="lblPls" runat="server" Text='<%#Eval("place") %>'></asp:Label>
            </ItemTemplate>
            
            </asp:TemplateField>
            
            
            
            <asp:TemplateField HeaderText="City Name">
            <ItemTemplate>
                <asp:Label ID="lblcitys" runat="server" Text='<%#Eval("city") %>'></asp:Label>
            </ItemTemplate>
          
            </asp:TemplateField>
            
            <asp:TemplateField HeaderText="Camp Date">
            <ItemTemplate>
                <asp:Label ID="lblcdt" runat="server" Text='<%#Eval("campDate") %>'></asp:Label>
            </ItemTemplate>
            
            </asp:TemplateField>
          
        </Columns>
     </asp:GridView>--%>



</asp:Content>
