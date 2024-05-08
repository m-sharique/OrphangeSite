<%@ Page Title="AddCamp" Language="C#" MasterPageFile="~/AdminPanel/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AddCamp.aspx.cs" Inherits="AutomatedOrphanageHomeManagementSystem.AdminPanel.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<center>
        <table style="width: 448px; height: 440px; background-color: #00ffff; font-size: large; font-weight: bold;">
            <th colspan="2" align="center"><h2>Add Camp</h2> </th>
            

            <tr>
                <td align="center">CampAdmin Name</td>
                <td align="center"><asp:TextBox ID="txtCampAdminName" runat="server" placeholder="Enter Name"></asp:TextBox>
                     <%--<asp:RequiredFieldValidator ID="validname" runat="server" ControlToValidate="txt_user_name" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator> --%>
                </td>
            </tr>
             <tr>
                <td align="center">Place</td>
                <td align="center"><asp:TextBox ID="txtplaces" runat="server" placeholder="Enter Name"></asp:TextBox>
                     <%--<asp:RequiredFieldValidator ID="validname" runat="server" ControlToValidate="txt_user_name" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator> --%>
                </td>
            </tr>

            <tr>
                <td align="center">
                    City
                </td>
                <td align="center"><asp:TextBox ID="txtCitys" runat="server" placeholder="Enter Mobile No"></asp:TextBox>
                     <%--<asp:RequiredFieldValidator ID="validmobile" runat="server" ControlToValidate="txt_user_mobile" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator> --%>
                </td>
            </tr>

           

           
            <tr>
                <td align="center">Date </td>
                <td align="center"><asp:TextBox ID="txtDate" TextMode="Date" runat="server" ></asp:TextBox>
                    <%-- <asp:RequiredFieldValidator ID="validpass" runat="server" ControlToValidate="txt_pass" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator> --%>
                </td>
            </tr>

           

            <tr>
                <td colspan="2" align="center">
                    <asp:Button ID="btnAddCamp" runat="server" Text="Add Camp" BackColor="#669900" Font-Bold="True" Font-Size="Large" ForeColor="White" OnClick="btnAddCamp_Click"  />
                    &nbsp&nbsp&nbsp
                </td>
            </tr>
        </table>
    </center>



</asp:Content>
