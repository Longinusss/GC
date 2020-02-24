<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
	
<html>
	<head>
		<meta charset="utf-8">
		<meta http-equiv="x-ua-compatible" content="ie=edge">
		<meta name="author" content="smartit-source">
		<meta name="description" content="">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">	
		<!-- title here -->
		<title>Xfars - 让无处安放的垃圾回家</title>		
        <!-- Favicon and Touch Icons -->
        <link rel="shortcut icon" href="/img/fav.png">
		<!-- Place favicon.ico in the root directory -->
		<link rel="apple-touch-icon" href="apple-touch-icon.png">
		<!-- Fonts -->
		<link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900" rel="stylesheet">
		<link rel="stylesheet" href="/css/font-awesome.min.css">
		<link rel="stylesheet" href="/css/flaticon.css">
		<!-- Plugin CSS -->
		<link rel="stylesheet" href="/css/bootstrap.min.css">
		<link rel="stylesheet" href="/css/animate.css">
		<link rel="stylesheet" href="/css/magnific-popup.css">
		<link rel="stylesheet" href="/css/owl.carousel.css">
		<link rel="stylesheet" href="/css/owl.theme.css">
		<link rel="stylesheet" href="/css/owl.transitions.css">
		<link rel="stylesheet" href="/css/jquery.barfiller.css">
		<!--Theme custom css -->
		<link rel="stylesheet" href="/css/style.css">
		<!--Theme Responsive css-->
		<link rel="stylesheet" href="/css/responsive.css" />
		<script src="/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
	</head>

	<body>
		<!-- header area start here -->
		<header class="header-area header-one" id="sticky">
			<div class="container">
				<div class="row">
					<div class="col-md-2 col-xs-6">
						<div class="log-area">
							<a href="/index.jsp"><img src="/img/logo.png" alt=""></a>
						</div>
					</div>
					
					<div class="col-md-9">
						<div class="menu-area">
							<nav>
								<ul>
									<li><a href="/index.jsp">主页  <span class="fa fa-angle-down"></span></a>
								
									</li>
									<li><a href="/trash/findbyType.do">图鉴</a></li>
									<li><a href="/community">论坛</a></li>
								</ul>
							</nav>
						</div>
					</div>
					
					<div class="col-md-1 col-xs-6">
						<div class="humbargar-area">
							<div class="menu-icon text-right">
								<span class="flaticon-menu humbargar"></span>
							</div>
							<div class="close-area">
								<span class="close"></span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</header>
		<!-- header area start here -->
		<!-- menu area start here -->
		<div class="sidebar-menu ">
			<div class="close-area">
				<span class="close"><i class="icon fa fa-times-circle"></i></span>
			</div>
			<div class="main-menu">
				<nav>
					<ul>
