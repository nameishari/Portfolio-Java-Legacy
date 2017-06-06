<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@page import="java.text.DateFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description"
	content="Hari - Resume, Hari Tummala Resume, Hari Tummala Portfolio, Hari Hara Kumar Resume, Hari Hara Kumar Tummala Resume, Hari Hara Kumar Portfolio">
<meta name="author" content="Hari Hara Kumar Tummala">

<title>Hari Tummala - Resume</title>

<!-- Bootstrap Core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/formValidation.min.css" rel="stylesheet">
<!-- Custom CSS -->
<link href="css/styles.css" rel="stylesheet">

<!-- Custom Fonts -->
<link href="font-awesome/css/font-awesome.min.css" rel="stylesheet"
	type="text/css">
<link
	href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700,300italic,400italic,700italic"
	rel="stylesheet" type="text/css">
<link
	href="http://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css"
	rel="stylesheet">
</head>

<body data-spy="scroll" data-target="#navbar-example">

	<!-- Header -->
	<header id="top" class="header">
	<!-- Start PWA Top Right Award -->
	<DIV STYLE = "position: fixed;top: 0px;right: 0px; width: 100px; height: 100px;z-index:99999; _position:absolute; _top:expression(eval(document.body.scrollTop));"><A HREF="http://www.popularwebsiteawards.com?URL=h4hari.in" TARGET = _BLANK><IMG SRC = "http://www.popularwebsiteawards.com/images/PWA_Side_Award.png" BORDER = 0 STYLE = "border: 0px; "></A></DIV>
	<!-- End PWA Top Right Award -->
	
	<div class="text-vertical-center ">
		<h1>I'm Hari Tummala</h1>
		<h3 class="white">Application Developer</h3>
		<hr class="intro-divider">
		<ul class="list-inline intro-social-buttons">
			<li><a target="_blank"
				href="https://www.linkedin.com/in/hari-hara-kumar-tummala-24205a79"
				class="btn btn-default btn-lg"><i class="fa fa-linkedin fa-fw"></i>
					<span class="network-name">Linkedin</span></a></li>
			<li><a target="_blank"
				href="https://www.facebook.com/harakumar.smile"
				class="btn btn-default btn-lg"><i class="fa fa-facebook fa-fw"></i>
					<span class="network-name">Facebook</span></a></li>
			<li><a target="_blank"
				href="https://twitter.com/HariHhk"
				class="btn btn-default btn-lg"><i class="fa fa-twitter fa-fw"></i>
					<span class="network-name">Twitter</span></a></li>
		</ul>
		<a href="#profile" class="scroll-down"> <span
			class="glyphicon glyphicon-chevron-down scroll-down-glyphicon"></span>
		</a>
	</div>
	</header>

	<nav class="navbar navbar-default" id="navbar-example"
		role="navigation"> <!-- Brand and toggle get grouped for better mobile display -->
	<div class="navbar-header">
		<button type="button" class="navbar-toggle" data-toggle="collapse"
			data-target=".navbar-ex1-collapse">
			<span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span>
			<span class="icon-bar"></span> <span class="icon-bar"></span>
		</button>
	</div>

	<!-- Collect the nav links, forms, and other content for toggling -->
	<div class="collapse navbar-collapse navbar-ex1-collapse">
		<ul class="nav navbar-nav">
			<li class="active"><a href="#profile">Profile</a></li>
			<li><a href="#experiences">Experiences</a></li>
			<li><a href="#abilities">Abilities</a></li>
			<li><a href="#contact">Contact</a></li>
		</ul>
	</div>
	<!-- /.navbar-collapse --> </nav>



	<!-- About -->
	<div class="background-white">
		<div id="profile" class="container">
			<h2>Profile</h2>
			<p class="lead">I&#039;m a Interactive Application Developer</p>

			<hr />

			<div class="row">
				<div class="col-md-4">
					<h3 style="text-align: left" class="adjust_text">About me</h3>
					<p style="text-align: left" class="adjust_text">I am an java
						application developer. I am a programmer with good knowledge on
						Java based frameworks. I love spending time on optimizing web,
						mobile and desktop applications. Also I like working in a team,
						you'll learn faster and more. I love continuous Learning and I
						also stand for quality. As the saying goes: 'Known is a drop!
						Unkown is an ocean!'</p>
				</div>
				<div class="col-md-4 text-center ">
					<img class="styledimg" src="img/hari.jpg" alt="Hari Hara Kumar"
						width="246" height="246" />
				</div>

				<%
					String dob = "1994-09-28";

					int yearDOB = Integer.parseInt(dob.substring(0, 4));
					int monthDOB = Integer.parseInt(dob.substring(5, 7));
					int dayDOB = Integer.parseInt(dob.substring(8, 10));

					DateFormat dateFormat = new SimpleDateFormat("yyyy");
					java.util.Date date = new java.util.Date();
					int thisYear = Integer.parseInt(dateFormat.format(date));

					dateFormat = new SimpleDateFormat("MM");
					date = new java.util.Date();
					int thisMonth = Integer.parseInt(dateFormat.format(date));

					dateFormat = new SimpleDateFormat("dd");
					date = new java.util.Date();
					int thisDay = Integer.parseInt(dateFormat.format(date));

					int age = thisYear - yearDOB;

					if (thisMonth < monthDOB) {
						age = age - 1;
					}

					if (thisMonth == monthDOB && thisDay < dayDOB) {
						age = age - 1;
					}
				%>


				<div class="col-md-4">
					<h3 style="text-align: left" class="adjust_text">Details</h3>
					<p style="text-align: left" class="adjust_text">
						<strong>Name:</strong><br /> Hari Hara Kumar Tummala<br /> <strong>Age:</strong><br />
						<%=age%>
						Years<br /> <strong>Born Location:</strong><br /> Machilipatnam,
						Andhra Pradesh, India - 521001<br /> <strong>Current
							Location:</strong><br /> Chennai, Tamilnadu, India - 600097
					</p>
					<a href="pdfs/Updated Resume_Hari _Tummala.pdf" target="_blank"
						class="btn btn-default btn-lg downbtn adjust_btn"><i
						class="fa fa-download fa-fw"></i> <span class="network-name">Download
							Resume</span></a>
				</div>
			</div>
		</div>
	</div>

	<div id="experiences" class="container">
		<h2 class="adjust_texting">Experiences</h2>
		<p class="lead">
			&ldquo;I learned the value of hard work by working hard.&rdquo;<br />-
			Margaret Mead
		</p>

		<hr />

		<h3 style="text-align: left" class="adjust_texting">Educations</h3>


		<div class="experiences">

			<div class="experience row">
				<div class="col-md-4">
					<h4 style="text-align: left">Cognizant</h4>
					<p style="text-align: left" class="experience-period">June 2015
						- Sep 2015</p>
				</div>
				<div class="col-md-8">
					<p style="text-align: left">
						<strong>Course - Advanced Java</strong> <span class="hidden-phone">
							It's my training period in <i>cognizant</i>. Here I have learned
							Core Java, JSP, MVC, Servlets and more.
						</span> <span class="experience-details"> <span class="location">
								<span class="glyphicon glyphicon-map-marker"></span> Chennai,
								India
						</span>
						</span>
					</p>
				</div>
			</div>

			<div class="experience row">
				<div class="col-md-4">
					<h4 style="text-align: left">SSIT</h4>
					<p style="text-align: left" class="experience-period">Mar 2015
						- May 2015</p>
				</div>
				<div class="col-md-8">
					<p style="text-align: left">
						<strong>Course - Web Technologies</strong> <span
							class="hidden-phone"> Here I had learned Front end
							technologies like HTML5, Bootstrap3, CSS3, JavaScript and JQuery.
						</span> <span class="experience-details"> <span class="location">
								<span class="glyphicon glyphicon-map-marker"></span> Vijayawada,
								India
						</span>
						</span>
					</p>
				</div>
			</div>


			<div class="experience row">
				<div class="col-md-4">
					<h4 style="text-align: left">K L University</h4>
					<p style="text-align: left" class="experience-period">April
						2011 - Mar 2015</p>
				</div>
				<div class="col-md-8">
					<p style="text-align: left">
						<strong>Bachelor - Electrical and Electronics Engineering
							(Specialization: Power Systems)</strong> <span class="hidden-phone">
							The education was mainly on Electrical Engineering, but I also
							learned about SQL, C, java and more. During my time in college, I
							specialized in power systems. I had two Paper publication, two
							best paper presentation awards and second best poster
							presentation awards. During my Btech I was the Technical Head of
							IEEE KLU Student Branch. As a result Placed in <i>Cognizant</i>.
						</span> <span class="experience-details"> <span class="location">
								<span class="glyphicon glyphicon-map-marker"></span>
								Vaddeswaram, Guntur district,India
						</span>
						</span>
					</p>
				</div>
			</div>


			<div class="experience row">
				<div class="col-md-4">
					<h4 style="text-align: left">RK Junior College</h4>
					<p style="text-align: left" class="experience-period">Mar 2011
						- Mar 2009</p>
				</div>
				<div class="col-md-8">
					<p style="text-align: left">
						<strong>Intermediate - MPC (Maths/Physics & Chemistry)</strong> <span
							class="hidden-phone"> I enjoyed doing science and maths. I
							realized in my intermidiate that I wanted to do something with
							Photoshop, and so I started adding small graphics to photos. </span> <span
							class="experience-details"> <span class="location">
								<span class="glyphicon glyphicon-map-marker"></span>
								Machilipatnam, India
						</span>
						</span>
					</p>
				</div>
			</div>


		</div>



		<hr />

		<h3 style="text-align: left" class="adjust_texting">Careers</h3>


		<div class="experiences">


			<div class="experience row">
				<div class="col-md-4">
					<h4 style="text-align: left">Cognizant</h4>
					<p style="text-align: left" class="experience-period">Oct 2015
						- Current</p>
				</div>
				<div class="col-md-8">
					<p style="text-align: left">
						<strong>Fulltime - Web Developer (Java)</strong> <span
							class="hidden-phone"> As a develoer at Cognizant I work on
							web development projects. Using frameworks and technologies such
							as JSF, Hibernate, Primefaces, Fusion Charts, Ajax, Apache POI,
							Jquery and more.</span> <span class="experience-details"> <span
							class="location"> <span
								class="glyphicon glyphicon-map-marker"></span> Chennai, India
						</span> <span class="seperator">|</span> <span class="link"> <span
								class="glyphicon glyphicon-link"></span> <a
								href="http://cognizant.com" target="_blank">http://cognizant.com</a>
						</span>


						</span>
					</p>
				</div>
			</div>
		</div>
	</div>
	<div class="background-white">
		<div id="abilities" class="container">
			<h2>Abilities</h2>
			<p class="lead">
				&ldquo;Learning never exhausts the mind.&rdquo;<br />- Leonardo da
				Vinci
			</p>

			<hr />

			<h3>Skills</h3>

			<div class="row">


				<div class="col-md-6">
					<ul class="no-bullets">
						<li><span class="ability-title">Java 8</span> <span
							class="ability-score"> <span
								class="glyphicon glyphicon-star filled"></span> <span
								class="glyphicon glyphicon-star filled"></span> <span
								class="glyphicon glyphicon-star filled"></span> <span
								class="glyphicon glyphicon-star filled"></span> <span
								class="glyphicon glyphicon-star filled"></span>


						</span></li>
						<li><span class="ability-title">BootStrap Framework</span> <span
							class="ability-score"> <span
								class="glyphicon glyphicon-star filled"></span> <span
								class="glyphicon glyphicon-star filled"></span> <span
								class="glyphicon glyphicon-star filled"></span> <span
								class="glyphicon glyphicon-star filled"></span> <span
								class="glyphicon glyphicon-star filled"></span>


						</span></li>
						<li><span class="ability-title">HTML(5)</span> <span
							class="ability-score"> <span
								class="glyphicon glyphicon-star filled"></span> <span
								class="glyphicon glyphicon-star filled"></span> <span
								class="glyphicon glyphicon-star filled"></span> <span
								class="glyphicon glyphicon-star filled"></span> <span
								class="glyphicon glyphicon-star filled"></span>


						</span></li>
						<li><span class="ability-title">Jquery</span> <span
							class="ability-score"> <span
								class="glyphicon glyphicon-star filled"></span> <span
								class="glyphicon glyphicon-star filled"></span> <span
								class="glyphicon glyphicon-star filled"></span> <span
								class="glyphicon glyphicon-star filled"></span> <span
								class="glyphicon glyphicon-star "></span>


						</span></li>
						<li><span class="ability-title">CSS(3)</span> <span
							class="ability-score"> <span
								class="glyphicon glyphicon-star filled"></span> <span
								class="glyphicon glyphicon-star filled"></span> <span
								class="glyphicon glyphicon-star filled"></span> <span
								class="glyphicon glyphicon-star filled"></span> <span
								class="glyphicon glyphicon-star "></span>


						</span></li>
						<li><span class="ability-title">JSF(2.0)</span> <span
							class="ability-score"> <span
								class="glyphicon glyphicon-star filled"></span> <span
								class="glyphicon glyphicon-star filled"></span> <span
								class="glyphicon glyphicon-star filled"></span> <span
								class="glyphicon glyphicon-star filled"></span> <span
								class="glyphicon glyphicon-star "></span>


						</span></li>
						<li><span class="ability-title">Primefaces</span> <span
							class="ability-score"> <span
								class="glyphicon glyphicon-star filled"></span> <span
								class="glyphicon glyphicon-star filled"></span> <span
								class="glyphicon glyphicon-star filled"></span> <span
								class="glyphicon glyphicon-star filled"></span> <span
								class="glyphicon glyphicon-star "></span>


						</span></li>
						<li><span class="ability-title">JSON</span> <span
							class="ability-score"> <span
								class="glyphicon glyphicon-star filled"></span> <span
								class="glyphicon glyphicon-star filled"></span> <span
								class="glyphicon glyphicon-star filled"></span> <span
								class="glyphicon glyphicon-star filled"></span> <span
								class="glyphicon glyphicon-star "></span>


						</span></li>
						<li><span class="ability-title">Hibernate</span> <span
							class="ability-score"> <span
								class="glyphicon glyphicon-star filled"></span> <span
								class="glyphicon glyphicon-star filled"></span> <span
								class="glyphicon glyphicon-star filled"></span> <span
								class="glyphicon glyphicon-star filled"></span> <span
								class="glyphicon glyphicon-star "></span>


						</span></li>
						<li><span class="ability-title">JPA (2.0)</span> <span
							class="ability-score"> <span
								class="glyphicon glyphicon-star filled"></span> <span
								class="glyphicon glyphicon-star filled"></span> <span
								class="glyphicon glyphicon-star filled"></span> <span
								class="glyphicon glyphicon-star filled"></span> <span
								class="glyphicon glyphicon-star "></span>


						</span></li>
						<li><span class="ability-title">Spring (4.0)</span> <span
							class="ability-score"> <span
								class="glyphicon glyphicon-star filled"></span> <span
								class="glyphicon glyphicon-star filled"></span> <span
								class="glyphicon glyphicon-star filled"></span> <span
								class="glyphicon glyphicon-star filled"></span> <span
								class="glyphicon glyphicon-star "></span>


						</span></li>

					</ul>
				</div>
				<div class="col-md-6">
					<ul class="no-bullets">
						
						<li><span class="ability-title">Spring Boot</span> <span
							class="ability-score"> <span
								class="glyphicon glyphicon-star filled"></span> <span
								class="glyphicon glyphicon-star filled"></span> <span
								class="glyphicon glyphicon-star filled"></span> <span
								class="glyphicon glyphicon-star filled"></span> <span
								class="glyphicon glyphicon-star "></span>


						</span></li>

						<li><span class="ability-title">Angular Js</span> <span
							class="ability-score"> <span
								class="glyphicon glyphicon-star filled"></span> <span
								class="glyphicon glyphicon-star filled"></span> <span
								class="glyphicon glyphicon-star filled"></span> <span
								class="glyphicon glyphicon-star filled"></span> <span
								class="glyphicon glyphicon-star "></span>


						</span></li>
						<li><span class="ability-title">Angular 2</span> <span
							class="ability-score"> <span
								class="glyphicon glyphicon-star filled"></span> <span
								class="glyphicon glyphicon-star filled"></span> <span
								class="glyphicon glyphicon-star filled"></span> <span
								class="glyphicon glyphicon-star filled"></span> <span
								class="glyphicon glyphicon-star "></span>


						</span></li>

						<li><span class="ability-title">JSP and Servlets</span> <span
							class="ability-score"> <span
								class="glyphicon glyphicon-star filled"></span> <span
								class="glyphicon glyphicon-star filled"></span> <span
								class="glyphicon glyphicon-star filled"></span> <span
								class="glyphicon glyphicon-star filled"></span> <span
								class="glyphicon glyphicon-star "></span>


						</span></li>
						<li><span class="ability-title">SQL</span> <span
							class="ability-score"> <span
								class="glyphicon glyphicon-star filled"></span> <span
								class="glyphicon glyphicon-star filled"></span> <span
								class="glyphicon glyphicon-star filled"></span> <span
								class="glyphicon glyphicon-star filled"></span> <span
								class="glyphicon glyphicon-star "></span>


						</span></li>
						<li><span class="ability-title">Fusion Charts</span> <span
							class="ability-score"> <span
								class="glyphicon glyphicon-star filled"></span> <span
								class="glyphicon glyphicon-star filled"></span> <span
								class="glyphicon glyphicon-star filled"></span> <span
								class="glyphicon glyphicon-star filled"></span> <span
								class="glyphicon glyphicon-star "></span>


						</span></li>
						<li><span class="ability-title">Python Programming Language</span> <span
							class="ability-score"> <span
								class="glyphicon glyphicon-star filled"></span> <span
								class="glyphicon glyphicon-star filled"></span> <span
								class="glyphicon glyphicon-star filled"></span> <span
								class="glyphicon glyphicon-star "></span> <span
								class="glyphicon glyphicon-star "></span>


						</span></li>
						<li><span class="ability-title">AJAX</span> <span
							class="ability-score"> <span
								class="glyphicon glyphicon-star filled"></span> <span
								class="glyphicon glyphicon-star filled"></span> <span
								class="glyphicon glyphicon-star filled"></span> <span
								class="glyphicon glyphicon-star "></span> <span
								class="glyphicon glyphicon-star "></span>


						</span></li>
						<li><span class="ability-title">Apache POI</span> <span
							class="ability-score"> <span
								class="glyphicon glyphicon-star filled"></span> <span
								class="glyphicon glyphicon-star filled"></span> <span
								class="glyphicon glyphicon-star filled"></span> <span
								class="glyphicon glyphicon-star "></span> <span
								class="glyphicon glyphicon-star "></span>


						</span></li>
						<li><span class="ability-title">Pl/SQL</span> <span
							class="ability-score"> <span
								class="glyphicon glyphicon-star filled"></span> <span
								class="glyphicon glyphicon-star filled"></span> <span
								class="glyphicon glyphicon-star "></span> <span
								class="glyphicon glyphicon-star "></span> <span
								class="glyphicon glyphicon-star "></span>


						</span></li>


					</ul>
				</div>


			</div>
			<div class="text-center project-referal">
				<p>This project is build on a BootStrap framework and a bit of
					Angular Stuff!!.</p>
			</div>

			<hr />

			<h3>Languages</h3>

			<div class="row">


				<div class="col-md-6">
					<ul class="no-bullets">


						<li><span class="ability-title">Telugu (Mother tongue)</span>
							<span class="ability-score"> <span
								class="glyphicon glyphicon-star filled"></span> <span
								class="glyphicon glyphicon-star filled"></span> <span
								class="glyphicon glyphicon-star filled"></span> <span
								class="glyphicon glyphicon-star filled"></span> <span
								class="glyphicon glyphicon-star filled"></span>


						</span></li>



						<li><span class="ability-title">English (Daily use)</span> <span
							class="ability-score"> <span
								class="glyphicon glyphicon-star filled"></span> <span
								class="glyphicon glyphicon-star filled"></span> <span
								class="glyphicon glyphicon-star filled"></span> <span
								class="glyphicon glyphicon-star filled"></span> <span
								class="glyphicon glyphicon-star filled"></span>


						</span></li>



					</ul>
				</div>
				<div class="col-md-6">
					<ul class="no-bullets">



						<li><span class="ability-title">Tamil (Survivable)</span> <span
							class="ability-score"> <span
								class="glyphicon glyphicon-star filled"></span> <span
								class="glyphicon glyphicon-star filled"></span> <span
								class="glyphicon glyphicon-star "></span> <span
								class="glyphicon glyphicon-star "></span> <span
								class="glyphicon glyphicon-star "></span>


						</span></li>



						<li><span class="ability-title">Hindi (Survivable)</span> <span
							class="ability-score"> <span
								class="glyphicon glyphicon-star filled"></span> <span
								class="glyphicon glyphicon-star filled"></span> <span
								class="glyphicon glyphicon-star "></span> <span
								class="glyphicon glyphicon-star "></span> <span
								class="glyphicon glyphicon-star "></span>


						</span></li>



					</ul>
				</div>


			</div>

			<hr />
			<h3>Tools</h3>
			<div class="row">


				<div class="col-md-6">
					<ul class="no-bullets">
						<li><span class="ability-title">My Eclipse</span> <span
							class="ability-score"> <span
								class="glyphicon glyphicon-star filled"></span> <span
								class="glyphicon glyphicon-star filled"></span> <span
								class="glyphicon glyphicon-star filled"></span> <span
								class="glyphicon glyphicon-star filled"></span> <span
								class="glyphicon glyphicon-star filled"></span>


						</span></li>
						<li><span class="ability-title">SulimeText</span> <span
							class="ability-score"> <span
								class="glyphicon glyphicon-star filled"></span> <span
								class="glyphicon glyphicon-star filled"></span> <span
								class="glyphicon glyphicon-star filled"></span> <span
								class="glyphicon glyphicon-star filled"></span> <span
								class="glyphicon glyphicon-star filled"></span>


						</span></li>
						<li><span class="ability-title">Toad</span> <span
							class="ability-score"> <span
								class="glyphicon glyphicon-star filled"></span> <span
								class="glyphicon glyphicon-star filled"></span> <span
								class="glyphicon glyphicon-star filled"></span> <span
								class="glyphicon glyphicon-star filled"></span> <span
								class="glyphicon glyphicon-star filled"></span>


						</span></li>
						<li><span class="ability-title">Webstrom</span> <span
							class="ability-score"> <span
								class="glyphicon glyphicon-star filled"></span> <span
								class="glyphicon glyphicon-star filled"></span> <span
								class="glyphicon glyphicon-star filled"></span> <span
								class="glyphicon glyphicon-star filled"></span> <span
								class="glyphicon glyphicon-star filled"></span>


						</span></li>
						<li><span class="ability-title">Windows</span> <span
							class="ability-score"> <span
								class="glyphicon glyphicon-star filled"></span> <span
								class="glyphicon glyphicon-star filled"></span> <span
								class="glyphicon glyphicon-star filled"></span> <span
								class="glyphicon glyphicon-star filled"></span> <span
								class="glyphicon glyphicon-star "></span>


						</span></li>
						<li><span class="ability-title">Microsoft Office</span> <span
							class="ability-score"> <span
								class="glyphicon glyphicon-star filled"></span> <span
								class="glyphicon glyphicon-star filled"></span> <span
								class="glyphicon glyphicon-star filled"></span> <span
								class="glyphicon glyphicon-star filled"></span> <span
								class="glyphicon glyphicon-star "></span>


						</span></li>
					</ul>
				</div>
				<div class="col-md-6">
					<ul class="no-bullets">

						<li><span class="ability-title">Adobe Photoshop</span> <span
							class="ability-score"> <span
								class="glyphicon glyphicon-star filled"></span> <span
								class="glyphicon glyphicon-star filled"></span> <span
								class="glyphicon glyphicon-star filled"></span> <span
								class="glyphicon glyphicon-star filled"></span> <span
								class="glyphicon glyphicon-star "></span>


						</span></li>
						<li><span class="ability-title">Matlab</span> <span
							class="ability-score"> <span
								class="glyphicon glyphicon-star filled"></span> <span
								class="glyphicon glyphicon-star filled"></span> <span
								class="glyphicon glyphicon-star filled"></span> <span
								class="glyphicon glyphicon-star "></span> <span
								class="glyphicon glyphicon-star "></span>


						</span></li>
						<li><span class="ability-title">Adobe Dreamweaver</span> <span
							class="ability-score"> <span
								class="glyphicon glyphicon-star filled"></span> <span
								class="glyphicon glyphicon-star filled"></span> <span
								class="glyphicon glyphicon-star filled"></span> <span
								class="glyphicon glyphicon-star "></span> <span
								class="glyphicon glyphicon-star "></span>


						</span></li>
						<li><span class="ability-title">MySql-WorkBench</span> <span
							class="ability-score"> <span
								class="glyphicon glyphicon-star filled"></span> <span
								class="glyphicon glyphicon-star filled"></span> <span
								class="glyphicon glyphicon-star filled"></span> <span
								class="glyphicon glyphicon-star "></span> <span
								class="glyphicon glyphicon-star "></span>


						</span></li>
						<li><span class="ability-title">NetBeans</span> <span
							class="ability-score"> <span
								class="glyphicon glyphicon-star filled"></span> <span
								class="glyphicon glyphicon-star filled"></span> <span
								class="glyphicon glyphicon-star "></span> <span
								class="glyphicon glyphicon-star "></span> <span
								class="glyphicon glyphicon-star "></span>


						</span></li>
						<li><span class="ability-title">Adobe Illustrator</span> <span
							class="ability-score"> <span
								class="glyphicon glyphicon-star filled"></span> <span
								class="glyphicon glyphicon-star "></span> <span
								class="glyphicon glyphicon-star "></span> <span
								class="glyphicon glyphicon-star "></span> <span
								class="glyphicon glyphicon-star "></span>


						</span></li>

					</ul>
				</div>
			</div>

			<hr />

			<h3>My Strengths</h3>
			<p class="lead" style="font-size: 18px;">&ldquo;Failure will
				never overtake me if my determination to succeed is strong enough.

				&rdquo;</p>
			<hr />
			<div class="row">
				<div class="col-md-12">

					<!-- COLUMN CHART START -->
					<div class="column-chart">
						<div class="legend legend-left hidden-xs">
							<h3 class="legend-title" style="font-style: italic;">ME</h3>
						</div>
						<!-- //.legend -->

						<div class="legend legend-right hidden-xs">
							<div class="item">
								<h4 style="color: #22A39F; font-style: italic;">Superhero</h4>
							</div>
							<!-- //.item -->

							<div class="item">
								<h4 style="color: #22A39F; font-style: italic;">Preety Good</h4>
							</div>
							<!-- //.item -->

							<div class="item">
								<h4 style="color: #22A39F; font-style: italic;">Good</h4>
							</div>
							<!-- //.item -->

							<div class="item">
								<h4 style="color: #22A39F; font-style: italic;">Newbie</h4>
							</div>
							<!-- //.item -->
						</div>
						<!-- //.legend -->

						<div class="chart clearfix">
							<div class="item">
								<div class="bar">
									<span class="percent">92%</span>

									<div class="item-progress" data-percent="92">
										<span class="title">Creativity</span>
									</div>
									<!-- //.item-progress -->
								</div>
								<!-- //.bar -->
							</div>
							<!-- //.item -->

							<div class="item">
								<div class="bar">
									<span class="percent">88%</span>

									<div class="item-progress" data-percent="88">
										<span class="title">Reliable</span>
									</div>
									<!-- //.item-progress -->
								</div>
								<!-- //.bar -->
							</div>
							<!-- //.item -->

							<div class="item">
								<div class="bar">
									<span class="percent">82%</span>

									<div class="item-progress" data-percent="82">
										<span class="title">Comunication</span>
									</div>
									<!-- //.item-progress -->
								</div>
								<!-- //.bar -->
							</div>
							<!-- //.item -->

							<div class="item">
								<div class="bar">
									<span class="percent">78%</span>

									<div class="item-progress" data-percent="78">
										<span class="title">Leadership</span>
									</div>
									<!-- //.item-progress -->
								</div>
								<!-- //.bar -->
							</div>
							<!-- //.item -->

							<div class="item">
								<div class="bar">
									<span class="percent">75%</span>

									<div class="item-progress" data-percent="77">
										<span class="title">Flexibility</span>
									</div>
									<!-- //.item-progress -->
								</div>
								<!-- //.bar -->
							</div>
							<!-- //.item -->
						</div>
						<!-- //.chart -->
					</div>
					<!-- //COLUMN CHART END -->

				</div>
				<!-- //.col-md-12 -->
			</div>

		</div>
	</div>
	<div id="contact">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 col-lg-offset-2 text-center">
					<h2 style="font-size: 28px;">Let's Get In Touch!</h2>
				</div>
				<div class="col-lg-4 col-lg-offset-2 text-center contactHoverPhone"
					id="contactHoverPhone" data-toggle="tooltip"
					data-placement="bottom" style="color: #22A39F;">
					<i class="fa fa-phone fa-3x sr-contact"></i>
					<p>(91)996-223-7400</p>
				</div>
				<div class="col-lg-4 text-center contactHover" id="contactHover"
					data-toggle="tooltip" data-placement="bottom"
					style="color: #22A39F;">
					<i class="fa fa-envelope-o fa-3x sr-contact"></i>
					<p>hariharakumar88@gmail.com</p>

				</div>
			</div>
		</div>
		<div class="container " style="margin-top: -50px;">
			<div class="row">
				<div class="col-lg-12">
					<div id="here"></div>
					<form id="contactForm">
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<input type="text" class="form-control"
										placeholder="Your Name *" id="name" name="userName">
									<p class="help-block text-danger"></p>
								</div>
								<div class="form-group">
									<input type="email" class="form-control"
										placeholder="Your Email *" id="email" name="email">
									<p class="help-block text-danger"></p>
								</div>
								<div class="form-group">
									<input type="tel" class="form-control"
										placeholder="Enter your 10 digit phone number *" id="phone"
										name="phone">
									<p class="help-block text-danger"></p>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<textarea class="form-control" placeholder="Your Message *"
										id="message" name="message"></textarea>
									<p class="help-block text-danger"></p>
								</div>
							</div>
							<div class="clearfix"></div>
							<div class="col-lg-12 text-center">
								<div id="message"></div>
								<button type="submit" id="sendMessage" class="btn btn-xl">
									<i class="fa  fa-spin " id="faclass"> </i><span id="dytext"
										style="padding-left: 5px;">Send Message</span>
								</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>

	<script src="js/jquery.js"></script>
	<script src="js/jquery-ui.js"></script>
	<script src="js/scrollreveal.min.js"></script>
	<!-- Bootstrap Core JavaScript -->
	<script src="js/bootstrap.min.js"></script>
	<script src="js/script.js"></script>
	<script src="js/ajaxContactFormSubmit.js"></script>
	<!-- Form Validation Core JavaScript -->
	<script src="js/formValidation/formValidation.min.js"></script>
	<script src="js/formValidation/bootstrap.min.js"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.9/angular-touch.js"></script>
	<script>
		$(document).ready(function() {
			$('#contactHover').tooltip({
				title : "That's my Mail Id!",
				animation : true,
				delay : {
					show : 50,
					hide : 100
				}
			});
			$('.contactHoverPhone').tooltip({
				title : "That's my Mobile Number!",
				animation : true,
				delay : {
					show : 50,
					hide : 100
				}
			});
			$("#articles .openMe").click(function() {
				if ($("#articles").hasClass("open")) {
					$("#articles").removeClass("open");
					$(".close-btn").text("+");
				} else {
					$("#articles").addClass("open");
					$(".close-btn").text("x");
				}
			});


		});
	</script>

</body>

</html>
