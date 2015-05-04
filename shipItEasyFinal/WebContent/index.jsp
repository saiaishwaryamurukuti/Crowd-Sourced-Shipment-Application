<%@page import="java.sql.PreparedStatement"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="java.util.*"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="Servlets.BaseConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.javapapers.java.social.facebook.FBConnection" %>
<%@page import="javax.mail.*" %>
<%@page import="Servlets.EmailUtil" %>
<%@page import="javax.mail.Session" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<style>
#table {cellspacing ="10px";cellpadding ="10px";
	
}
</style>
<title>Ship >> Easy</title>

<!-- Bootstrap Core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">


<!-- Fonts -->
<link href="font-awesome/css/font-awesome.min.css" rel="stylesheet"
	type="text/css">
<link href="css/animate.css" rel="stylesheet" />
<!-- Ship theme CSS -->
<link href="css/style.css" rel="stylesheet">
<link href="color/default.css" rel="stylesheet">
<script type="text/javascript">
	function flightTrack() {
		var flightNumber = document.getElementsByName('track')[0].value;
		var flightURI = "http://www.flightwise.com/track/";
		flightURI = flightURI + flightNumber;
		if(flightNumber != "")
		{
			window.open(flightURI);
		}
	}
</script>
</head>

<body id="page-top" data-spy="scroll" data-target=".navbar-custom">



	<!-- Preloader -->
	<div id="preloader">
		<div id="load"></div>
	</div>

	<nav class="navbar navbar-custom navbar-fixed-top" role="navigation">
	<div class="container">
		<div class="navbar-header page-scroll">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target=".navbar-main-collapse">
				<i class="fa fa-bars"></i>
			</button>
			<a class="navbar-brand" href="index.jsp">
				<h1>Ship >> Easy</h1>
			</a>
		</div>

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div
			class="collapse navbar-collapse navbar-right navbar-main-collapse">
			<ul class="nav navbar-nav">
				<li class="active"><a href="#intro">Home</a></li>
				<li><a href="#about">About</a></li>
				<li><a href="#service">Services</a></li>
				<li><a href="#contact">Contact</a></li>
				<li><a style="cursor: pointer;" id="loginpopup">Login /
						Signup</a></li>
			</ul>
		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container --> </nav>

	<!-- Section: intro -->
	<section id="intro" class="intro">

	<div class="slogan">
		<h2>WELCOME TO Ship >> Easy</h2>
		<h4>Easiest way to Ship Overseas at reasonable price</h4>
	</div>
	<div class="page-scroll">
		<a href="#service" class="btn btn-circle"> <i
			class="fa fa-angle-double-down animated"></i>
		</a>
	</div>
	</section>
	<!-- /Section: intro -->

	<!-- Section: about -->
	<section id="about" class="home-section text-center">
	<div class="heading-about">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 col-lg-offset-2">
					<div class="wow bounceInDown" data-wow-delay="0.4s">
						<div class="section-heading">
							<h2>About us</h2>
							<i class="fa fa-2x fa-angle-down"></i>

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="container">

		<div class="row">
			<div class="col-lg-2 col-lg-offset-5">
				<hr class="marginbot-50">
			</div>
		</div>
		<div class="row">
			<div class="col-xs-6 col-sm-3 col-md-3">
				<div class="wow bounceInUp" data-wow-delay="0.2s">
					<div class="team boxed-grey">
						<div class="inner">
							<h5>Mission</h5>
							<p class="subtitle">Our Mission is further underlined in our mission statement: Excellence. Simply Delivered. 
							</p>
							<div class="avatar">
								<img src="img/team/pic.jpg" alt=""
									class="img-responsive img-square" />
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-xs-6 col-sm-3 col-md-3">
				<div class="wow bounceInUp" data-wow-delay="0.5s">
					<div class="team boxed-grey">
						<div class="inner">
							<h5>People</h5>
							<p class="subtitle">We allow you to interact with more people where you can ship your packets easily/p>
							<div class="avatar">
								<img src="img/team/pic1.jpg" alt=""
									class="img-responsive img-square" />
							</div>

						</div>
					</div>
				</div>
			</div>
			<div class="col-xs-6 col-sm-3 col-md-3">
				<div class="wow bounceInUp" data-wow-delay="0.8s">
					<div class="team boxed-grey">
						<div class="inner">
							<h5>Free Shipping</h5>
							<p class="subtitle">There are few shippings which doesn't cost you much</p>
							<div class="avatar">
								<img src="img/team/pic2.jpg" alt=""
									class="img-responsive img-square" />
							</div>

						</div>
					</div>
				</div>
			</div>
			<div class="col-xs-6 col-sm-3 col-md-3">
				<div class="wow bounceInUp" data-wow-delay="1s">
					<div class="team boxed-grey">
						<div class="inner">
							<h5>Ship Worldwide</h5>
							<p class="subtitle">You can now ship your packets overseas with less cost</p>
							<div class="avatar">
								<img src="img/team/pic3.jpg" alt=""
									class="img-responsive img-square" />
							</div>

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</section>
	<!-- /Section: about -->


	<!-- Section: services -->
	<section id="service" class="home-section text-center bg-gray">

	<div class="heading-about">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 col-lg-offset-2">
					<div class="wow bounceInDown" data-wow-delay="0.4s">
						<div class="section-heading">
							<h2>Our Services</h2>
							<i class="fa fa-2x fa-angle-down"></i>

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-lg-2 col-lg-offset-5">
				<hr class="marginbot-50">
			</div>
		</div>
		<div class="row">
			<div class="col-sm-3 col-md-3">
				<div class="wow fadeInLeft" data-wow-delay="0.2s">
					<div class="service-box">
						<div class="service-icon">

							<a href="#carry"> <img src="img/icons/service-icon-1.png" />
							</a>

						</div>
						<div class="service-desc">
							<h5>Carry Packet</h5>
							<p>Click on the Carry Packet Icon to carry a packet with you.</p>
						</div>
					</div>
				</div>
			</div>
			<div class="col-sm-3 col-md-3">
				<div class="wow fadeInUp" data-wow-delay="0.2s">
					<div class="service-box">
						<div class="service-icon">
							<a href="#send"> <img src="img/icons/service-icon-2.png"
								alt="" />
							</a>
						</div>
						<div class="service-desc">
							<h5>Send Packet</h5>
							<p>Click on the Send Packet Icon if you want to send a packet
								for Very Less Cost.</p>
						</div>
					</div>
				</div>
			</div>
			<div class="col-sm-3 col-md-3">
				<div class="wow fadeInUp" data-wow-delay="0.2s">
					<div class="service-box">
						<div class="service-icon">
							<a href="#track"> <img src="img/icons/service-icon-3.png"
								alt="" />
							</a>
						</div>
						<div class="service-desc">
							<h5>Track Packet</h5>
							<p>If you want to Track your package click on the Track
								Package Icon</p>
						</div>
					</div>
				</div>
			</div>
			<div class="col-sm-3 col-md-3">
				<div class="wow fadeInRight" data-wow-delay="0.2s">
					<div class="service-box">
						<div class="service-icon">
							<a href="#contact"><img src="img/icons/service-icon-4.png"
								alt="" /> </a>
						</div>
						<div class="service-desc">
							<h5>Contact Us</h5>
							<p>Click on the Contact Us Icon to Contact Us for any
								questions or suggestions.</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</section>
	<!-- /Section: services -->

	<!-- Section: carry packet -->
	<section id="carry" class="home-section text-center bg-gray">

	<div class="heading-about">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 col-lg-offset-2">
					<div class="wow bounceInDown" data-wow-delay="0.4s">
						<div class="section-heading">
							<h2>Carry Packet</h2>
							<p>A key to success by creating a simple and unique experience.
							Help people and also earn credits by  shipping a packet globally with ease convenience.</p>
							<i class="fa fa-2x fa-angle-down"></i>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="container">
		<div class="row">
			<div class="col-lg-2 col-lg-offset-5">
				<hr class="marginbot-50">
			</div>
		</div>
		<div class="row">
			<div class="col-lg-8">
				<div class="boxed-grey">
					<form id="contact-form" action="CarryPacket" method="post">
						<div class="col-md-6">
							<div class="form-group">
								<label for="name"> Name</label> <input type="text"
									class="form-control" name="name" id="name"
									placeholder="Enter name" required="required" />
							</div>
							<div class="form-group">
								<label for="StartDate">Flying Date</label>
								<div class="input-group">
									<input type="date" name="startDate"
										src="img/icons/calendar.jpg" min="2014-12-10"
										class="form-control" required="required" />
								</div>
							</div>
							<div class="form-group">
								<label for="packetWeight">Packet Weight</label><a href="url"><h6>Size Chart</h6></a>
								<div class="input-group">
									<select name="packetWeight" id="packetWeight"
										placeholder="select" class="form-control" required="required">
										<option></option>
										<option value="small">Small</option>
										<option value="medium">Medium</option>
										<option value="large">Large</option>
									</select>
								</div>
							</div>
							<div class="form-group">
								<label for="from"><big>FROM</big></label> <label for="country">Country</label>

								<div class="input-group">
									<select onchange="print_state('state2',this.selectedIndex);"
										id="country2" name="country2" class="form-control"
										required="required"></select> <label for="state">State</label>
									<select name="state2" id="state2" placeholder="select"
										class="form-control" required="required"></select>
								</div>
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
								<label for="email"> Email Address</label>
								<div class="input-group">
									<span class="input-group-addon"><span
										class="glyphicon glyphicon-envelope"></span> </span> <input
										type="email" class="form-control" name="email" id="email"
										placeholder="Enter email" required="required" />
								</div>
							</div>
							<div class="form-group">
								<label for="airlines"> Airlines</label>
								<div class="input-group">
									<select name="airlines" id="airlines" placeholder="select"
										class="form-control" required="required">
										<option></option>
										<option value="AAL">American Airlines</option>
										<option value="DAL">Delta Airlines</option>
										<option value="USA">US Airways</option>
										<option value="UAL">United Airlines</option>
										<option value="SIA">Singapore Airlines</option>
										<option value="AFR">Air France</option>
									</select>
								</div>
							</div>
							<div class="form-group">
								<label for="flightnumber">Flight Number</label> <input
									type="text" class="form-control" name="flightnumber"
									id="flightnumber" placeholder="Enter Flight Number"
									required="required" />
							</div>
							<div class="form-group">
								<label for="To"><big>TO</big></label>
								<div class="input-group">
									<label for="country" style="">Country</label> <select
										onchange="print_state('state3',this.selectedIndex);"
										id="country3" name="country3" class="form-control"
										required="required"></select> <br> <label for="state">State</label>
									<select name="state3" id="state3" class="form-control"
										required="required"></select>
								</div>
							</div>
						</div>
						<div class="col-md-12">
							<button type="submit" id="carry" name="carry" class="btn btn-skin pull-right"
								Onclick="carryPacket()">Carry Packet</button>
						</div>
					</form>
				</div>
			</div>
			<br> <br>
		</div>
	</div>
	</section>
	<!-- /Section: Carry Packet -->

	<!-- Section: send packet -->
	<section id="send" class="home-section text-center bg-gray">

	<div class="heading-about">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 col-lg-offset-2">
					<div class="wow bounceInDown" data-wow-delay="0.4s">
						<div class="section-heading">
							<h2>Send Packet</h2>
							<p>A shipment placed can include life saying medicines, birthday present or any document that is very important. 
							ShipEasy not only deliver packets, but also make sure that it arrives at ports.
							Every day we connect people by improving their lives.</p>
							<i class="fa fa-2x fa-angle-down"></i>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="container">

		<div class="row">
			<div class="col-lg-2 col-lg-offset-5">
				<hr class="marginbot-50">
			</div>
		</div>
		<div class="row">
			<div class="col-lg-8">
				<div class="boxed-grey">
					<form id="contact-form">
					<div class="col-md-6">
						<div class="form-group">
							<label for="from"><big>FROM</big></label> <label for="country">Country</label>

							<div class="input-group">
								<select onchange="print_state('state',this.selectedIndex);"
									id="country" name="country" class="form-control"
									required="required"></select>
									<br>
								<label for="state">State</label> <select name="state" id="state"
									class="form-control" required="required"></select>
							</div>
							
						</div>
						<div class="form-group">
							<label for="Start Date"><big>Start Date</big></label>
							<div class="input-group">
								<input type="date" name="startDate" class="form-control"
									required="required" src="img/icons/calendar.jpg"
									min="2014-12-10" />
							</div>
						</div>
						</div>
						<div class="col-md-6">
						<div class="form-group">
							<label for="To"><big>TO</big></label>
							<div class="input-group">
								<label for="country" style="">Country</label> <select
									onchange="print_state('state1',this.selectedIndex);"
									id="country1" name="country1" class="form-control"
									required="required"></select>
									<br>
								<label for="state">State</label> <select name="state1"
									class="form-control" required="required" id="state1"></select>

							</div>

						</div>
						</div>
								<div class="col-md-12">
									<button type="submit" id="send" name="send"
										class="btn btn-skin pull-right">Send Packet</button>
								</div>
					</form>
				</div>
				<%
					if(request.getParameter("send") != null)
					{
						try{
							PreparedStatement statement = null;
						String fromAddr = null;
						String toAddr = null;
						String startDate = null;

						ResultSet resultSet = null;
						
						BaseConnection baseConnection = new BaseConnection();
						Connection connection = baseConnection.DataSource();
						fromAddr = request.getParameter("country");
						toAddr = request.getParameter("country1");
						startDate = request.getParameter("startDate");
						
						String SELECT_CARRY_PACKET_INFO_SQL = "select CONCAT(from_country, ', ', from_state) as from_address, CONCAT(to_country, ', ', to_state) as to_address, carrier_name, carrier_email, carrier_flight_num, packet_weight, start_date from carry_packet where from_country = ? and to_country = ? and start_date >= ?;";
						
						statement = connection.prepareStatement(SELECT_CARRY_PACKET_INFO_SQL);
						statement.setString(1, fromAddr);
						statement.setString(2, toAddr);
						statement.setString(3, startDate.toString());
						
						resultSet = statement.executeQuery();
						%>
						<div class="col-md-6"><br><br></div>
						<div class="table-responsive">
						<table class="table table-hover">
						<tr class="active">
						<th>Select</th>
						<th>Carrier Name</th>
						<th>Carrier E-Mail</th>
						<th>Carrier Flight Number</th>
						<th>From Address</th>
						<th>Destination Address</th>
						<th>Flying Date</th>
						<th>Packet Weight</th>
						<% 
						while (resultSet.next()) 
						{
							String fromAddress = resultSet.getString("from_address");
							String toAddress = resultSet.getString("to_address");
							String carrierName = resultSet.getString("carrier_name");
							String carrierEmail = resultSet.getString("carrier_email");
							String carrierFlightNum = resultSet.getString("carrier_flight_num");
							String packetWeight = resultSet.getString("packet_weight");
							String flyingDate = resultSet.getString("start_date");
							
						%>
							<tr class="active">
							<td><input type="radio" id="radio" name="radio"/></td>
							<td><%= carrierName %></td>
							<td><%= carrierEmail %></td>
							<td><%= carrierFlightNum  %></td>
							<td><%= fromAddress  %></td>
							<td><%= toAddress  %></td>
							<td><%= flyingDate  %></td>
							<td><%= packetWeight  %></td>
							</tr>
							<% } %>
						</table>
						</div>
						<%
						statement.close();
					} catch (SQLException se) {
						// Handle errors for JDBC
						se.printStackTrace();
					} catch (Exception e) {
						// Handle errors for Class.forName
						e.printStackTrace();
					}
						%>
						<br>
					<div class="form-group">
							<div class="input-group">
								<div class="col-md-12">
									<a href="#payment"><button type="submit" id="select" name="select"
										class="btn btn-skin pull-right">Select</button></a>
								</div>
							</div>
						</div>
					<%  }
					%>
			</div>
		</div>
	</div>
	</section>
	<!-- /Section: send Packet -->

	<!-- /Section: Tracking -->
	<section id="track" class="home-section text-center bg-gray">
	<div class="heading-contact">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 col-lg-offset-2">
					<div class="wow bounceInDown" data-wow-delay="0.4s">
						<div class="section-heading">
							<h2>Track Carrier</h2>
							<p>Here the fastest way to check the status of your shipment. No need to call Customer Service, our online results give you real-time 
							and detailed progress as your shipment speeds through the flight tracking</p>
							<i class="fa fa-2x fa-angle-down"></i>

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="container">

		<div class="row">
			<div class="col-lg-2 col-lg-offset-5">
				<hr class="marginbot-50">
			</div>
		</div>
		<div class="row">
			<div class="col-lg-8">
				<div class="boxed-grey">
					<!-- <form action="FlightTracker" method="get" id="contact-form"> -->
					<form id="contact-form">
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<label for="email"> Flight Number</label>
									<div class="input-group">
										<span class="input-group-addon"></span> <input type="text"
											class="form-control" name="track" id="track"
											placeholder="Enter Flight Number" required="required" />
									</div>
									<br>
									<div class="form-group">
										<div class="input-group">
											<div class="col-md-12">
												<button type="submit" id="send" name="send"
													class="btn btn-skin pull-right" onclick="flightTrack()">Track
													Flight</button>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	</section>
	<!-- /Section: Tracking -->

	<!-- Section: Payment Gateway -->
	<section id="payment" class="home-section text-center bg-gray">
	<div class="heading-about">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 col-lg-offset-2">
					<div class="wow bounceInDown" data-wow-delay="0.4s">
						<div class="section-heading">
							<h2>Payment Gateway</h2>
							<i class="fa fa-2x fa-angle-down"></i>

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="container">

		<div class="row">
			<div class="col-lg-2 col-lg-offset-5">
				<hr class="marginbot-50">
			</div>
		</div>
		<div class="row">

			<div class="col-lg-8">
				<div class="boxed-grey" style="align: center;">
					<form id="payment-form" action="successpayment" method="post">


						<table cellspacing="20" caption="pay with debit card">
							<tr>
								<td>Card Number</td>
								<td><input type="text" size="16" placeholder="Card No." /></td>
								<td><img src="img/icons/images.jpg" alt="No image"
									height="25" width="200"></td>
							</tr>
							<tr>
								<td>Name on Card&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</td>
								<td><input type="text" maxlength="30" placeholder="Name"></td>
							</tr>
							<tr>
								<td>Expiry Date</td>
								<td><SELECT NAME="month">
										<OPTION>January</OPTION>
										<OPTION>February</OPTION>
										<OPTION>March</OPTION>
										<OPTION>April</OPTION>
										<OPTION>May</OPTION>
										<OPTION>June</OPTION>
										<OPTION>July</OPTION>
										<OPTION>August</OPTION>
										<OPTION>September</OPTION>
										<OPTION>October</OPTION>
										<OPTION>November</OPTION>
										<OPTION>December</OPTION>
								</SELECT> <SELECT NAME="year">
										<OPTION>2014</OPTION>
										<OPTION>2015</OPTION>
										<OPTION>2016</OPTION>
										<OPTION>2017</OPTION>
										<OPTION>2018</OPTION>
										<OPTION>2019</OPTION>
										<OPTION>2020</OPTION>
										<OPTION>2021</OPTION>
										<OPTION>2022</OPTION>
										<OPTION>2023</OPTION>
										<OPTION>2024</OPTION>
										<OPTION>2025</OPTION>
										<OPTION>2026</OPTION>
										<OPTION>2027</OPTION>
										<OPTION>2028</OPTION>
										<OPTION>2029</OPTION>
										<OPTION>2030</OPTION>
										<OPTION>2031</OPTION>
										<OPTION>2032</OPTION>
										<OPTION>2033</OPTION>
										<OPTION>2034</OPTION>
										<OPTION>2035</OPTION>
										<OPTION>2036</OPTION>
										<OPTION>2037</OPTION>
										<OPTION>2038</OPTION>
										<OPTION>2039</OPTION>
										<OPTION>2040</OPTION>
										<OPTION>2041</OPTION>
										<OPTION>2042</OPTION>
										<OPTION>2043</OPTION>
										<OPTION>2044</OPTION>
										<OPTION>2045</OPTION>

								<br></br></SELECT> <input type="text" placeholder="Cvv No."></td>
								<td><img src="img/icons/cvvinfo.jpg" alt="No image"
									height="35" width="250"></td>
							</tr>
							<tr />
							<tr>
								<td /><br></br>
								<td colspan="3"><input type="checkbox" name="check">
									<img src="img/icons/lock.png" alt="No image" height="15">
									Save this card securely for faster booking ( 100% Secure)</td>
							</tr>


							<tr>
								<td />
								<td colspan="3">Total payable amount ??? A convenience fee
									of ??? is added</td>
							</tr>
							<tr>
								<td />
								<td colspan="3"><input type="checkbox" name="check">
									By clicking on Pay Securely, I agree to accept Terms and
									Conditions of goibibo</td>
							</tr>
							<tr align="center">
								<td colspan="3">
