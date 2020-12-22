<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html> 
			<!-- Breadcrumb -->
			<div class="breadcrumb-bar">
				<div class="container-fluid">
					<div class="row align-items-center">
						<div class="col-md-12 col-12">
							<nav aria-label="breadcrumb" class="page-breadcrumb">
								<ol class="breadcrumb">
									<li class="breadcrumb-item"><a href="index">Home</a></li>
									<li class="breadcrumb-item active" aria-current="page">Doctor Profile</li>
								</ol>
							</nav>
							<h2 class="breadcrumb-title">Doctor Profile</h2>
						</div>
					</div>
				</div>
			</div>
			<!-- /Breadcrumb -->
			
			<!-- Page Content -->
			<div class="content">
				<div class="container">

					<!-- Doctor Widget -->
					<div class="card">
						<div class="card-body">
							<div class="doctor-widget">
								<div class="doc-info-left">
									<div class="doctor-img">
										<img src="${pageContext.request.contextPath}/resources/img/doctors/doctor-thumb-02.jpg" class="img-fluid" alt="User Image">
										
										<!-- <div class="doctor-action">
											<a href="javascript:void(0)" class="btn btn-white fav-btn" >
												<i class="far fa-bookmark"></i>
											</a> 
										</div> -->
									</div>
									<div class="doc-info-cont">
										<h4 class="doc-name">${doctor_profile.d_name}</h4>
										<%-- <p class="doc-speciality">${ddepartment} 피부과</p> --%>
										<p class="doc-department"><img src="${pageContext.request.contextPath}/resources/img/specialities/specialities-05.png" class="img-fluid" alt="Speciality">${ddepartment }</p>
										<div class="rating">
											<i class="fas fa-star filled"></i>
											<i class="fas fa-star filled"></i>
											<i class="fas fa-star filled"></i>
											<i class="fas fa-star filled"></i>
											<i class="fas fa-star"></i>
										</div>
										<div class="clinic-services">
											<span>탈모</span>
											<span>피부종양</span>
										</div>
										<div class="clini-infos">
										<ul>
											<li><i class="far fa-thumbs-up"></i> 99%</li>
											<li><i class="far fa-comment"></i> 35 개의 후기</li>
										</ul>
									</div>
									</div>
								</div>
								<div class="doc-info-right">
									
									<div class="doctor-action">
										<!--<a href="javascript:void(0)" class="btn btn-white call-btn"data-toggle="modal" data-target="#video_call">
											<i class="far fa-bookmark"></i>
										</a>
										 <a href="chat" class="btn btn-white msg-btn">
											<i class="far fa-comment-alt"></i>
										</a>
										<a href="javascript:void(0)" class="btn btn-white call-btn" data-toggle="modal" data-target="#voice_call">
											<i class="fas fa-phone"></i>
										</a>-->
										<a href="javascript:void(0)" class="btn btn-white fav-btn" >
											<i class="far fa-bookmark"></i>
										</a> 
									</div>
									<div class="clinic-booking">
										<a class="apt-btn" href="booking">예약하기</a>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- /Doctor Widget -->
					
					<!-- Doctor Details Tab -->
					<div class="card">
						<div class="card-body pt-0">
						
							<!-- Tab Menu -->
							<nav class="user-tabs mb-4">
								<ul class="nav nav-tabs nav-tabs-bottom nav-justified">
									<li class="nav-item">
										<a class="nav-link active" href="#doc_overview" data-toggle="tab">소개</a>
									</li>
									<li class="nav-item">
										<a class="nav-link" href="#doc_reviews" data-toggle="tab">후기</a>
									</li>
									<!-- <li class="nav-item">
										<a class="nav-link" href="#doc_business_hours" data-toggle="tab">진료시간</a>
									</li> -->
								</ul>
							</nav>
							<!-- /Tab Menu -->
							
							<!-- Tab Content -->
							<div class="tab-content pt-0">
							
								<!-- Overview Content -->
								<div role="tabpanel" id="doc_overview" class="tab-pane fade show active">
									<div class="row">
										<div class="col-md-12 col-lg-9">
										
											<!-- About Details -->
											<div class="widget about-widget">
												<h4 class="widget-title">About Me</h4>
												<c:choose>
										        <c:when test="${empty doctor_profile}">
										            아직 정보가 입력되지 않았습니다.
										        </c:when> 
												<c:otherwise>
												<p>내 몸같이, 내 가족같이 마음을 담아 진료합니다.</p>
												<!-- 여기 아직 jstl 처리 안함!!! -->
												</c:otherwise>
												</c:choose>
											</div>
											<!-- /About Details -->
										
											<!-- Education Details -->
											<div class="widget education-widget">
												<h4 class="widget-title">학력</h4>
												<c:choose>
										        <c:when test="${empty doctor_profile}">
										            아직 정보가 입력되지 않았습니다.
										        </c:when> 
												<c:otherwise>
												<div class="experience-box">
													<ul class="experience-list">
														<li>
															<div class="experience-user">
																<div class="before-circle"></div>
															</div>
													                
															<div class="experience-content">
																<div class="timeline-content">
																<c:forEach var="a" items="${doctor_graduation}" begin="0" varStatus="status">
																	<a href="#/" class="name">${doctor_graduation[status.index][0]}</a>
																	<div>${doctor_graduation[status.index][1]}</div>
																	<span class="time">1998 - 2003</span>
																</c:forEach>
																</div>
															</div>
														</li>
													</ul>		
												</div>
												</c:otherwise>
											</c:choose>	
											</div>
											<!-- /Education Details -->
									
											<!-- Experience Details -->
											<div class="widget experience-widget">
												<h4 class="widget-title">경력 및 활동</h4>
												 <c:choose>
											        <c:when test="${empty doctor_profile}">
											            아직 정보가 입력되지 않았습니다.
											        </c:when> 
													<c:otherwise>
												<div class="experience-box">
													<ul class="experience-list">
												          <li>
															<div class="experience-user">
																<div class="before-circle"></div>
															</div>
															<div class="experience-content">
																<div class="timeline-content">
																	<a href="#/" class="name">${doctor_profile.d_career}</a>
																	<span class="time">2010 - Present (5 years)</span>
																</div>
															</div>
														</li>												
													</ul>	
												</div>
												</c:otherwise>
												</c:choose>	
											</div>
											<!-- /Experience Details -->
								
											<!-- Services List -->
											<div class="service-list">
												<h4>진료분야</h4>
												<ul class="clearfix">
													<li>아토피 피부염</li>
													<li>백반증</li>
													<li>탈모</li>
													<li>피부종양</li>
												</ul>
											</div>
											<!-- /Services List -->

										</div>
									</div>
								</div>
								<!-- /Overview Content -->
								
								<!-- Reviews Content -->
								<div role="tabpanel" id="doc_reviews" class="tab-pane fade">
								
									<!-- Review Listing -->
									<div class="widget review-listing">
										<ul class="comments-list">
										
											<!-- Comment List -->
											<li>
												<div class="comment">
													<img class="avatar avatar-sm rounded-circle" alt="User Image" src="${pageContext.request.contextPath}/resources/img/patients/patient.jpg">
													<div class="comment-body col-lg-11">
														<div class="meta-data">
															<span class="comment-author">김**</span>
															<span class="comment-date">2일 전</span>
															<div class="review-count rating">
																<i class="fas fa-star filled"></i>
																<i class="fas fa-star filled"></i>
																<i class="fas fa-star filled"></i>
																<i class="fas fa-star filled"></i>
																<i class="fas fa-star"></i>
															</div>
														</div>
														<p class="recommended"><i class="far fa-thumbs-up"></i> 추천</p>
														<p class="comment-content">
															진료 넘 친절하세요ㅠㅠ
														</p>
														<div class="comment-reply">
															<a class="comment-btn" href="#">
																<i class="fas fa-reply"></i> Reply
															</a>
														   <p class="recommend-btn">
															<span>Recommend?</span>
															<a href="#" class="like-btn">
																<i class="far fa-thumbs-up"></i> Yes
															</a>
															<a href="#" class="dislike-btn">
																<i class="far fa-thumbs-down"></i> No
															</a>
														</p>
														</div>
													</div>
												</div>
												
												<!-- Comment Reply -->
												<!-- <ul class="comments-reply">
													<li>
														<div class="comment">
															<img class="avatar avatar-sm rounded-circle" alt="User Image" src="${pageContext.request.contextPath}/resources/img/patients/patient1.jpg">
															<div class="comment-body">
																<div class="meta-data">
																	<span class="comment-author">Charlene Reed</span>
																	<span class="comment-date">Reviewed 3 Days ago</span>
																	<div class="review-count rating">
																		<i class="fas fa-star filled"></i>
																		<i class="fas fa-star filled"></i>
																		<i class="fas fa-star filled"></i>
																		<i class="fas fa-star filled"></i>
																		<i class="fas fa-star"></i>
																	</div>
																</div>
																<p class="comment-content">
																	Lorem ipsum dolor sit amet, consectetur adipisicing elit,
																	sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
																	Ut enim ad minim veniam.
																	Curabitur non nulla sit amet nisl tempus
																</p>
																<div class="comment-reply">
																	<a class="comment-btn" href="#">
																		<i class="fas fa-reply"></i> Reply
																	</a>
																	<p class="recommend-btn">
																		<span>Recommend?</span>
																		<a href="#" class="like-btn">
																			<i class="far fa-thumbs-up"></i> Yes
																		</a>
																		<a href="#" class="dislike-btn">
																			<i class="far fa-thumbs-down"></i> No
																		</a>
																	</p>
																</div>
															</div>
														</div>
													</li>
												</ul> -->
												<!-- /Comment Reply -->
												
											</li>
											<!-- /Comment List -->
											
											<!-- Comment List -->
											<li>
												<div class="comment">
													<img class="avatar avatar-sm rounded-circle" alt="User Image" src="${pageContext.request.contextPath}/resources/img/patients/patient2.jpg">
													<div class="comment-body col-lg-11">
														<div class="meta-data">
															<span class="comment-author">박**</span>
															<span class="comment-date">4일 전</span>
															<div class="review-count rating">
																<i class="fas fa-star filled"></i>
																<i class="fas fa-star filled"></i>
																<i class="fas fa-star filled"></i>
																<i class="fas fa-star filled"></i>
																<i class="fas fa-star"></i>
															</div>
														</div>
														<p class="comment-content">
															아이엄마인데 밑에 리뷰보고 혹여나 맘 졸였네요  아이가 볼이 따갑다고는 하는데 외관상 문제가 없어서 진료보러갔어요ㅜ 원장님도 친절하시고 좋았어요  연고 처방받아왔네요~
														</p>
														<div class="comment-reply">
															<a class="comment-btn" href="#">
																<i class="fas fa-reply"></i> Reply
															</a>
															<p class="recommend-btn">
																<span>Recommend?</span>
																<a href="#" class="like-btn">
																	<i class="far fa-thumbs-up"></i> Yes
																</a>
																<a href="#" class="dislike-btn">
																	<i class="far fa-thumbs-down"></i> No
																</a>
															</p>
														</div>
													</div>
												</div>
											</li>
											<!-- /Comment List -->
											
										</ul>
										
										 <!-- Show All -->
										<!-- <div class="all-feedback text-center">
											<a href="#" class="btn btn-primary btn-sm">
												Show all feedback <strong>(167)</strong>
											</a>
										</div> -->
										<!--/Show All -->
										
									</div>
									<!-- /Review Listing -->
								
									<!-- Write Review -->
									<div class="write-review">
										<h4>후기를 남겨주세요</h4>
										
										<!-- Write Review Form -->
										<form>
											<div class="form-group">
												<div class="star-rating">
													<input id="star-5" type="radio" name="rating" value="star-5">
													<label for="star-5" title="5 stars">
														<i class="active fa fa-star"></i>
													</label>
													<input id="star-4" type="radio" name="rating" value="star-4">
													<label for="star-4" title="4 stars">
														<i class="active fa fa-star"></i>
													</label>
													<input id="star-3" type="radio" name="rating" value="star-3">
													<label for="star-3" title="3 stars">
														<i class="active fa fa-star"></i>
													</label>
													<input id="star-2" type="radio" name="rating" value="star-2">
													<label for="star-2" title="2 stars">
														<i class="active fa fa-star"></i>
													</label>
													<input id="star-1" type="radio" name="rating" value="star-1">
													<label for="star-1" title="1 star">
														<i class="active fa fa-star"></i>
													</label>
												</div>
											</div>
											<!-- <div class="form-group">
												<label>Title of your review</label>
												<input class="form-control" type="text" placeholder="If you could say it in one sentence, what would you say?">
											</div> -->
											<div class="form-group">
												<label>후기</label>
												<textarea id="review_desc" maxlength="100" class="form-control"></textarea>
											  
											  <div class="d-flex justify-content-between mt-3"><small class="text-muted"><span id="chars">100</span> characters remaining</small></div>
											</div>
											<hr>
											<div class="form-group">
												<div class="terms-accept">
													<div class="custom-checkbox">
													   <input type="checkbox" id="terms_accept">
													   <label for="terms_accept">후기를 남기시겠습니까?</label>
													</div>
												</div>
											</div>
											<div class="submit-section">
												<button type="submit" class="btn btn-primary submit-btn">등록</button>
											</div>
										</form>
										<!-- /Write Review Form -->
										
									</div>
									<!-- /Write Review -->
						
								</div>
								<!-- /Reviews Content -->
							</div>
						</div>
					</div>
					<!-- /Doctor Details Tab -->

				</div>
			</div>		
			<!-- /Page Content -->
   

		
		<!-- Voice Call Modal -->
		<div class="modal fade call-modal" id="voice_call">
			<div class="modal-dialog modal-dialog-centered" role="document">
				<div class="modal-content">
					<div class="modal-body">
						<!-- Outgoing Call -->
						<div class="call-box incoming-box">
							<div class="call-wrapper">
								<div class="call-inner">
									<div class="call-user">
										<img alt="User Image" src="${pageContext.request.contextPath}/resources/img/doctors/doctor-thumb-02.jpg" class="call-avatar">
										<h4>Dr. Darren Elder</h4>
										<span>Connecting...</span>
									</div>							
									<div class="call-items">
										<a href="javascript:void(0);" class="btn call-item call-end" data-dismiss="modal" aria-label="Close"><i class="material-icons">call_end</i></a>
										<a href="voice-call" class="btn call-item call-start"><i class="material-icons">call</i></a>
									</div>
								</div>
							</div>
						</div>
						<!-- Outgoing Call -->

					</div>
				</div>
			</div>
		</div>
		<!-- /Voice Call Modal -->
		
		<!-- Video Call Modal -->
		<div class="modal fade call-modal" id="video_call">
			<div class="modal-dialog modal-dialog-centered" role="document">
				<div class="modal-content">
					<div class="modal-body">
					
						<!-- Incoming Call -->
						<div class="call-box incoming-box">
							<div class="call-wrapper">
								<div class="call-inner">
									<div class="call-user">
										<img class="call-avatar" src="${pageContext.request.contextPath}/resources/img/doctors/doctor-thumb-02.jpg" alt="User Image">
										<h4>Dr. Darren Elder</h4>
										<span>Calling ...</span>
									</div>							
									<div class="call-items">
										<a href="javascript:void(0);" class="btn call-item call-end" data-dismiss="modal" aria-label="Close"><i class="material-icons">call_end</i></a>
										<a href="video-call" class="btn call-item call-start"><i class="material-icons">videocam</i></a>
									</div>
								</div>
							</div>
						</div>
						<!-- /Incoming Call -->
						
					</div>
				</div>
			</div>
		</div>
		<!-- Video Call Modal -->