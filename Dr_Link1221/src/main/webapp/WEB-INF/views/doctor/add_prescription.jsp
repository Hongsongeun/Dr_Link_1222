<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%
	Date nowTime = new Date();
	SimpleDateFormat date = new SimpleDateFormat("yyyy년 MM월 dd일");
	SimpleDateFormat time = new SimpleDateFormat("hh:mm a");;
	SimpleDateFormat date_time = new SimpleDateFormat("yyyy/MM/dd/hh:mm");
%>
<!DOCTYPE html> 
<html lang="en">
	<head>
		<meta charset="utf-8">
		<title>처방전 작성-Dr.Link</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
		
		<!-- Favicons -->
		<link href="${pageContext.request.contextPath}/resources/img/favicon.png" rel="icon">
		
		<!-- Bootstrap CSS -->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
		
		<!-- Fontawesome CSS -->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/plugins/fontawesome/css/fontawesome.min.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/plugins/fontawesome/css/all.min.css">
		
		<!-- Main CSS -->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
		
		<!-- 약품검색 -->
		<link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.9/css/select2.min.css" rel="stylesheet" />


	<!-- 구글폰트 -->
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic:400,700,800&amp;subset=korean" rel="stylesheet">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Major+Mono+Display&display=swap" rel="stylesheet">
<style>
body {
    font-family: "Nanum Gothic", sans-serif;
}



.footer-menu{
	color:#fff;
}
	