<div class="form-group">
							<div class="input-group">
								<div class="col-md-12">
									<a href="#successpayment" class="btn btn-skin pull-right">Complete Payment</a>
								</div>
							</div>
						</div>
								</td>
							</tr>
						</table>
					</form>
				</div>
			</div>
		</div>
	</div>
	</div>
	</section>
	<!-- /Section: Payment Gateway -->

	<!-- Section: contact -->
	<section id="contact" class="home-section text-center">
	<div class="heading-contact">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 col-lg-offset-2">
					<div class="wow bounceInDown" data-wow-delay="0.4s">
						<div class="section-heading">
							<h2>Get in touch</h2>
							<i class="fa fa-2x fa-angle-down"></i>
							

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="container">

		<div class="row">
			<div class="col-lg-2 col-lg-offset-5">
				<hr class="marginbot-50">
			</div>
		</div>
		<div class="row">
			<div class="col-lg-8">
				<div class="boxed-grey">
					<form id="contact-form">
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<label for="name"> Name</label> <input type="text"
										class="form-control" name="name" id="name"
										placeholder="Enter name" required="required" />
								</div>
								<div class="form-group">
									<label for="email"> Email Address</label>
									<div class="input-group">
										<span class="input-group-addon"><span
											class="glyphicon glyphicon-envelope"></span> </span> <input
											type="email" class="form-control" name="email" id="email"
											placeholder="Enter email" required="required" />
									</div>
								</div>
								<div class="form-group">
									<label for="subject"> Subject</label> <select id="subject"
										name="subject" class="form-control" required="required">
										<option value="na" selected="">Choose One:</option>
										<option value="service">General Customer Service</option>
										<option value="suggestions">Suggestions</option>
										<option value="product">Product Support</option>
									</select>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label for="name"> Message</label>
									<textarea name="message" id="message" class="form-control"
										rows="9" cols="25" required="required" placeholder="Message"></textarea>
								</div>
							</div>
							<div class="col-md-12">
								<button type="submit" id="contact" name="contact" class="btn btn-skin pull-right"
									onclick="contactUs()" id="btnContactUs">Send Message</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		<%
		
		if(request.getParameter("contact") != null)
		{
			String name = request.getParameter("name");
		      
		      String email = request.getParameter("email");
		      
		      String subject = request.getParameter("subject");
		      
		      String message = request.getParameter("message");

				final String fromEmail = "shipiteasy.info@gmail.com"; //requires valid gmail id.
		      final String password = "rrproject"; // correct password for gmail id.
		      final String toEmail = "shipiteasy.info@gmail.com"; // can be any email id.
		       
		      System.out.println("TLSEmail Start");
		      Properties props = new Properties();
		      props.put("mail.smtp.host", "smtp.gmail.com"); //SMTP Host
		      props.put("mail.smtp.port", "587"); //TLS Port
		      props.put("mail.smtp.auth", "true"); //enable authentication
		      props.put("mail.smtp.starttls.enable", "true"); //enable STARTTLS
		       
		              //create Authenticator object to pass in Session.getInstance argument
		      Authenticator auth = new Authenticator() {
		          //override the getPasswordAuthentication method
		          protected PasswordAuthentication getPasswordAuthentication() {
		              return new PasswordAuthentication(fromEmail, password);
		          }
		      };
		     Session getSession = Session.getInstance(props, auth);
		       
		      EmailUtil.sendEmail(getSession, toEmail, "ShipItEasy Contact Customer", "First Name: " +name+"\nSubject: "+subject+"\nE-Mail Address: "+email+"\nComments: "+message);
		}
		
		
		%>
			<div class="col-lg-4">
				<div class="widget-contact">
					<h5>Main Office</h5>

					<address>
						<strong>Ship Easy, Inc.</strong><br> T101 E San Fernando St
						#100 <br> San Jose, CA 95112<br> <abbr title="Phone">P:</abbr>
						(123) 456-7890
					</address>

					<address>
						<strong>Email</strong><br> <a href="mailto:#">shipiteasy.info@gmail.com</a>
					</address>
					<address>
						<strong>We're on social networks</strong><br>
						<ul class="company-social">
							<li class="social-facebook"><a
								href="https://www.facebook.com/shipiteasy?ref=aymt_homepage_panel"
								target="_blank"><i class="fa fa-facebook"></i></a></li>
							<li class="social-twitter"><a href="#" target="_blank"><i
									class="fa fa-twitter"></i></a></li>
							<li class="social-dribble"><a href="#" target="_blank"><i
									class="fa fa-dribbble"></i></a></li>
							<li class="social-google"><a href="#" target="_blank"><i
									class="fa fa-google-plus"></i></a></li>
						</ul>
					</address>

				</div>
			</div>
		</div>

	</div>
	</section>
	<!-- /Section: contact -->
	<!-- Code for Login / Signup Popup -->
	<!-- Modal Log in -->
	<div class="modal fade" id="login" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel1" aria-hidden="true">
		<div class="modal-dialog" style="margin-top: 150px;">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="myModalLabel1">Login to Landing</h4>
				</div>
				<div class="modal-body" id="login_details">
					<span> Already have an account? </span> </br> </br> *<span
						style="font-weight: bold;">Your Email</span> <input type="text"
						placeholder="example@gmail.com" name="login_email" /><br /></br> *<span
						style="font-weight: bold;">Password&nbsp&nbsp</span> <input
						type="password" placeholder="Password" name="login_password" />
