<%@ Page Title="" Language="C#" MasterPageFile="~/Visitor/VisitorMasterpage.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="medicalProject.Visitor.Index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:Panel ID="Panel1" runat="server">
    
<!-- start home -->
		<section id="home" class="text-center">
		  <div class="templatemo_headerimage">
		    <div class="flexslider">
		      <ul class="slides">
		        <li>
		        	<img src="../images/3.jpg" alt="Slide 1">
		        	<div class="slider-caption">
					    <div class="templatemo_homewrapper">
					      <h1 class="wow fadeInDown" data-wow-delay="2000">Mortality Rates</h1>
					      <h2 class="wow fadeInDown" data-wow-delay="2000">
							<%--<span>WE DESIGN &AMP; CODE WEBSITES</span>--%>
						</h2>
						<%--<a href="#service" class="smoothScroll btn btn-default wow fadeInDown" data-wow-delay="2000">Our Work</a>	--%>
					    </div>
				  	</div>
		        </li>
		        <li>
		        	<img src="../images/2.jpg" alt="Slide 2">
		        	<div class="slider-caption">
					    <div class="templatemo_homewrapper">
					      <h1 class="wow fadeInDown" data-wow-delay="2000">Hospital Resources</h1>
					      <h2 class="wow fadeInDown" data-wow-delay="2000">
							<%--<span>work on all modern browsers, Works on IE 10+</span>--%>
						</h2>
						<%--<p>see caniuse.com for browser compatibility information</p>
						<a href="#about" class="smoothScroll btn btn-default wow fadeInDown" data-wow-delay="2000">See about us</a>	--%>
					    </div>
				  	</div>
		        </li>
		      </ul>
		    </div>
		  </div>				
		</section>
		<!-- end home -->
        </asp:Panel>

</asp:Content>