<%--						<li class="active sub-menu"><a href="index.html">home  <span class="fa fa-angle-down"></span></a>
							<ul class="sub-menu-item">
								<li><a href="index.html">home one</a></li>
								<li><a href="index2.html">home two</a></li>
								<li><a href="index3.html">home three</a></li>							
							</ul>
						</li>--%>
						<li><a href="/index.jsp">主页</a></li>
						<li><a href="/trash/findbyType.do">图鉴</a></li>
						<li><a href="/community">论坛</a></li>
						<li><a href="/pages/faq.jsp">FAQ</a></li>
					</ul>
				</nav>
			</div>
		</div>
		<!-- menu area start here -->
		
		<!-- banner area start here -->
		<div class="banner-area">
			<div class="container">
				<div class="row">
					<div class="col-md-6">
						<div class="banner-content">
							<div class="banner-title">
								<h1>指引无处安放的垃圾找到回家的路</h1>
							</div>
							<div class="banner-subtitle">
								<h4>  垃圾分类&管理</h4>
							</div>
							<div class="social-media">
								<ul>
									<li><a href="#"><i class="fa fa-facebook"></i></a></li>
									<li><a href="#"><i class="fa fa-twitter"></i></a></li>
									<li><a href="#"><i class="fa fa-skype"></i></a></li>
									<li><a href="#"><i class="fa fa-dribbble"></i></a></li>
									<li><a href="#"><i class="fa fa-behance"></i></a></li>									
								</ul>
							</div>
						</div>
					</div>
					<div class="col-md-6">
						<div class="banner-img">
							<img src="/img/banner/3.png" alt="banner">
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- banner area start here -->
		
		<!-- secendary menu area start here -->
		<div class="secendary-menu-area">
			<div class="container">
				<div class="row">
					<div class="col-sm-12">
						<div class="secendary-menu">
							<nav>
								<ul>
									<li id="list1" class="<c:if test="${ttype eq 1 }">active</c:if>"><a href="/trash/findbyType.do?type=1"> <img src="/img/banner/t_1.png" alt=""><span></span> 湿垃圾 </a></li>
									<li id="list2" class="<c:if test="${ttype eq 2 }">active</c:if>"><a href="/trash/findbyType.do?type=2"> <img src="/img/banner/t_2.png" alt=""><span class=></span> 干垃圾 </a></li>
									<li id="list3" class="<c:if test="${ttype eq 3 }">active</c:if>"><a href="/trash/findbyType.do?type=3"> <img src="/img/banner/t_3.png" alt=""><span class=></span>  可回收物  </a></li>
									<li id="list4" class="<c:if test="${ttype eq 4 }">active</c:if>"><a href="/trash/findbyType.do?type=4"> <img src="/img/banner/t_4.png" alt=""><span class=></span> 有害垃圾  </a></li>
			
								</ul>
							</nav>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- secendary menu area start here -->	
		
		
		<!-- post area start here	 -->
		<div class="post-area">
			<div class="container">
				<div class="row">
					<div class="col-lg-10 col-lg-offset-1 col-md-12">
						<c:forEach var="trash" items="${pageInfo.list}">
							<div class="trash+${trash.id}">
								<div class="single-post">
									<div class="inner-post">
										<div class="post-img">
											<a href="#"><img src="/img/trash/${trash.imagesrc}" alt="blog"></a>
										</div>
										<div class="post-info">
											<div class="post-title">
												<h3><a href="#">${trash.trashName}</a></h3>
											</div>
											<div class="post-content">
												<p>${trash.desc}</p>
											</div>

											<div class="blog-meta fix" >

											</div>

										</div>
									</div>
									<div class="post-date one">
										<span>${trash.id}</span>
									</div>
								</div>
							</div>
						</c:forEach>
					</div>
					<div class="col-lg-10 col-lg-offset-1 col-md-12">
						<div class="pagination-area">
							<div class="pagination">
								<ul>
									<li class="prev"><a href="/trash/findbyType.do?page=${pageInfo.pageNum-1}&size=5&type=${ttype}">PRev</a></li>
									<c:forEach begin="1" end="${pageInfo.pages}" var="pageNumber">
										<li class="page"><a href="/trash/findbyType.do?page=${pageNumber}&size=5&type=${ttype}">${pageNumber}</a></li>
									</c:forEach>
									<li class="next pull-right"><a href="/trash/findbyType.do?page=${pageInfo.pageNum+1}&size=5&type=${ttype}">Next</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- post area end here	 -->
			
		<!-- footer area start here -->
        <footer class="footer-area">
            <div class="footer-top">
                <div class="container">
                    <div class="row">
                        <div class="col-md-4">
                            <div class="footer-widget widget-text">
                                <div class="footer-logo">
                                    <h2><a href="#">T-Home </a></h2>
                                </div>
                                <div class="widget-content">
                                    <p>Lorem Ipsum is simply dummy
                                        text of the printing and typesetting
                                        industry. Lorem Ipsum has been
                                        the industry's standard dummy
                                        text ever since the 1500s, when an
                                        unknown printer took a galley of
                                        type and scrambled it to make a
                                        type specimen book. It has survive
                                        not only five centuries, but also the
                                        leap into electronic typesetting, </p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="footer-widget widget-nave">
                                <div class="widget-title">
                                    <h3>Quick Link</h3>
                                </div>
                                <div class="widget-nave-list">
                                    <ul>

										<li><a href="/index.jsp">主页</a></li>
										<li><a href="/trash/findbyType.do">图鉴</a></li>
										<li><a href="/community">论坛</a></li>
										<li><a href="/pages/faq.jsp">FAQ</a></li>


                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="footer-widget widget-recent-post">
                                <div class="widget-title">
                                    <h3>Recent Post</h3>
                                </div>
                                <div class="recent-post-list">
                                    <div class="single-post">
                                        <p><a href="#">We denounce with righteou
                                            indignation and dislike</a></p>
                                    </div>
                                    <div class="single-post">
                                        <p><a href="#">We denounce with righteou
                                            indignation and dislike</a></p>
                                    </div>
                                    <div class="single-post last">
                                        <p><a href="#">We denounce with righteou
                                            indignation and dislike</a></p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="footer-widget widget-Subscribe">
                                <div class="widget-title">
                                    <h3>Subscribe Us</h3>
                                </div>
                                <div class="widget-Subscribe-form">
                                    <form action="#">
                                        <div class="from-grupe">
                                            <input type="email" name="email" placeholder="Enter your email" id="email">
                                            <button type="submit" class="submit-btn">Submit</button>
                                        </div>
                                    </form>
                                </div>
                                <div class="widget-content">
                                    <p>Blinded by desire, that they can
                                        foresee the pain and trouble that
                                        are bound to ensue</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="footer-bottom">
                <div class="container">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="copyright-area">
                                <p>&copy; 2019.“垃圾回家”项目组保留所有解释权</p>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="footer-right text-right">
                                <p>Design By <a href="#">Createuiux</a></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
		<!-- footer area end here -->	
		<!-- js file start -->
		
		<script src="/js/vendor/jquery-1.12.0.min.js"></script>
		<script src="/js/plugins.js"></script>
		<script src="/js/Popper.js"></script>
		<script src="/js/bootstrap.min2.js"></script>
		<script src="/js/jquery.magnific-popup.min.js"></script>
		<script src="/js/owl.carousel.min.js"></script>
		<script src="/js/isotope.pkgd.min.js"></script>
		<script src="/js/imagesloaded.pkgd.min.js"></script>
		<script src="/js/scrollup.js"></script>
		<script src="/js/jquery.counterup.min.js"></script>
		<script src="/js/waypoints.min.js"></script>
		<script src="/js/jquery.appear.js"></script>
		<script src="/js/jquery.barfiller.js"></script>
		<script src="/js/main.js"></script>
		
		<!-- End js file -->
	</body>
</html>