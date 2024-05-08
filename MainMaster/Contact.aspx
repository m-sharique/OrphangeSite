<%@ Page Title="Contact" Language="C#" MasterPageFile="~/MainMaster/MainMaster.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="AutomatedOrphanageHomeManagementSystem.MainMaster.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="mail" id="mail">
		<div class="container">
			<h3 class="agileinfo_header w3layouts_header">Mail <span>Us</span></h3>
			<p class="w3_services_para"><span>Online Orphanage Management Services</span></p>
			<div class="w3_agile_services_grids w3_agile_mailwe_grids">
				<form action="#" method="post">
					<div class="col-md-6 w3_agile_mail_grid">
						<span class="input input--ichiro">
							<asp:TextBox ID="txtName" placeholder="FullName" runat="server" ></asp:TextBox>
							
							
						</span>
						<span class="input input--ichiro">
							<asp:TextBox ID="txtEmail" placeholder="Email" runat="server" ></asp:TextBox>
							
							
						</span>
						<span class="input input--ichiro">
							<asp:TextBox ID="txtMobile" placeholder="Mobile" runat="server" ></asp:TextBox>
							
							
						</span>
						<asp:Button ID="btnSend" BackColor="Red" ForeColor="White" runat="server" Text="Send" OnClick="btnSend_Click" />
						
					</div>
					<div class="col-md-6 w3_agile_mail_grid">
						<asp:TextBox ID="txtMessage" TextMode="MultiLine" placeholder="Message" runat="server"></asp:TextBox>
						
					</div>
					<div class="clearfix"> </div>
				</form>
			</div>
		</div>
	</div>
	<div class="agile_map">
		
	</div>



</asp:Content>
