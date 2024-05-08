<%@ Page Title="Registration" Language="C#" MasterPageFile="~/MainMaster/MainMaster.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="AutomatedOrphanageHomeManagementSystem.MainMaster.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="mail" id="mail">
		<div class="container">
			<h3 class="agileinfo_header w3layouts_header">Register<span>Now</span></h3>
			<p class="w3_services_para"><span>Online Orphanage Management Services</span></p>
			<div class="w3_agile_services_grids w3_agile_mailwe_grids">
				<form action="#" method="post">
					<div class="col-md-6 w3_agile_mail_grid">
						<span class="input input--ichiro">
							<asp:Label Id="lblUid" runat="server" Text="Label"></asp:Label>
							
							
						</span>
						<span class="input input--ichiro">
							<asp:TextBox ID="txtFirstName" placeholder="FirstName" runat="server" ></asp:TextBox>
							
						</span>
						<span class="input input--ichiro">
							<asp:TextBox ID="txtLastName" runat="server" placeholder="LastName"></asp:TextBox>
							
						</span>
						<span class="input input--ichiro">
							<asp:TextBox ID="txtEmails" runat="server" placeholder="Email"></asp:TextBox>
							
						</span>
						<span class="input input--ichiro">
							<asp:TextBox ID="txtMobiles" placeholder="Mobile" runat="server" ></asp:TextBox>
							
						</span>
						<asp:Button ID="btnSbmits" BackColor="Red" ForeColor="White" runat="server" Text="Submit" OnClick="btnSbmits_Click" /><br />
						<asp:Button ID="btnSignIn" runat="server" Text="Login" BackColor="Green" ForeColor="White" OnClick="btnSignIn_Click"  />
						
					</div>
					<div class="col-md-6 w3_agile_mail_grid">
						<span class="input input--ichiro">
							<asp:TextBox ID="txtPassword" runat="server" placeholder="Password"></asp:TextBox>
							
						</span>
						<span class="input input--ichiro">
							<asp:TextBox ID="txtCPass" runat="server" placeholder="Confirm Password"></asp:TextBox>
							
						</span>
						
					</div>
					<div class="clearfix"> </div>
				</form>
			</div>
		</div>
	</div>
	<div class="agile_map">
		
	</div>



</asp:Content>
