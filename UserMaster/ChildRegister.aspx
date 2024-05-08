<%@ Page Title="ChildTegister" Language="C#" MasterPageFile="~/UserMaster/UsreMaster.Master" AutoEventWireup="true" CodeBehind="ChildRegister.aspx.cs" Inherits="AutomatedOrphanageHomeManagementSystem.UserMaster.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

 <center>
        <table style="width: 448px; height: 440px; background-color: #FF9933; font-size: large; font-weight: bold;">
            <th colspan="2" align="center"><h2>Children Registration</h2> </th>
            <tr>
                <td align="center">Children ID</td>
                <td align="center"><asp:Label ID="lblCID" runat="server" Text="ID"></asp:Label>
                   <%-- <asp:TextBox ID="txt_user_id" runat="server"></asp:TextBox>--%>
                </td>
            </tr>

            <tr>
                <td align="center">Full Name</td>
                <td align="center"><asp:TextBox ID="txtNames" runat="server" placeholder="Enter Name"></asp:TextBox>
                     <%--<asp:RequiredFieldValidator ID="validname" runat="server" ControlToValidate="txt_user_name" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator> --%>
                </td>
            </tr>

            
            <tr>
                <td align="center">Gender</td>
                <td align="center">
                    <asp:RadioButtonList ID="RadioButtonListGender" runat="server">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:RadioButtonList>
                    <%-- <asp:RequiredFieldValidator ID="validpass" runat="server" ControlToValidate="txt_pass" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator> --%>
                </td>
            </tr>

            
            <tr>
                <td align="center">Date  Of Birth</td>
                <td align="center"><asp:TextBox ID="txtDOB" runat="server" TextMode="Date"></asp:TextBox>
                    <%-- <asp:RequiredFieldValidator ID="validpass" runat="server" ControlToValidate="txt_pass" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator> --%>
                </td>
            </tr>

            <tr>
                <td align="center">Description</td>
                <td align="center"><asp:TextBox ID="txtdescription" runat="server" placeholder=" Enter description" TextMode="MultiLine"></asp:TextBox>
                    <%-- <asp:RequiredFieldValidator ID="validpass" runat="server" ControlToValidate="txt_pass" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator> --%>
                </td>
            </tr>

            <tr>
                <td align="center">Join Date</td>
                <td align="center"><asp:TextBox ID="txtJoinDate" runat="server" TextMode="Date"></asp:TextBox>
                     <%--<asp:RequiredFieldValidator ID="validcpass" runat="server" ControlToValidate="txt_Confirm_pass" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator> --%>
                </td>
            </tr>

            <tr>
                <td colspan="2" align="center">
                    <asp:Button ID="btnSubmits" runat="server" Text="Submit" BackColor="#669900" Font-Bold="True" Font-Size="Large" ForeColor="White" OnClick="btnSubmits_Click"  />
                    &nbsp&nbsp&nbsp
                </td>
            </tr>
        </table>
    </center>







</asp:Content>