</style>
	
	</head>
	<body class="account-page">

		<!-- Main Wrapper -->
		<div class="main-wrapper">
		
			<!-- Header -->
			<header class="header">
				<nav class="navbar navbar-expand-lg header-nav">
					<div class="navbar-header">
						<a id="mobile_btn" href="javascript:void(0);">
							<span class="bar-icon">
								<span></span>
								<span></span>
								<span></span>
							</span>
						</a>
						<a href="index" class="navbar-brand logo">
							<img src="${pageContext.request.contextPath}/resources/img/logo.png" class="img-fluid" alt="Logo">
						</a>
					</div>
					<div class="main-menu-wrapper">
						<div class="menu-header">
							<a href="index" class="menu-logo">
								<img src="${pageContext.request.contextPath}/resources/img/logo.png" class="img-fluid" alt="Logo">
							</a>
							<a id="menu_close" class="menu-close" href="javascript:void(0);">
								<i class="fas fa-times"></i>
							</a>
						</div>
						<ul class="main-nav">
							<li>
								<a href="index">Home</a>
							</li>
							<li class="has-submenu">
								<a href="">Doctors <i class="fas fa-chevron-down"></i></a>
								<ul class="submenu">
									<li><a href="doctor-dashboard">Doctor Dashboard</a></li>
									<li><a href="appointments">Appointments</a></li>
									<li><a href="schedule-timings">Schedule Timing</a></li>
									<li><a href="my-patients">Patients List</a></li>
									<li><a href="patient-profile">Patients Profile</a></li>
									<li><a href="chat-doctor">Chat</a></li>
									<li><a href="invoices">Invoices</a></li>
									<li><a href="doctor-profile-settings">Profile Settings</a></li>
									<li><a href="reviews">Reviews</a></li>
									<li><a href="doctor-register">Doctor Register</a></li>
									<li class="has-submenu">
										<a href="doctor-blog">Blog</a>
										<ul class="submenu">
											<li><a href="doctor-blog">Blog</a></li>
											<li><a href="blog-details">Blog view</a></li>
											<li><a href="doctor-add-blog">Add Blog</a></li>
										</ul>
									</li>
								</ul>
							</li>	
							<li class="has-submenu">
								<a href="">Patients <i class="fas fa-chevron-down"></i></a>
								<ul class="submenu">
									<li class="has-submenu">
										<a href="#">Doctors</a>
										<ul class="submenu">
											<li><a href="map-grid">Map Grid</a></li>
											<li><a href="map-list">Map List</a></li>
										</ul>
									</li>
									<li><a href="search">Search Doctor</a></li>
									<li><a href="doctor-profile">Doctor Profile</a></li>
									<li><a href="booking">Booking</a></li>
									<li><a href="checkout">Checkout</a></li>
									<li><a href="booking-success">Booking Success</a></li>
									<li><a href="patient-dashboard">Patient Dashboard</a></li>
									<li><a href="favourites">Favourites</a></li>
									<li><a href="chat">Chat</a></li>
									<li><a href="profile-settings">Profile Settings</a></li>
									<li><a href="change-password">Change Password</a></li>
								</ul>
							</li>	
							<li class="has-submenu">
								<a href="">Pharmacy <i class="fas fa-chevron-down"></i></a>
								<ul class="submenu">
									<li><a href="pharmacy-index">Pharmacy</a></li>
									<li><a href="pharmacy-details">Pharmacy Details</a></li>
									<li><a href="pharmacy-search">Pharmacy Search</a></li>
									<li><a href="product-all">Product</a></li>
									<li><a href="product-description">Product Description</a></li>
									<li><a href="cart">Cart</a></li>
									<li><a href="product-checkout">Product Checkout</a></li>
									<li><a href="payment-success">Payment Success</a></li>
								</ul>
							</li>
							<li class="has-submenu active">
								<a href="">Pages <i class="fas fa-chevron-down"></i></a>
								<ul class="submenu">
									<li><a href="voice-call">Voice Call</a></li>
									<li><a href="video-call">Video Call</a></li>
									<li><a href="search">Search Doctors</a></li>
									<li><a href="calendar">Calendar</a></li>
									<li><a href="components">Components</a></li>
									<li class="has-submenu">
										<a href="invoices">Invoices</a>
										<ul class="submenu">
											<li><a href="invoices">Invoices</a></li>
											<li><a href="invoice-view">Invoice View</a></li>
										</ul>
									</li>
									<li><a href="blank-page">Starter Page</a></li>
									<li class="active"><a href="login">Login</a></li>
									<li><a href="register">Register</a></li>
									<li><a href="forgot-password">Forgot Password</a></li>
								</ul>
							</li>
							<li class="has-submenu">
								<a href="">Blog <i class="fas fa-chevron-down"></i></a>
								<ul class="submenu">
									<li><a href="blog-list">Blog List</a></li>
									<li><a href="blog-grid">Blog Grid</a></li>
									<li><a href="blog-details">Blog Details</a></li>
								</ul>
							</li>
							<li class="has-submenu">
								<a href="#" target="_blank">Admin <i class="fas fa-chevron-down"></i></a>
								<ul class="submenu">
									<li><a href="admin/index" target="_blank">Admin</a></li>
									<li><a href="pharmacy/index" target="_blank">Pharmacy Admin</a></li>
								</ul>
							</li>
							<li class="login-link">
								<a href="login">Login / Signup</a>
							</li>
						</ul>
					</div>		 
					<ul class="nav header-navbar-rht">
						<li class="nav-item">
							<a class="nav-link header-login" href="${contextPath}login">로그인 / 회원가입</a>
						</li>
					</ul>
				</nav>
			</header>
			<!-- /Header -->
			
			<!-- Page Content -->
			<div class="content">
				<div class="container-fluid">
					
					<div class="row">
						<div class="col-md-8 offset-md-2">
							<!-- Login Tab Content -->
							<div class="account-content">
								<div class="card" style="margin:1.5rem !important;">
								<div class="card-header text-center" style="border-bottom:0px !important; margin-top:10px !important;">
									<h4>📃처방전📃</h4>
								</div>
								<form method="post">
									<div class="card-body">
									<!-- 환자명 진료과목 처방시간 의사명 약품번호 결제여부 -->
									<div class="row">
										<div class="col-sm-6">
											<div class="biller-info">
												<h4 class="d-block">${patientinfo.p_name} 님</h4>
												<span class="d-block text-sm text-muted">${doctorinfo.departmentDTO.dep_name} 진료</span>
											</div>
										</div>
										<div class="col-sm-6 text-sm-right">
											<div class="billing-info">
												<h4 class="d-block"><%= date.format(nowTime) %></h4>
												<input type="hidden" name="prescription_date" value="<%= date.format(nowTime)%>"/>
												<input type="hidden" name="prescription_date" value="<%= time.format(nowTime)%>"/>
												<input type="hidden" name="patient_num" value="${patientinfo.patient_num}"/>
												<input type="hidden" name="doctor_num" value="${doctorinfo.doctor_num}"/>
												<input type="hidden" name="dep_num" value="${doctorinfo.departmentDTO.dep_num}"/>
											</div>
										</div>
									</div>
										<div class="table-responsive">
														<table class="table table-hover table-center mb-0">
															<thead>
																<tr>
																	<th>교부 일자</th>
																	<th>교부 번호</th>
																	<th>환자 성명</th>
																	<th>처방 의료인의 성명</th>
																	<th>면허 증빙</th>
																	<th>면허 번호</th>
																</tr>
															</thead>
															<tbody>
																<tr>
																	<td><%= date.format(nowTime) %>
																	<span class="d-block text-info"><%= time.format(nowTime) %></span></td>
																	<td>제 <span> 15489 </span> 호</td>
																	<td>${patientinfo.p_name}</td>
																	<td class="text-left">
																		<h2 class="table-avatar">
																			<a href="doctor-profile">${doctorinfo.d_name}<span>${doctorinfo.departmentDTO.dep_name}</span></a>
																		</h2>
																	</td>
																	<td>${doctorinfo.d_licence}</td>
																	<td>3415-4</td>
																</tr>
															</tbody>
														</table>
														<table class="table table-hover table-center mb-0 text-center">
															<thead>
																<tr>
																	<th>병원 이름</th>
																	<th>전화 번호</th>
																	<th>팩스 번호</th>
																	<th>의사 서명</th>
																</tr>
															</thead>
															<tbody>
																<tr>
																	<td>${drLinkinfo.dl_name}</td>
																	<td>${drLinkinfo.dl_tel}</td>
																	<td>${drLinkinfo.dl_faxtel}</td>
																	<td><Strong style="text-decoration:underline; color:#003669;">${doctorinfo.d_name}</Strong></td>
																</tr>
															</tbody>
														</table>
													</div>
													
													<!-- Add Item -->
													<div class="add-more text-right">
														<a href="javascript:void(0);" class="add-prescription"><i class="fa fa-plus-circle"></i> 추가하기</a>
													</div>
													
													<!-- /Add Item -->
													
													<!-- Prescription Item -->
									
									<div class="card card-table">
										<div class="card-body">
											<div class="table-responsive">
												<table class="table table-hover table-center text-center">
												<thead>
													<tr>
														<th style="width: 200px">약품명</th>
														<th style="width: 100px">투여량</th>
														<th style="width: 100px">횟수</th>
														<th style="width: 100px;">일수</th>
														<th style="width: 80px;"></th>
													</tr>
												</thead>
												<tbody class="prescription-info">
													<tr class="prescription-cont">
														<td>
															<select class="form-control select2" id="select2"> 
															<c:forEach var="medi" items="${medicine_info}">
																<option value="${medi.medicine_num}">${medi.medicine_name}</option>
															</c:forEach>
															</select>
														</td>
														<td>
															<input class="form-control" value="" type="text" name="dosage">
														</td>
														<td>
															<input class="form-control" value="" type="text" name="quantity">
														</td>
														<td>
															<input class="form-control" value="" type="text" name="days">
														</td>
														<td>
														</td>
													</tr>
												</tbody>
												</table>
											</div>
										</div>
									</div>
									<!-- /Prescription Item -->
													
											<div class="text-center" style="margin:10px !important;">		
												<button type="submit" class="btn btn-info submit-btn" formaction="end_prescription">입력 완료</button>
												<button type="submit" class="btn btn-info submit-btn" formaction="#">취소</button>
											</div>	
										</form>
									</div>
								</div>
								
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
								<h1 id="drlink" style="color:#fff;">Dr.Link</h1>
							</div>
							<div class="footer-about-content">
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. </p>
								<div class="social-icon">
									<ul>
										<li>
											<a href="#" target="_blank"><i class="fab fa-facebook-f"></i> </a>
										</li>
										<li>
											<a href="#" target="_blank"><i class="fab fa-twitter"></i> </a>
										</li>
										<li>
											<a href="#" target="_blank"><i class="fab fa-linkedin-in"></i></a>
										</li>
										<li>
											<a href="#" target="_blank"><i class="fab fa-instagram"></i></a>
										</li>
										<li>
											<a href="#" target="_blank"><i class="fab fa-dribbble"></i> </a>
										</li>
									</ul>
								</div>
							</div>
						</div>
						<!-- /Footer Widget -->
						
					</div>
					
					<div class="col-lg-3 col-md-6">
					
						<!-- Footer Widget -->
						<div class="footer-widget footer-menu">
							<h2 class="footer-title"><a href="notice" class="footer-menu">공지사항</a></h2>
							<h2 class="footer-title"><a href="booking" class="footer-menu">온라인 예약</a></h2>
							<h2 class="footer-title"><a href="health-care" class="footer-menu">건강정보</a></h2>
						</div>
						<!-- /Footer Widget -->
						
					</div>
					
					<div class="col-lg-3 col-md-6">
					
						<!-- Footer Widget -->
						<div class="footer-widget footer-menu">
							<h2 class="footer-title"><a href="" class="footer-menu">온라인 간편 진단</a></h2>
							<ul>
								<li><a href="AI_medical_eye">안과 진단</a></li>
								<li><a href="AI_medical_skin">피부과 진단</a></li>
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
										<p> 서울 금천구 가산디지털2로 123 월드메르디앙벤처센터II </p>
									</div>
									<p>
										<i class="fas fa-phone-alt"></i>
										02-2025-4119
									</p>
									<p class="mb-0">
										<i class="fas fa-envelope"></i>
										drlink@naver.com
									</p>
								</div>
								</div>
							</div>
						</div>
						<!-- /Footer Widget -->
						
					</div>
					
				</div>
			</div>
		</div>
		<!-- /Footer Top -->
		
		<!-- Footer Bottom -->
              <div class="footer-bottom" style="margin:5px !important; padding:10px !important;">
			<div class="container-fluid">
			
				<!-- Copyright -->
				<div class="copyright">
					<div class="row">
						<div class="col-md-7 col-lg-7">
							<div class="copyright-text">
								<p>
									Copyright &copy; by Dr.Link All Rights Reserved.
								</p>
							</div>
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
<script src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>

