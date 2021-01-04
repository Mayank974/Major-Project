
	<!DOCTYPE html>
	<html lang="zxx" class="no-js">
	<head>
		<!-- Mobile Specific Meta -->
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<!-- Favicon-->
		<link rel="shortcut icon" href="img/fav.png">
		<!-- Author Meta -->
		<meta name="author" content="codepixer">
		<!-- Meta Description -->
		<meta name="description" content="">
		<!-- Meta Keyword -->
		<meta name="keywords" content="">
		<!-- meta character set -->
		<meta charset="UTF-8">
		<!-- Site Title -->
		<title>Home-Seeker</title>

		<link href="https://fonts.googleapis.com/css?family=Poppins:100,200,400,300,500,600,700" rel="stylesheet"> 
			<!--
			CSS
			============================================= -->
			<link rel="stylesheet" href="css/linearicons.css">
			<link rel="stylesheet" href="css/font-awesome.min.css">
			<link rel="stylesheet" href="css/bootstrap.css">
			<link rel="stylesheet" href="css/magnific-popup.css">
			<link rel="stylesheet" href="css/nice-select.css">					
			<link rel="stylesheet" href="css/animate.min.css">
			<link rel="stylesheet" href="css/owl.carousel.css">
			<link rel="stylesheet" href="css/main.css">
		</head>
		<body>

			  <header id="header" id="home">
			  	<div class="container header-top">
			  		<div class="row">
				  		<div class="col-6 top-head-left">				  			
				  			<ul>
		  						<li><a href="#"><i class="fa fa-facebook"></i></a></li>
								<li><a href="#"><i class="fa fa-twitter"></i></a></li>
								<!--<li><a href="#"><i class="fa fa-dribbble"></i></a></li>
								<li><a href="#"><i class="fa fa-behance"></i></a></li>-->
				  			</ul>
				  		</div>
				  		<div class="col-6 top-head-right">
				  			<ul>
				  				<li><a href="tel:+91 8269683663"><span>+91 8269683663</span> <span class="lnr lnr-phone-handset"></span></a></li>
				  				<li><a href="#">Register / Login</a></li>
				  			</ul>
				  		</div>			  			
			  		</div>
			  	</div>
			  	<hr>
			    <div class="container">
			    	<div class="row align-items-center justify-content-between d-flex">
				      <div id="logo">
				        <a href="index.html"><img src="" alt="" title="" /></a>
				      </div>
				      <nav id="nav-menu-container">
				        <ul class="nav-menu">
				          <li class="menu-active"><a href="index.html">Home</a></li>
				          <li><a href="about.html">About Us</a></li>
				          <li><a href="service.html">Service</a></li>
				          <li><a href="contact.html">Contact</a></li>	
				          		          
				        </ul>
				      </nav><!-- #nav-menu-container -->		    		
			    	</div>
			    </div>
			  </header><!-- #header -->

			<!-- start banner Area -->
			<section class="banner-area relative" id="home">
				<div class="overlay overlay-bg"></div>	
				<div class="container">
					<div class="row fullscreen d-flex align-items-center justify-content-start">
						<div class="banner-content col-lg-9">
							<h6 class="text-white">Let's Begin</h6>
							<h1 class="text-white">
								The HOMESEEKER				
							</h1>
							<p class="pt-20 pb-20 text-white">
								The Homeseeker Project to provide you an affordable and secure housing...
							</p>
							<a href="#" class="primary-btn text-uppercase">Get Started</a>
						</div>											
					</div>
				</div>					
			</section>
			<!-- End banner Area -->	

			<!-- Start service Area -->
			<section class="service-area section-gap" id="service">
				<div class="container">
					<div class="row d-flex justify-content-center">
						<div class="menu-content pb-70 col-lg-8">
							<div class="title text-center">
								<h1 class="mb-10">UPDATE DETAILS:</h1>
								<p>The detail data from a  dataset is specified as a group with no group expression.</p>
							</div>
						</div>
					</div>
		 <%
        try
        {
         String address =request.getParameter("address");
         %>
          <table align="center">
          
         <form action="update.jsp">
            
        <tr>
        <td> EMAIL:</td><td><input type="text" name="email"></td>
</tr>
        <tr>
        <td> CITY:</td><td><select name="city">
          <option value="INDORE">INDORE</option>
        <option value="RATLAM">RATLAM</option>
        <option value="BHOPAl">Bhopal</option>
        <option value="UJJAIN">UJJAIN</option>
        </select>
        </td>
       </tr>
       
		<tr><td>AREA:</td><td><input type="text"  name="area"></td></tr>
        
   <tr> <td> CATEGORY:</td><td><select  name="category">
 <option value="GIRLS">GIRLS</option>
<option value="BOYS">BOYS</option>
<option value="FAMILY">FAMILY</option>
</select>
</td>
</tr>

<tr>
<td>PROPERTY TYPE:</td><td><select name="propertytype">
        <option value="FLAT">FLAT</option>
        <option value="ROOM">ROOM</option>
        <option value="PG">PG</option>
        <option value="OFFICE">OFFICE</option>
        <option value="HOME">HOME</option>
        <option value="HOSTEL">HOSTEL</option>
        </select>
        </td>
</tr>


     <tr> <td> ADDRESS:</td><td><input type="hidden" name="address" value="<%=address%>"/></td></tr>

      <tr>  <td> ROOMS:</td><td><select name="rooms">
             <option value="1">1</option>
             <option value="2">2</option>
             <option value="3">3</option>
             <option value="4">4</option>
             </select>
             </td>
             </tr>

     <tr>  <td>SHARING:</td><td><select name="sharing">
             <option value="SINGLE">SINGLE</option>
             <option value="2 SHARING">2 SHARING</option>
             <option value="3 SHARING">3 SHARING</option>
             <option value="4 SHARING">4 SHARING</option>
             <option value="OTHERS">OTHERS</option>
             </select>
             </td>
             </tr>

        <tr><td>OPTION:</td>  <td>RENTAL<input type="radio" name="selectoption" value="rental"/><br> 
        
           PURCHASE<input type="radio" name="selectoption" value="purchase"/> <br> 
           RENTAL/PURCHASE<input type="radio" name="selectoption" value="rental/purchase"/>
           </td>
           </tr>

<tr>
 <td> RENTAL PRICE:</td><td><input type="text" name="rentalprice"/></td></tr>

<tr>
<td>PURCHASE PRICE:</td><td><input type="text" name="purchaseprice"/></td></tr>

   <tr> <td>FACILITIES:</td><td><input type="textarea" name="facilities"/></td></tr>

 <tr><td> RESTRICTIONS:</td><td><input type="textarea" name="restrictions"/></td></tr>

     <tr> <td><td><input type="submit" name="submit" value="UPDATE"/></td></td></tr>


          
         </form>
         
         </table>
            
            
       <% }
        catch(Exception e) {
        out.println(e);
        }
