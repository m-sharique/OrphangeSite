<%@ Page Title="AddStaff" Language="C#" MasterPageFile="~/AdminPanel/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AddStaff.aspx.cs" Inherits="AutomatedOrphanageHomeManagementSystem.AdminPanel.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

 <center style="font-size: medium; font-weight: bold; background-color: #CCFF99">
<br />
<br />
<br />
<br />
<table align="center" 
        
        style="width: 50%; height: 700px; background-color: #C0C0C0; font-size: large; font-weight: bold;">
        <tr>
            <td colspan="3" style="height: 77px">
            <h1 align="center" style="background-color: #000000; color: #FFFFFF"> Add New Product</h1>
                </td>
        </tr>
        
        <tr>
            <td align="center">
                <asp:Label ID="lblSId" runat="server" Text="Furniture Id"></asp:Label></td>
            <td >
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
              
               </td>
            <td align="center"> 
                <asp:Image ID="Image3" Height="87px" Width="127px" runat="server" 
                    BackColor="White" BorderColor="Red" BorderStyle="Groove" /></td>
        </tr>
        <tr>
            <td align="center">
               <asp:Label ID="lblFullName" runat="server" Text="Name"></asp:Label></td>
            <td >
                <asp:TextBox ID="txtFullName" class="input--style-5" runat="server"></asp:TextBox>
               
                </td>
            
        </tr>
     <tr>
            <td align="center">
                <asp:Label ID="lblGender" runat="server" Text="Price"></asp:Label></td>
            <td>
                <asp:RadioButtonList ID="RadioButtonListGender" runat="server">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:RadioButtonList>
               
               </td>
            
        </tr>
        <tr>
            <td align="center">
                <asp:Label ID="lblJoinDate" runat="server" Text="Price"></asp:Label></td>
            <td>
               <asp:TextBox ID="txtJoinDate" class="input--style-5" runat="server"></asp:TextBox> 
               
               </td>
            
        </tr>
        <tr>
            <td align="center">
                <asp:Label ID="lblimage" runat="server" Text="Image"></asp:Label></td>
            <td>
                <asp:FileUpload class="input--style-5" ID="FileUpload1" runat="server" /> 
                    </td>
            <td><asp:Button  ID="btnupload" runat="server" Text="Upload" 
                      BackColor="#99CC00" Font-Bold="True" 
                     Font-Size="Large" Height="27px" Width="118px" OnClick="btnupload_Click" 
                    /></td>
        </tr>
        <tr>
            <td colspan="3" align="center"><asp:Button ID="btnAddStaff"  runat="server" 
               Text="Submit" BackColor="#FF5050" Font-Bold="True" 
                    Font-Size="Large" Height="29px" Width="183px" OnClick="btnAddStaff_Click"  /></td>
        </tr>
</table>
<br />
<br />
<br />
<br />

</center>


</asp:Content>
