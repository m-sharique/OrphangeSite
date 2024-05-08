<%@ Page Title="Sponser" Language="C#" MasterPageFile="~/UserMaster/UsreMaster.Master" AutoEventWireup="true" CodeBehind="Sponser.aspx.cs" Inherits="AutomatedOrphanageHomeManagementSystem.UserMaster.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


<center>
        <table style="width: 448px; height: 440px; background-color: #FF9933; font-size: large; font-weight: bold;">
            <th colspan="2" align="center"><h2>Sponser</h2> </th>
            <tr>
                <td align="center">Sponser ID</td>
                <td align="center"><asp:Label ID="lblSID" runat="server" Text="ID"></asp:Label>
                   <%-- <asp:TextBox ID="txt_user_id" runat="server"></asp:TextBox>--%>
                </td>
            </tr>

            <tr>
                <td align="center">Full Name</td>
                <td align="center"><asp:TextBox ID="txtName" runat="server" placeholder="Enter Name"></asp:TextBox>
                     <%--<asp:RequiredFieldValidator ID="validname" runat="server" ControlToValidate="txt_user_name" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator> --%>
                </td>
            </tr>

            
            <tr>
                <td align="center">Gender</td>
                <td align="center">
                    <asp:RadioButtonList ID="RadioButtonListGenders" runat="server">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:RadioButtonList>
                    <%-- <asp:RequiredFieldValidator ID="validpass" runat="server" ControlToValidate="txt_pass" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator> --%>
                </td>
            </tr>

            
            <tr>
                <td align="center">Hire Child</td>
                <td align="center">
                    <asp:DropDownList ID="DropDownList_HireChild" runat="server">
                        <asp:ListItem>01</asp:ListItem>
                        <asp:ListItem>02</asp:ListItem>
                        <asp:ListItem>03</asp:ListItem>
                    </asp:DropDownList>
                    <%-- <asp:RequiredFieldValidator ID="validpass" runat="server" ControlToValidate="txt_pass" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator> --%>
                </td>
            </tr>

            <tr>
                <td align="center">City</td>
                <td align="center"><asp:TextBox ID="txtCity" runat="server" placeholder=" Enter Password"></asp:TextBox>
                    <%-- <asp:RequiredFieldValidator ID="validpass" runat="server" ControlToValidate="txt_pass" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator> --%>
                </td>
            </tr>

            <tr>
                <td align="center">Address</td>
                <td align="center"><asp:TextBox ID="txtAdsress" runat="server" placeholder="Address" TextMode="MultiLine"></asp:TextBox>
                     <%--<asp:RequiredFieldValidator ID="validcpass" runat="server" ControlToValidate="txt_Confirm_pass" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator> --%>
                </td>
            </tr>

            <tr>
                <td colspan="2" align="center">
                    <asp:Button ID="btnConfirmRegiistration" runat="server" Text="Submit" BackColor="#669900" Font-Bold="True" Font-Size="Large" ForeColor="White" OnClick="btnConfirmRegiistration_Click"  />
                    &nbsp&nbsp&nbsp
                </td>
            </tr>
        </table>
    </center>



</asp:Content>
