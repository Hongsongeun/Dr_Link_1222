<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Doccure</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=0">

<!-- Favicons -->
<link href="${path}/resources/assets/img/favicon.png" rel="icon">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="${path}/resources/assets/css/bootstrap.min.css">

<!-- Fontawesome CSS -->
<link rel="stylesheet"
	href="${path}/resources/assets/plugins/fontawesome/css/fontawesome.min.css">
<link rel="stylesheet"
	href="${path}/resources/assets/plugins/fontawesome/css/all.min.css">

<!-- Datetimepicker CSS -->
<link rel="stylesheet"
	href="${path}/resources/assets/css/bootstrap-datetimepicker.min.css">

<!-- Select2 CSS -->
<link rel="stylesheet"
	href="${path}/resources/assets/plugins/select2/css/select2.min.css">

<!-- Fancybox CSS -->
<link rel="stylesheet"
	href="${path}/resources/assets/plugins/fancybox/jquery.fancybox.min.css">

<!-- Main CSS -->
<link rel="stylesheet" href="${path}/resources/assets/css/style.css">

<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
		<script src="${path}/resources/assets/js/html5shiv.min.js"></script>
		<script src="${path}/resources/assets/js/respond.min.js"></script>
	<![endif]-->

</head>
<script type="text/javascript">
	$(document).ready(function(){
		$(".card").hide();
		$(".card").slice(0, 5).show();
		// read more button
		$(".btn.btn-primary.btn-sm").click(function(e) {
			e.preventDefault();
			$(".card:hidden").slice(0, 4).show();
			if ($(".card:hidden").length == 0) {
				$(".btn.btn-primary.btn-sm").hide();
			}
		}); 
		
		// search button
		$(".btn.btn-block").click(function(){
			var name = $(".form-control").val();
			var genderCheck = [];
			var subjectCheck = [];
			$("input:checkbox[name='gender_type']:checked").each(function(){
				genderCheck.push($(this).val());				
			});
			$("input:checkbox[name='select_specialist']:checked").each(function(){
				subjectCheck.push($(this).val());				
			});
			
			$.ajax({
			      type: 'POST',
			      url: 'doctorSearch.do',
			      datatype: 'html',
			      data: {
			    	  name = name,
			    	  gender = genderCheck,
			    	  subject = subjectCheck
			      },
			      success: function(data){
			    	  $('.col-md-12.col-lg-8.col-xl-9').html(data);
			      },
			      error: function(e){
	                    alert('error'+e);
            	  }
			});
		});
		
	});
