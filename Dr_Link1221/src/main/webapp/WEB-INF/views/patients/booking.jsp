<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html><!-- Breadcrumb -->
			<div class="breadcrumb-bar">
				<div class="container-fluid">
					<div class="row align-items-center">
						<div class="col-md-12 col-12">
							<nav aria-label="breadcrumb" class="page-breadcrumb">
								<ol class="breadcrumb">
									<li class="breadcrumb-item"><a href="index">Home</a></li>
									<li class="breadcrumb-item active" aria-current="page">예약</li>
								</ol>
							</nav>
							<h2 class="breadcrumb-title">진료예약</h2>
						</div>
					</div>
				</div>
			</div>
			<!-- /Breadcrumb -->
			
			<!-- Page Content -->
			<div class="content">
				<div class="container">
				
					<div class="row">
						<div class="col-12">
						
							<div class="card">
								<div class="card-body">
									<div class="booking-doc-info">
										<a href="doctor-profile" class="booking-doc-img">
											<img src="${pageContext.request.contextPath}/resources/img/doctors/doctor-thumb-02.jpg" alt="User Image">
										</a>
										<div class="booking-info">
											<h4><a href="doctor-profile">홍길동 의사</a></h4>
											<div class="rating">
												<i class="fas fa-star filled"></i>
												<i class="fas fa-star filled"></i>
												<i class="fas fa-star filled"></i>
												<i class="fas fa-star filled"></i>
												<i class="fas fa-star"></i>
												<span class="d-inline-block average-rating">35</span>
											<!--  </div>
											<p class="text-muted mb-0"><i class="fas fa-map-marker-alt"></i> Newyork, USA</p>
										</div>-->
									</div>
								</div>
							</div>
							<br>
							<div class="row">
								<div class="col-12 col-sm-4 col-md-6">
									<h4 class="mb-1">2020년 12월 4일</h4>
									<p class="text-muted">금요일</p>
								</div>
								<div class="col-12 col-sm-8 col-md-6 text-sm-right">
									<div class="bookingrange btn btn-white btn-sm mb-3">
										<i class="far fa-calendar-alt mr-2"></i>
										<span></span>
										<i class="fas fa-chevron-down ml-2"></i>
									</div>
								</div>
                            </div>
							<!-- Schedule Widget -->
							<div class="card booking-schedule schedule-widget">
							
								<!-- Schedule Header -->
								<div class="schedule-header">
									<div class="row">
										<div class="col-md-12">
										
											<!-- Day Slot -->
											<div class="day-slot">
												<ul>
													<li>
														<span>월요일</span>
														<span class="slot-date">11 30 <small class="slot-year">2020</small></span>
													</li>
													<li>
														<span>화요일</span>
														<span class="slot-date">12 1 <small class="slot-year">2020</small></span>
													</li>
													<li>
														<span>수요일</span>
														<span class="slot-date">12 2 <small class="slot-year">2020</small></span>
													</li>
													<li>
														<span>목요일</span>
														<span class="slot-date">12 3 <small class="slot-year">2020</small></span>
													</li>
													<li>
														<span>금요일</span>
														<span class="slot-date">12 4 <small class="slot-year">2020</small></span>
													</li>
													<li>
														<span>토요일</span>
														<span class="slot-date">12 5 <small class="slot-year">2020</small></span>
													</li>
													<li>
														<span>일요일</span>
														<span class="slot-date">12 6 <small class="slot-year">2020</small></span>
													</li>
												</ul>
											</div>
											<!-- /Day Slot -->
											
										</div>
									</div>
								</div>
								<!-- /Schedule Header -->
								
								<!-- Schedule Content -->
								<div class="schedule-cont">
									<div class="row">
										<div class="col-md-12">
										
											<!-- Time Slot -->
											<div class="time-slot">
												<ul class="clearfix">
													<li>
														<a class="timing" href="#">
															<span>9:00</span> <span>AM</span>
														</a>
														<a class="timing" href="#">
															<span>10:00</span> <span>AM</span>
														</a>
														<a class="timing" href="#">
															<span>11:00</span> <span>AM</span>
														</a>
														<a class="timing" href="#">
															<span>12:00</span> <span>PM</span>
														</a>
														<a class="timing" href="#">
															<span>14:00</span> <span>PM</span>
														</a>
														<a class="timing" href="#">
															<span>15:00</span> <span>PM</span>
														</a>
														<a class="timing" href="#">
															<span>16:00</span> <span>PM</span>
														</a>
													</li>
													<li>
														<a class="timing" href="#">
															<span>9:00</span> <span>AM</span>
														</a>
														<a class="timing" href="#">
															<span>10:00</span> <span>AM</span>
														</a>
														<a class="timing" href="#">
															<span>11:00</span> <span>AM</span>
														</a>
														<a class="timing" href="#">
															<span>12:00</span> <span>PM</span>
														</a>
														<a class="timing" href="#">
															<span>14:00</span> <span>PM</span>
														</a>
														<a class="timing" href="#">
															<span>15:00</span> <span>PM</span>
														</a>
														<a class="timing" href="#">
															<span>16:00</span> <span>PM</span>
														</a>
													</li>
													<li>
														<a class="timing" href="#">
															<span>9:00</span> <span>AM</span>
														</a>
														<a class="timing" href="#">
															<span>10:00</span> <span>AM</span>
														</a>
														<a class="timing" href="#">
															<span>11:00</span> <span>AM</span>
														</a>
														<a class="timing" href="#">
															<span>12:00</span> <span>PM</span>
														</a>
														<a class="timing" href="#">
															<span>14:00</span> <span>PM</span>
														</a>
														<a class="timing" href="#">
															<span>15:00</span> <span>PM</span>
														</a>
														<a class="timing" href="#">
															<span>16:00</span> <span>PM</span>
														</a>
													</li>
													<li>
														<a class="timing" href="#">
															<span>9:00</span> <span>AM</span>
														</a>
														<a class="timing" href="#">
															<span>10:00</span> <span>AM</span>
														</a>
														<a class="timing" href="#">
															<span>11:00</span> <span>AM</span>
														</a>
														<a class="timing" href="#">
															<span>12:00</span> <span>PM</span>
														</a>
														<a class="timing" href="#">
															<span>14:00</span> <span>PM</span>
														</a>
														<a class="timing" href="#">
															<span>15:00</span> <span>PM</span>
														</a>
														<a class="timing" href="#">
															<span>16:00</span> <span>PM</span>
														</a>
													</li>
													<li>
														<a class="timing" href="#">
															<span>9:00</span> <span>AM</span>
														</a>
														<a class="timing" href="#">
															<span>10:00</span> <span>AM</span>
														</a>
														<a class="timing" href="#">
															<span>11:00</span> <span>AM</span>
														</a>
														<a class="timing" href="#">
															<span>12:00</span> <span>PM</span>
														</a>
														<a class="timing" href="#">
															<span>14:00</span> <span>PM</span>
														</a>
														<a class="timing selected" href="#">
															<span>15:00</span> <span>PM</span>
														</a>
														<a class="timing" href="#">
															<span>16:00</span> <span>PM</span>
														</a>
													</li>
													<li>
														<a class="timing" href="#">
															<span>9:00</span> <span>AM</span>
														</a>
														<a class="timing" href="#">
															<span>10:00</span> <span>AM</span>
														</a>
														<a class="timing" href="#">
															<span>11:00</span> <span>AM</span>
														</a>
														<a class="timing" href="#">
															<span>12:00</span> <span>PM</span>
														</a>
														<a class="timing" href="#">
															<span>14:00</span> <span>PM</span>
														</a>
														<a class="timing" href="#">
															<span>15:00</span> <span>PM</span>
														</a>
														<a class="timing" href="#">
															<span>16:00</span> <span>PM</span>
														</a>
													</li>
													<li>
														<a class="timing" href="#">
															<span>9:00</span> <span>AM</span>
														</a>
														<a class="timing" href="#">
															<span>10:00</span> <span>AM</span>
														</a>
														<a class="timing" href="#">
															<span>11:00</span> <span>AM</span>
														</a>
														<a class="timing" href="#">
															<span>12:00</span> <span>PM</span>
														</a>
														<a class="timing" href="#">
															<span>14:00</span> <span>PM</span>
														</a>
														<a class="timing" href="#">
															<span>15:00</span> <span>PM</span>
														</a>
														<a class="timing" href="#">
															<span>16:00</span> <span>PM</span>
														</a>
													</li>
												</ul>
											</div>
											<!-- /Time Slot -->
											
										</div>
									</div>
								</div>
								<!-- /Schedule Content -->
								
							</div>
							<!-- /Schedule Widget -->
							<div class="container">
       						 <div class="row">
								<h4>변경 및 취소 안내&nbsp;&nbsp;</h4>
								<p>• 예약변경 및 취소는 진료예약일의 1일 전까지 가능합니다.<br>
								• 예약변경 및 취소는 웹사이트를 통해 하실 수 있습니다. (오전 10시~오후 5시까지 가능)<br>
								• 예약이 결정된 후 진료 10분 전에 로그인을 하지 않으실 경우, 사전 공지 없이 예약이 자동으로 취소될 수 있습니다.<br>
								• 당일 진료 시간을 지키지 못하시는 경우 다음 번 이용에 제한이 될 수 있습니다.</p>
								<br>
								<p>&nbsp;</p>
								
                                 </div>
							</div>
							<!-- Submit Section -->
							<div class="submit-section proceed-btn text-right">
								<a href="booking-success" class="btn btn-primary submit-btn">예약하기</a>
							</div>
							<!-- /Submit Section -->
							
							
						</div>
					</div>
				</div>

			</div>		
			<!-- /Page Content -->