%>
          
          			</div>	
			</section>
			<!-- End service Area -->	


						

			<!-- start footer Area -->		
			<footer class="footer-area section-gap">
				<div class="container">
					<div class="row">
						<div class="col-lg-5 col-md-6 col-sm-6">
							<div class="single-footer-widget">
								<h6>About Us</h6>
								<p>
									We at the Home-seeker provides the cheapest and secure home for your loved ones. We welcomes you to our family.
								</p>
								<p class="footer-text">
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This project is made <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="" target="_blank">Mayank, Meemans, Shafaqqat</a>
								</p>								
							</div>
						</div>
						<div class="col-lg-5  col-md-6 col-sm-6">
							<div class="single-footer-widget">
								<h6>Newsletter</h6>
								<p>Stay update with our latest</p>
								<div class="" id="mc_embed_signup">
									<form target="_blank" novalidate="true" action="https://spondonit.us12.list-manage.com/subscribe/post?u=1462626880ade1ac87bd9c93a&amp;id=92a4423d01" method="get" class="form-inline">
										<input class="form-control" name="EMAIL" placeholder="Enter Email" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter Email '" required="" type="email">
			                            	<button class="click-btn btn btn-default"><span class="lnr lnr-arrow-right"></span></button>
			                            	<div style="position: absolute; left: -5000px;">
												<input name="b_36c4fd991d266f23781ded980_aefe40901a" tabindex="-1" value="" type="text">
											</div>

										<div class="info"></div>
									</form>
								</div>
							</div>
						</div>						
						<div class="col-lg-2 col-md-6 col-sm-6 social-widget">
							<div class="single-footer-widget">
								<h6>Follow Us</h6>
								<p>Let us be social</p>
								<div class="footer-social d-flex align-items-center">
									<a href="#"><i class="fa fa-facebook"></i></a>
									<a href="#"><i class="fa fa-twitter"></i></a>
								<!--	<a href="#"><i class="fa fa-dribbble"></i></a>
									<a href="#"><i class="fa fa-behance"></i></a>-->
								</div>
							</div>
						</div>							
					</div>
				</div>
			</footer>	
			<!-- End footer Area -->		

			<script src="js/vendor/jquery-2.2.4.min.js"></script>
			<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
			<script src="js/vendor/bootstrap.min.js"></script>			
			<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBhOdIF3Y9382fqJYt5I_sswSrEw5eihAA"></script>
  			<script src="js/easing.min.js"></script>			
			<script src="js/hoverIntent.js"></script>
			<script src="js/superfish.min.js"></script>	
			<script src="js/jquery.ajaxchimp.min.js"></script>
			<script src="js/jquery.magnific-popup.min.js"></script>	
			<script src="js/owl.carousel.min.js"></script>			
			<script src="js/jquery.sticky.js"></script>
			<script src="js/jquery.nice-select.min.js"></script>	
			<script src="js/waypoints.min.js"></script>
			<script src="js/jquery.counterup.min.js"></script>					
			<script src="js/parallax.min.js"></script>		
			<script src="js/mail-script.js"></script>	
			<script src="js/main.js"></script>	
		</body>
	</html>
