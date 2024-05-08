<%@ Page Title="Gallery" Language="C#" MasterPageFile="~/MainMaster/MainMaster.Master" AutoEventWireup="true" CodeBehind="Gallery.aspx.cs" Inherits="AutomatedOrphanageHomeManagementSystem.MainMaster.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="gallery" id="gallery">
		<div class="container">
			<h3 class="agileinfo_header w3layouts_header">Our <span>Gallery</span></h3>
			<p class="w3_services_para"><span>Orphanage Home Management Services</span></p>
		</div>
		<div class="w3_agile_services_grids">
			<ul class="w3l_gallery_grid" id="lightGallery">
				<li data-title="Orphanage Home" data-desc="Lorem Ipsum is simply dummy text of the printing." data-src="images/7.jpg" data-responsive-src="images/7.jpg"> 
					<div class="w3_gallery_grid">
						<div class="hovereffect">
							<a href="#">
								<img src="images/7.jpg" alt="" class="img-responsive" />
								<div class="overlay">
									<p><i class="fa fa-eye" aria-hidden="true"></i></p>
								</div>
							</a>
						</div>
					</div>
				</li>
				<li data-title="Orphanage Home" data-desc="Lorem Ipsum is simply dummy text of the printing." data-src="images/8.jpg" data-responsive-src="images/8.jpg"> 
					<div class="w3_gallery_grid">
						<div class="hovereffect">
							<a href="#">
								<img src="images/8.jpg" alt="" class="img-responsive" />
								<div class="overlay">
									<p><i class="fa fa-eye" aria-hidden="true"></i></p>
								</div>
							</a>
						</div>
					</div>
				</li>
				<li data-title="Orphanage Home" data-desc="Lorem Ipsum is simply dummy text of the printing." data-src="images/9.jpg" data-responsive-src="images/9.jpg"> 
					<div class="w3_gallery_grid">
						<div class="hovereffect">
							<a href="#">
								<img src="images/9.jpg" alt="" class="img-responsive" />
								<div class="overlay">
									<p><i class="fa fa-eye" aria-hidden="true"></i></p>
								</div>
							</a>
						</div>
					</div>
				</li>
				<li data-title="Orphanage Home" data-desc="Lorem Ipsum is simply dummy text of the printing." data-src="images/10.jpg" data-responsive-src="images/10.jpg"> 
					<div class="w3_gallery_grid">
						<div class="hovereffect">
							<a href="#">
								<img src="images/10.jpg" alt="" class="img-responsive" />
								<div class="overlay">
									<p><i class="fa fa-eye" aria-hidden="true"></i></p>
								</div>
							</a>
						</div>
					</div>
				</li>
				<li data-title="Orphanage Home" data-desc="Lorem Ipsum is simply dummy text of the printing." data-src="images/11.jpg" data-responsive-src="images/11.jpg"> 
					<div class="w3_gallery_grid">
						<div class="hovereffect">
							<a href="#">
								<img src="images/11.jpg" alt="" class="img-responsive" />
								<div class="overlay">
									<p><i class="fa fa-eye" aria-hidden="true"></i></p>
								</div>
							</a>
						</div>
					</div>
				</li>
				<li data-title="Orphanage Home" data-desc="Lorem Ipsum is simply dummy text of the printing." data-src="images/12.jpg" data-responsive-src="images/12.jpg"> 
					<div class="w3_gallery_grid">
						<div class="hovereffect">
							<a href="#">
								<img src="images/12.jpg" alt="" class="img-responsive" />
								<div class="overlay">
									<p><i class="fa fa-eye" aria-hidden="true"></i></p>
								</div>
							</a>
						</div>
					</div>
				</li>
			</ul>
		</div>
	</div>
	<script src="js/lightGallery.js" type="text/javascript"></script>
	<script type="text/javascript">
    	 $(document).ready(function() {
			$("#lightGallery").lightGallery({
				mode:"fade",
				speed:800,
				caption:true,
				desc:true,
				mobileSrc:true
			});
		});
    </script>




</asp:Content>