</script>
<body>
	<!-- Main Wrapper -->
	<div class="main-wrapper">

		<!-- Header -->
		<header class="header">
			<nav class="navbar navbar-expand-lg header-nav">
				<div class="navbar-header">
					<a id="mobile_btn" href="javascript:void(0);"> <span
						class="bar-icon"> <span></span> <span></span> <span></span>
					</span>
					</a> <a href="index.html" class="navbar-brand logo"> <img
						src="${path}/resources/assets/img/logo.png" class="img-fluid"
						alt="Logo">
					</a>
				</div>
				<div class="main-menu-wrapper">
					<div class="menu-header">
						<a href="index.html" class="menu-logo"> <img
							src="${path}/resources/assets/img/logo.png" class="img-fluid"
							alt="Logo">
						</a> <a id="menu_close" class="menu-close" href="javascript:void(0);">
							<i class="fas fa-times"></i>
						</a>
					</div>
					<ul class="main-nav">
						<li><a href="index.html">Home</a></li>
						<li class="has-submenu"><a href="">Doctors <i
								class="fas fa-chevron-down"></i></a>
							<ul class="submenu">
								<li><a href="doctor-dashboard.html">Doctor Dashboard</a></li>
								<li><a href="appointments.html">Appointments</a></li>
								<li><a href="schedule-timings.html">Schedule Timing</a></li>
								<li><a href="my-patients.html">Patients List</a></li>
								<li><a href="patient-profile.html">Patients Profile</a></li>
								<li><a href="chat-doctor.html">Chat</a></li>
								<li><a href="invoices.html">Invoices</a></li>
								<li><a href="doctor-profile-settings.html">Profile
										Settings</a></li>
								<li><a href="reviews.html">Reviews</a></li>
								<li><a href="doctor-register.html">Doctor Register</a></li>
								<li class="has-submenu"><a href="doctor-blog.html">Blog</a>
									<ul class="submenu">
										<li><a href="doctor-blog.html">Blog</a></li>
										<li><a href="blog-details.html">Blog view</a></li>
										<li><a href="doctor-add-blog.html">Add Blog</a></li>
									</ul></li>
							</ul></li>
						<li class="has-submenu active"><a href="">Patients <i
								class="fas fa-chevron-down"></i></a>
							<ul class="submenu">
								<li class="has-submenu"><a href="#">Doctors</a>
									<ul class="submenu">
										<li><a href="map-grid.html">Map Grid</a></li>
										<li><a href="map-list.html">Map List</a></li>
									</ul></li>
								<li class="active"><a href="search.html">Search Doctor</a></li>
								<li><a href="doctor-profile.html">Doctor Profile</a></li>
								<li><a href="booking.html">Booking</a></li>
								<li><a href="checkout.html">Checkout</a></li>
								<li><a href="booking-success.html">Booking Success</a></li>
								<li><a href="patient-dashboard.html">Patient Dashboard</a></li>
								<li><a href="favourites.html">Favourites</a></li>
								<li><a href="chat.html">Chat</a></li>
								<li><a href="profile-settings.html">Profile Settings</a></li>
								<li><a href="change-password.html">Change Password</a></li>
							</ul></li>
						<li class="has-submenu"><a href="">Pharmacy <i
								class="fas fa-chevron-down"></i></a>
							<ul class="submenu">
								<li><a href="pharmacy-index.html">Pharmacy</a></li>
								<li><a href="pharmacy-details.html">Pharmacy Details</a></li>
								<li><a href="pharmacy-search.html">Pharmacy Search</a></li>
								<li><a href="product-all.html">Product</a></li>
								<li><a href="product-description.html">Product
										Description</a></li>
								<li><a href="cart.html">Cart</a></li>
								<li><a href="product-checkout.html">Product Checkout</a></li>
								<li><a href="payment-success.html">Payment Success</a></li>
							</ul></li>
						<li class="has-submenu"><a href="">Pages <i
								class="fas fa-chevron-down"></i></a>
							<ul class="submenu">
								<li><a href="voice-call.html">Voice Call</a></li>
								<li><a href="video-call.html">Video Call</a></li>
								<li><a href="search.html">Search Doctors</a></li>
								<li><a href="calendar.html">Calendar</a></li>
								<li><a href="components.html">Components</a></li>
								<li class="has-submenu"><a href="invoices.html">Invoices</a>
									<ul class="submenu">
										<li><a href="invoices.html">Invoices</a></li>
										<li><a href="invoice-view.html">Invoice View</a></li>
									</ul></li>
								<li><a href="blank-page.html">Starter Page</a></li>
								<li><a href="login.html">Login</a></li>
								<li><a href="register.html">Register</a></li>
								<li><a href="forgot-password.html">Forgot Password</a></li>
							</ul></li>
						<li class="has-submenu"><a href="">Blog <i
								class="fas fa-chevron-down"></i></a>
							<ul class="submenu">
								<li><a href="blog-list.html">Blog List</a></li>
								<li><a href="blog-grid.html">Blog Grid</a></li>
								<li><a href="blog-details.html">Blog Details</a></li>
							</ul></li>
						<li class="has-submenu"><a href="#" target="_blank">Admin
								<i class="fas fa-chevron-down"></i>
						</a>
							<ul class="submenu">
								<li><a href="admin/index.html" target="_blank">Admin</a></li>
								<li><a href="pharmacy/index.html" target="_blank">Pharmacy
										Admin</a></li>
							</ul></li>
						<li class="login-link"><a href="login.html">Login /
								Signup</a></li>
					</ul>
				</div>
				<ul class="nav header-navbar-rht">
					<li class="nav-item contact-item">
						<div class="header-contact-img">
							<i class="far fa-hospital"></i>
						</div>
						<div class="header-contact-detail">
							<p class="contact-header">Contact</p>
							<p class="contact-info-header">+1 315 369 5943</p>
						</div>
					</li>
					<li class="nav-item"><a class="nav-link header-login"
						href="login.html">login / Signup </a></li>
				</ul>
			</nav>
		</header>
		<!-- /Header -->

		<!-- Breadcrumb -->
		<div class="breadcrumb-bar">
			<div class="container-fluid">
				<div class="row align-items-center">
					<div class="col-md-8 col-12">
						<nav aria-label="breadcrumb" class="page-breadcrumb">
							<ol class="breadcrumb">
								<li class="breadcrumb-item"><a href="index.html">Home</a></li>
								<li class="breadcrumb-item active" aria-current="page">Search</li>
							</ol>
						</nav>
						<h2 class="breadcrumb-title">총 ${fn:length(doctor_list)}명의
							의사를 찾았습니다.</h2>
					</div>
					<div class="col-md-4 col-12 d-md-block d-none">
						<div class="sort-by">
							<span class="sort-title">Sort by</span> <span
								class="sortby-fliter"> <select class="select">
									<option>Select</option>
									<option class="sorting">Rating</option>
									<option class="sorting">Popular</option>
									<option class="sorting">Latest</option>
									<option class="sorting">Free</option>
							</select>
							</span>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- /Breadcrumb -->

		<!-- Page Content -->
		<div class="content">
			<div class="container-fluid">

				<div class="row">
					<div class="col-md-12 col-lg-4 col-xl-3 theiaStickySidebar">

						<!-- Search Filter -->
						<div class="card search-filter">
							<div class="card-header">
								<h4 class="card-title mb-0">Search Filter</h4>
							</div>
							<div class="card-body">
								<div class="filter-widget">
									<div class="">
										<input type="text" class="form-control" placeholder="의사 이름">
									</div>
								</div>
								<div class="filter-widget"> 
									<h4>성별</h4>
									<div>
										<label class="custom_check"> <input type="checkbox"
											name="gender_type" value="0"> <span class="checkmark"></span>
											남자
										</label>
									</div>
									<div>
										<label class="custom_check"> <input type="checkbox"
											name="gender_type" value="1"> <span class="checkmark"></span>
											여자
										</label>
									</div>
								</div>
								<div class="filter-widget">
									<h4>담당 과목</h4>
									<div>
										<label class="custom_check"> 
											<input type="checkbox" name="select_specialist" value="10"> 
											<span class="checkmark"></span> 안과
										</label>
									</div>
									<div>
										<label class="custom_check"> <input type="checkbox"
											name="select_specialist" value="20"> <span
											class="checkmark"></span> 피부과
										</label>
									</div>
									<div>
										<label class="custom_check"> <input type="checkbox"
											name="select_specialist" value="30"> <span class="checkmark"></span>
											정신건강의학과
										</label>
									</div>
								</div>
								<div class="btn-search">
									<button type="button" class="btn btn-block">Search</button>
								</div>
							</div>
						</div>
						<!-- /Search Filter -->

					</div>

					<div class="col-md-12 col-lg-8 col-xl-9">

						<!-- Doctor Widget -->
						<c:forEach var="doctor" items="${doctor_list}">
							<div class="card">
								<div class="card-body">
									<div class="doctor-widget">
										<div class="doc-info-left">
											<div class="doctor-img">
												<a href="doctor-profile.html"> <img
													src="${path}/resources/assets/doctor_img/${doctor.doctor_photo}"
													class="img-fluid" alt="User Image">
												</a>
											</div>
											<div class="doc-info-cont">
												<h4 class="doc-name">
													<a href="doctor-profile.do?doctor_no=${doctor.doctor_no}">Dr.
														${doctor.doctor_name}</a>
												</h4>
												<p class="doc-speciality">${doctor.dept.dept_name}</p>
												<h5 class="doc-department">Dr.Link</h5>
												<div class="rating">
													<i class="fas fa-star filled"></i> <i
														class="fas fa-star filled"></i> <i
														class="fas fa-star filled"></i> <i
														class="fas fa-star filled"></i> <i class="fas fa-star"></i>
													<span class="d-inline-block average-rating">(17)</span>
												</div>
											</div>
										</div>
										<div class="doc-info-right">
											<div class="clini-infos">
												<ul>
													<li><i class="far fa-thumbs-up"></i> 98%</li>
													<li><i class="far fa-comment"></i> 17 Feedback</li>
												</ul>
											</div>
											<div class="clinic-booking">
												<a class="view-pro-btn"
													href="doctor-profile.do?doctor_no=${doctor.doctor_no}">View
													Profile</a> <a class="apt-btn" href="booking.html">Book
													Appointment</a>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- /Doctor Widget -->
						</c:forEach>
						<div class="load-more text-center">
							<a class="btn btn-primary btn-sm" href="javascript:void(0);">Load
								More</a>
						</div>
					</div>
				</div>

			</div>

		</div>
		<!-- /Page Content -->

		<!-- Footer -->
		<footer class="footer">

			<!-- Footer Top -->
			<div class="footer-top">
				<div class="container-fluid">
					<div class="row">
						<div class="col-lg-3 col-md-6">

							<!-- Footer Widget -->
							<div class="footer-widget footer-about">
								<div class="footer-logo">
									<img src="${path}/resources/assets/img/footer-logo.png"
										alt="logo">
								</div>
								<div class="footer-about-content">
									<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit,
										sed do eiusmod tempor incididunt ut labore et dolore magna
										aliqua.</p>
									<div class="social-icon">
										<ul>
											<li><a href="#" target="_blank"><i
													class="fab fa-facebook-f"></i> </a></li>
											<li><a href="#" target="_blank"><i
													class="fab fa-twitter"></i> </a></li>
											<li><a href="#" target="_blank"><i
													class="fab fa-linkedin-in"></i></a></li>
											<li><a href="#" target="_blank"><i
													class="fab fa-instagram"></i></a></li>
											<li><a href="#" target="_blank"><i
													class="fab fa-dribbble"></i> </a></li>
										</ul>
									</div>
								</div>
							</div>
							<!-- /Footer Widget -->

						</div>

						<div class="col-lg-3 col-md-6">

							<!-- Footer Widget -->
							<div class="footer-widget footer-menu">
								<h2 class="footer-title">For Patients</h2>
								<ul>
									<li><a href="search.html">Search for Doctors</a></li>
									<li><a href="login.html">Login</a></li>
									<li><a href="register.html">Register</a></li>
									<li><a href="booking.html">Booking</a></li>
									<li><a href="patient-dashboard.html">Patient Dashboard</a></li>
								</ul>
							</div>
							<!-- /Footer Widget -->

						</div>

						<div class="col-lg-3 col-md-6">

							<!-- Footer Widget -->
							<div class="footer-widget footer-menu">
								<h2 class="footer-title">For Doctors</h2>
								<ul>
									<li><a href="appointments.html">Appointments</a></li>
									<li><a href="chat.html">Chat</a></li>
									<li><a href="login.html">Login</a></li>
									<li><a href="doctor-register.html">Register</a></li>
									<li><a href="doctor-dashboard.html">Doctor Dashboard</a></li>
								</ul>
							</div>
							<!-- /Footer Widget -->

						</div>

						<div class="col-lg-3 col-md-6">

							<!-- Footer Widget -->
							<div class="footer-widget footer-contact">
								<h2 class="footer-title">Contact Us</h2>
								<div class="footer-contact-info">
									<div class="footer-address">
										<span><i class="fas fa-map-marker-alt"></i></span>
										<p>
											3556 Beech Street, San Francisco,<br> California, CA
											94108
										</p>
									</div>
									<p>
										<i class="fas fa-phone-alt"></i> +1 315 369 5943
									</p>
									<p class="mb-0">
										<i class="fas fa-envelope"></i> doccure@example.com
									</p>
								</div>
							</div>
							<!-- /Footer Widget -->

						</div>

					</div>
				</div>
			</div>
			<!-- /Footer Top -->

			<!-- Footer Bottom -->
			<div class="footer-bottom">
				<div class="container-fluid">

					<!-- Copyright -->
					<div class="copyright">
						<div class="row">
							<div class="col-md-6 col-lg-6">
								<div class="copyright-text">
									<p class="mb-0">&copy; 2020 Doccure. All rights reserved.</p>
								</div>
							</div>
							<div class="col-md-6 col-lg-6">

								<!-- Copyright Menu -->
								<div class="copyright-menu">
									<ul class="policy-menu">
										<li><a href="term-condition.html">Terms and
												Conditions</a></li>
										<li><a href="privacy-policy.html">Policy</a></li>
									</ul>
								</div>
								<!-- /Copyright Menu -->

							</div>
						</div>
					</div>
					<!-- /Copyright -->

				</div>
			</div>
			<!-- /Footer Bottom -->

		</footer>
		<!-- /Footer -->

	</div>
	<!-- /Main Wrapper -->

	<!-- jQuery -->
	<script src="${path}/resources/assets/js/jquery.min.js"></script>

	<!-- Bootstrap Core JS -->
	<script src="${path}/resources/assets/js/popper.min.js"></script>
	<script src="${path}/resources/assets/js/bootstrap.min.js"></script>

	<!-- Sticky Sidebar JS -->
	<script
		src="${path}/resources/assets/plugins/theia-sticky-sidebar/ResizeSensor.js"></script>
	<script
		src="${path}/resources/assets/plugins/theia-sticky-sidebar/theia-sticky-sidebar.js"></script>

	<!-- Select2 JS -->
	<script
		src="${path}/resources/assets/plugins/select2/js/select2.min.js"></script>

	<!-- Datetimepicker JS -->
	<script src="${path}/resources/assets/js/moment.min.js"></script>
	<script
		src="${path}/resources/assets/js/bootstrap-datetimepicker.min.js"></script>

	<!-- Fancybox JS -->
	<script
		src="${path}/resources/assets/plugins/fancybox/jquery.fancybox.min.js"></script>

	<!-- Custom JS -->
	<script src="${path}/resources/assets/js/script.js"></script>
</body>
</html>