<!------------------------------- facebook code ---------------------------------> 
					<%
						FBConnection fbConnection = new FBConnection();
					%>
					<a href="<%=fbConnection.getFBAuthUrl()%>"> 
					<img src="img/facebook.jpg" alt="" />
					</a>
<!------------------------------- facebook code ends here -----------------------> 
				</div>
				<div class="modal-footer">
					<input style="float: left" type="button" class="btn btn-success"
						value="Log In" /> <span class="fp-link"> <a href="#">Forgot
							Password?</a></span> </br> </br> <span> Not a member yet?</span> <span
						id="signup-link" style="cursor: pointer;" class="text-info">Sign
						Up!</span>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->
	<!--Modal Login Ends -->
	<!-- Modal Sign-up Starts -->
	<div class="modal fade" id="signup" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel2" aria-hidden="true">
		<div class="modal-dialog" style="margin-top: 100px;">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="myModalLabel2">Sign Up on Landing</h4>
				</div>
				<div class="modal-body" id="signup_details">
					<span>&nbspFull
						Name&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</span>
					<input type="text" placeholder="Full Name" name="register_name" />
					</br> </br> *<span>Email&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</span>
					<input type="text" placeholder="example@gmail.com"
						name="register_email" /></br> </br> *<span>Password&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</span>
					<input type="password" placeholder="Password"
						name="register_password" /></br> </br> *<span>Password Re-Type</span> <input
						type="password" placeholder="Re-type Password"
						name="re_register_password" /></br> </br> *<span>Phone
						Number&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</span> <input
						type="number" placeholder="phone number" name="register_number" /></br>
					</br>
				</div>
				<div class="modal-footer">
					<input style="float: left" type="button" class="btn btn-success"
						value="Sign Me Up" /> <span>&nbsp;&nbsp;&nbsp; Already a
						member? </span><span id="login-link" class="text-info"
						style="cursor: pointer;"> Login now </span>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->
	<!-- Modal Sign up ends! -->
	<!-- End code for Login / Signup Popup -->
	
	<!-- /Section: successfully registered -->
	<section id="regdSuccess" class="home-section text-center bg-gray">
	<div class="heading-contact">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 col-lg-offset-2">
					<div class="wow bounceInDown" data-wow-delay="0.4s">
						<div class="section-heading">
							<br></br>
							<br></br>
							<br></br>
							<br></br>
							<h2>Thank you for your travel details</h2>
							<p>We will contact you soon with the carrier details. See you soon...</p>
							<br></br>
							<br></br>
							<br></br>
					</div>
			</div>
			</div>
			</div>
			</div>
			</div>
					</section>
	<!-- /Section: successfull registration -->
	
	<!-- /Section: successfull payment -->
	<section id="successpayment" class="home-section text-center bg-gray">
	<div class="heading-contact">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 col-lg-offset-2">
					<div class="wow bounceInDown" data-wow-delay="0.4s">
						<div class="section-heading">
							<h2>Thank you for your Payment</h2>
							<p>Carrier would contact you soon for the delivery of your packet..</p>
					</div>
			</div>
			</div>
			</div>
			</div>
			</div>
					</section>
	<!-- /Section: successfull payment -->

	<footer>
	<div class="container">
		<div class="row">
			<div class="col-md-12 col-lg-12">
				<div class="wow shake" data-wow-delay="0.4s">
					<div class="page-scroll marginbot-30">
						<a href="#intro" id="totop" class="btn btn-circle"> <i
							class="fa fa-angle-double-up animated"></i>
						</a>
					</div>
				</div>
				<p>&copy;Copyright 272-Enterprise Software Platform-Team34-All
					rights reserved.</p>
			</div>
		</div>
	</div>
	</footer>

	<!-- Core JavaScript Files -->
	<script src="js/jquery.min.js"></script>

	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.easing.min.js"></script>
	<script src="js/jquery.scrollTo.js"></script>
	<script src="js/wow.min.js"></script>
	<!-- Custom Theme JavaScript -->
	<script src="js/custom.js"></script>
	<script src="js/countries2.js"></script>
	<script language="javascript">
		print_country("country");
	</script>
	<script language="javascript">
		print_country("country1");
	</script>
	<script language="javascript">
		print_country("country2");
	</script>
	<script language="javascript">
		print_country("country3");
	</script>
</body>

</html>