<!-- Bootstrap Core JS -->
<script src="${pageContext.request.contextPath}/resources/js/popper.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>

<!-- Custom JS -->
<script src="${pageContext.request.contextPath}/resources/js/script.js"></script>
<!-- Select2 JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.8/js/select2.min.js" ></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.8/js/select2.js" ></script>
<!-- Profile Settings JS -->
<script src="${pageContext.request.contextPath}/resources/js/profile-settings.js"></script>

<!-- Custom JS -->
<script src="${pageContext.request.contextPath}/resources/js/script.js"></script>


<!-- 한글처리 -->
<script src="https://unpkg.com/hangul-js" type="text/javascript"></script>
<script>
$(function(){

	
	 $(".prescription-info").on('click','.trash', function () {
			$(this).closest('.prescription-cont').remove();
			 return false; 
	    });
	
	$(".add-prescription").on('click', function () {

		$(".prescription-info").append('<tr class="prescription-cont">'+
	   			'<td>'+
	   			'<select class="form-control select2">'+ 
				'<c:forEach var="medi" items="${medicine_info}">'+
				'<option value="${medi.medicine_num}">${medi.medicine_name}</option>'+	
				'</c:forEach>'+
				'</select>'+
				'</td>'+
				'<td>'+
				'<input class="form-control" value="" type="text" name="dosage">'+
				'</td>'+
				'<td>'+
				'<input class="form-control" value="" type="text" name="quantity">'+
				'</td>'+
				'<td>'+
				'<input class="form-control" value="" type="text" name="days">'+
				'</td>'+
				'<td>'+					
				'<a href="#" class="btn bg-danger-light trash">'+
				'<i class="far fa-trash-alt">'+'</i>'+
				'</a>'+
				'</td>'+
				'</tr>');
	       		$('select.select2').each(function(){
	       			$(this).select2();
	       		})
	       
			 return false;
	   });
	$('.select2').select2();
});

/* 
(function($){
})(jQuery);
*/

</script>
	</body>
</html>