<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

</head>

<body>
	<!-- ##### Header Area Start ##### -->
	<header class="header_area">
		<div
			class="classy-nav-container breakpoint-off d-flex align-items-center justify-content-between">
			<!-- Classy Menu -->
			<nav class="classy-navbar" id="essenceNav">
				<!-- Logo -->
				<a class="nav-brand" href="index.html"><img
					src="${pageContext.request.contextPath}/resources/img/core-img/태그샵14.png" alt=""></a>
				<!-- Navbar Toggler -->
				<div class="classy-navbar-toggler">
					<span class="navbarToggler"><span></span><span></span><span></span></span>
				</div>
				<!-- Menu -->
				<div class="classy-menu">
					<!-- close btn -->
					<div class="classycloseIcon">
						<div class="cross-wrap">
							<span class="top"></span><span class="bottom"></span>
						</div>
					</div>
					<!-- Nav Start -->
					<div class="classynav">
						<ul>
						    <li><a href="#">Shop</a>
                                <ul class="dropdown">
                                    <li><a href="${pageContext.request.contextPath}/shops/new">Seller-Register</a></li>
                                    <li><a href="${pageContext.request.contextPath}/shops/test/products/new">Products-Register</a></li>
                                    <li><a href="${pageContext.request.contextPath}/shops/categories">Products-detail</a></li>
                                </ul>
                            </li>
 
							<li><a href="#">Pages</a>
								<ul class="dropdown">
									<li><a href="index.html">Home</a></li>
									<li><a href="${pageContext.request.contextPath}/shops/{shopid}">Shop</a></li>
									<li><a href="single-product-details.html">Product
											Details</a></li>
									<li><a href="checkout.html">Checkout</a></li>
									<li><a href="blog.html">Blog</a></li>
									<li><a href="single-blog.html">Single Blog</a></li>
									<li><a href="regular-page.html">Regular Page</a></li>
									<li><a href="contact.html">Contact</a></li>
								</ul></li>
							<li><a id="url-import" href="${pageContext.request.contextPath}/${sessionScope.userid}/feeds">Community</a></li>
							
							<li><a href="#">Temp</a>
                                <ul class="dropdown">
                                    <li><a href="${pageContext.request.contextPath}/${sessionScope.userid}/orders">주문</a></li>
                                    <li><a href="${pageContext.request.contextPath}/${sessionScope.userid}/temp">구매추가</a></li>
                                </ul>
                            </li>

							<sec:authorize access="isAnonymous()">
								<li><a href="${pageContext.request.contextPath}/users/login">Log in</a></li>
								<li><a href="${pageContext.request.contextPath}/users/signup">Sign up</a></li>
							</sec:authorize>
							<sec:authorize access="isAuthenticated()">
								<li><a href="${pageContext.request.contextPath}/users/logout">Log out</a></li>
							</sec:authorize>
							
						</ul>
					</div>
					<!-- Nav End -->
				</div>
			</nav>

			<!-- Header Meta Data -->
			<div class="header-meta d-flex clearfix justify-content-end">
				<!-- Search Area -->
				<div class="search-area">
					<form action="#" method="post">
						<input type="search" name="search" id="headerSearch"
							placeholder="검색">
						<button type="submit">
							<i class="fa fa-search" aria-hidden="true"></i>
						</button>
					</form>
				</div>
				<!-- Favourite Area -->
				<div class="favourite-area">
					<a href="#"><img src="${pageContext.request.contextPath}/resources/img/core-img/heart.svg" alt=""></a>
				</div>
				<!-- User Login Info -->
				<div class="user-login-info-open">
					<input type="checkbox" id="user-login-info-open"
						class="user-login-info-open" data-role="none"> <label
						for="user-login-info-open" class="user-login-info-open"> <img
						src="${pageContext.request.contextPath}/resources/img/core-img/lock-outline.svg">
					</label> </input>
					<!-- ##### Mypage Button Start ##### -->
					<div class="navigation-mypage-btn">
						<ul class="navigation-user-menu">
							<li><a href="#">마이홈</a></li>
							<li><a href="#">나의 쇼핑</a></li>
							<li><a href="#">판매자 신청</a></li>
							<li><a href="#">로그아웃</a></li>
						</ul>

					</div>
					<!-- ##### Mypage Button End ##### -->
				</div>
				<!-- Cart Area -->
				<div class="cart-area">
					<a href="#" id="essenceCartBtn"><img src="${pageContext.request.contextPath}/resources/img/core-img/bag.svg"
						alt=""> <span>3</span></a>
				</div>
			</div>
		</div>
	</header>
	<!-- ##### Header Area End ##### -->

	<!-- ##### Right Side Cart Area ##### -->
	<div class="cart-bg-overlay"></div>

	<div class="right-side-cart-area">

		<!-- Cart Button -->
		<div class="cart-button">
			<a href="#" id="rightSideCart"><img src="${pageContext.request.contextPath}/resources/img/core-img/bag.svg"
				alt=""> <span>3</span></a>
		</div>

		<div class="cart-content d-flex">

			<!-- Cart List Area -->
			<div class="cart-list">
				<!-- Single Cart Item -->
				<div class="single-cart-item">
					<div class="product-image"> <img
						src="${pageContext.request.contextPath}/resources/img/product-img/product-1.jpg" class="cart-thumb" alt="">
						<!-- Cart Item Desc -->
						<div class="cart-item-desc">
							<span class="product-remove"><i class="fa fa-close"
								aria-hidden="true"></i></span> <span class="badge">Mango</span>
							<a href="http://www.naver.com"><h6>Button Through Strap Mini Dress</h6></a>
							<p class="size">Size: S</p>
							<p class="color">Color: Red</p>
							<p class="price">$45.00</p>
						</div>
				</div>
				</div>

				<!-- Single Cart Item -->
				<div class="single-cart-item">
					<a href="#" class="product-image"> <img
						src="${pageContext.request.contextPath}/resources/img/product-img/product-2.jpg" class="cart-thumb" alt="">
						<!-- Cart Item Desc -->
						<div class="cart-item-desc">
							<span class="product-remove"><i class="fa fa-close"
								aria-hidden="true"></i></span> <span class="badge">Mango</span>
							<h6>Button Through Strap Mini Dress</h6>
							<p class="size">Size: S</p>
							<p class="color">Color: Red</p>
							<p class="price">$45.00</p>
						</div>
					</a>
				</div>

				<!-- Single Cart Item -->
				<div class="single-cart-item">
					<a href="#" class="product-image"> <img
						src="${pageContext.request.contextPath}/resources/img/product-img/product-3.jpg" class="cart-thumb" alt="">
						<!-- Cart Item Desc -->
						<div class="cart-item-desc">
							<span class="product-remove"><i class="fa fa-close"
								aria-hidden="true"></i></span> <span class="badge">Mango</span>
							<h6>Button Through Strap Mini Dress</h6>
							<p class="size">Size: S</p>
							<p class="color">Color: Red</p>
							<p class="price">$45.00</p>
						</div>
					</a>
				</div>

				<div class="single-cart-item">
					<a href="#" class="product-image"> <img
						src="${pageContext.request.contextPath}/resources/img/product-img/product-3.jpg" class="cart-thumb" alt="">
						<!-- Cart Item Desc -->
						<div class="cart-item-desc">
							<span class="product-remove"><i class="fa fa-close"
								aria-hidden="true"></i></span> <span class="badge">Mango</span>
							<h6>Button Through Strap Mini Dress</h6>
							<p class="size">Size: S</p>
							<p class="color">Color: Red</p>
							<p class="price">$45.00</p>
						</div>
					</a>
				</div>
			</div>

			<!-- Cart Summary -->
			<div class="cart-amount-summary">

				<h2>Summary</h2>
				<ul class="summary-table">
					<li><span>subtotal:</span> <span>$274.00</span></li>
					<li><span>delivery:</span> <span>Free</span></li>
					<li><span>discount:</span> <span>-15%</span></li>
					<li><span>total:</span> <span>$232.00</span></li>
				</ul>
				<div class="checkout-btn mt-100">
					<a href="checkout.html" class="btn essence-btn">check out</a>
				</div>
			</div>
		</div>
	</div>
	<!-- ##### Right Side Cart End ##### -->
	
