

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

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
							<!--	<li><a href="#"><i class="fa fa-dribbble"></i></a></li>
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
				          <li><a href="adminlandlord.jsp">Landlord Details</a></li>
				          <li><a href="adminuser.jsp">User Details</a></li>
				          <li><a href="adminproperty.jsp">Property Details</a></li>
				           	<li><a href="index.html">Logout</a></li>
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
								<h1 class="mb-10">User Details</h1>
								<p>the information in a user’s profile is visible to all users in the community.</p>
							</div>
						</div>
					</div>
					
           <%try{
           Class.forName("com.mysql.jdbc.Driver");
           Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/homeseeker","root","root");
           String qr="select * from userrg ";
           Statement st=con.createStatement();
           ResultSet rs =st.executeQuery(qr);
           %>
            <table border=1px align=center>
             <th>FIRST NAME</th>
             <th>LAST NAME</th>
             <th>EMAIL</th>
             <th>ADDRESS</th>
             <th>CONTACT</th>
             <th>D.O.B</th>
             <th>PROFESSION</th>
             <th>GENDER</th>
             <th>DELETE</th>
             <%
            while(rs.next())
            {
            String firstname=rs.getString("firstname");
            String lastname=rs.getString("lastname");
            String email=rs.getString("email");
            String address=rs.getString("address");
            String contact=rs.getString("contact");
            String dob=rs.getString("dob");
            String profession=rs.getString("profession");
            String gender=rs.getString("gender");
             %>
          <tr>
            <td><%= firstname %></td>
            <td><%= lastname %></td>
            <td><%= email %></td>
            <td><%= address %></td>
            <td><%= contact %></td>
            <td><%= dob %></td>
            <td><%= profession %></td>
            <td><%= gender %></td>
            <td><a href="deleteuser.jsp?email=<%=email%>">DELETE</a></td>
           </tr>
             <%
            }
             con.close();
             %>
                      </table>
                 <%
            } catch(Exception e)
              {
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
							<!--		<a href="#"><i class="fa fa-dribbble"></i></a>
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




