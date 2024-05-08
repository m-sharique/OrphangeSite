<%@ Page Title="AddWhole" Language="C#" MasterPageFile="~/AdminPanel/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AddWhole.aspx.cs" Inherits="AutomatedOrphanageHomeManagementSystem.AdminPanel.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<center>
        <table style="width: 448px; height: 440px; background-color: #FF9933; font-size: large; font-weight: bold;">
            <th colspan="2" align="center"><h2>Add Whole Information</h2> </th>
            
            <tr>
                <td align="center">Whole No</td>
                <td align="center"><asp:TextBox ID="txtWholeNo" runat="server" placeholder="Whole No"></asp:TextBox>
                     <%--<asp:RequiredFieldValidator ID="validname" runat="server" ControlToValidate="txt_user_name" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator> --%>
                </td>
            </tr>
            <tr>
                <td align="center">Whole Name</td>
                <td align="center"><asp:TextBox ID="txtWholeName" runat="server" placeholder="Enter Name"></asp:TextBox>
                     <%--<asp:RequiredFieldValidator ID="validname" runat="server" ControlToValidate="txt_user_name" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator> --%>
                </td>
            </tr>
             

            <tr>
                <td align="center">
                    Children Member
                </td>
                <td align="center"><asp:TextBox ID="txtmember" runat="server" placeholder="Orphanage Home Name"></asp:TextBox>
                     <%--<asp:RequiredFieldValidator ID="validmobile" runat="server" ControlToValidate="txt_user_mobile" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator> --%>
                </td>
            </tr>

           

           
            <tr>
                <td align="center">Number of Rooms</td>
                <td align="center"><asp:TextBox ID="txtNoRooms"   runat="server" ></asp:TextBox>
                    <%-- <asp:RequiredFieldValidator ID="validpass" runat="server" ControlToValidate="txt_pass" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator> --%>
                </td>
            </tr>
            <tr>
                <td align="center">Description</td>
                <td align="center"><asp:TextBox ID="txtDescrtiption"  TextMode="MultiLine" runat="server"  placeholder="Description" ></asp:TextBox>
                    <%-- <asp:RequiredFieldValidator ID="validpass" runat="server" ControlToValidate="txt_pass" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator> --%>
                </td>
            </tr>
           

            <tr>
                <td colspan="2" align="center">
                    <asp:Button ID="txtWholeSubmit" runat="server" Text="Add Whole" BackColor="#669900" Font-Bold="True" Font-Size="Large" ForeColor="White" OnClick="txtWholeSubmit_Click"  />
                    &nbsp&nbsp&nbsp
                </td>
            </tr>
        </table>
    </center>






</asp:Content>
