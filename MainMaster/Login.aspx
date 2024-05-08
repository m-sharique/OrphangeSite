<%@ Page Title="Login" Language="C#" MasterPageFile="~/MainMaster/MainMaster.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="AutomatedOrphanageHomeManagementSystem.MainMaster.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="mail" id="mail">
		<div class="container">
			<h3 class="agileinfo_header w3layouts_header">Sign In <span>here</span></h3>
			<p class="w3_services_para"><span>Online Orphanage Management Services</span></p>
			<div class="w3_agile_services_grids w3_agile_mailwe_grids">
				<form action="#" method="post">
					<div class="col-md-6 w3_agile_mail_grid">
						<span class="input input--ichiro">
							<asp:DropDownList ID="DropDownListLogins" runat="server">
								<asp:ListItem>USER</asp:ListItem>
								<asp:ListItem>ADMIN</asp:ListItem>
							</asp:DropDownList>
							
						</span>
						<span class="input input--ichiro">
							<asp:TextBox ID="txtUserNames" runat="server" placeholder="Usernames"></asp:TextBox>
							
						</span>
						<span class="input input--ichiro">
							<asp:TextBox ID="txtPasswords" TextMode="Password" runat="server" placeholder="Passwords"></asp:TextBox>
							
							
						</span>
						
						<asp:Button ID="btnLogins" BackColor="Red" ForeColor="White" runat="server" Text="Login" OnClick="btnLogins_Click" /><br />
						<asp:Button ID="btnSignUp" runat="server" Text="SignUp" BackColor="Green" ForeColor="White" OnClick="btnSignUp_Click" />
						
					</div>
					<div class="col-md-6 w3_agile_mail_grid">
						<img src="images/2.jpg" height="400px" width="400px" />
						
					</div>
					<div class="clearfix"> </div>
				</form>
			</div>
		</div>
	</div>


</asp:Content>
