<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

	
	<%@ include file="/WEB-INF/views/include/head.jsp"%>
	
	<!-- css 넣으세요 -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/3accodian.css">
	
	<%@ include file="/WEB-INF/views/include/header.jsp"%>
	
	<!-- 본문 시작 -->
	<!-- ##### Shop Grid Area Start ##### -->
    <section class="shop_grid_area section-padding-80">
        <div class="container">
            <div class="row">
                <div class="col-12 col-md-4 col-lg-3">
                    <div class="shop_sidebar_area">

                        <!-- ##### Single Widget ##### -->
                        <div class="widget catagory mb-50">
                            <!-- Widget Title -->
                            <h6 class="widget-title mb-30">Catagories</h6>

                            <!--  Catagories  -->
                            <div class="catagories-menu">
                                <!-- <ul id="menu-content2" class="menu-content collapse show">
                                    Single Item
                                    <li data-toggle="collapse" data-target="#clothing" >
                                        <a href="#">clothing</a>
                                        <ul class="sub-menu collapse show" id="smallc">
                                            <li><a href="#" onclick="smallcode(100100010); return false;">여티셔츠</a></li>
                                            <li><a href="#" onclick="smallcode(100200010); return false;">남티셔츠</a></li>
                                            
                                        </ul>
                                    </li>
                                    Single Item
                                    <li data-toggle="collapse" data-target="#shoes" class="collapsed">
                                        <a href="#">shoes</a>
                                        <ul class="sub-menu collapse" id="shoes">
                                            <li><a href="#">All</a></li>
                                        </ul>
                                    </li>
                                    Single Item
                                    <li data-toggle="collapse" data-target="#accessories" class="collapsed">
                                        <a href="#">accessories</a>
                                        <ul class="sub-menu collapse" id="accessories">
                                            <li><a href="#">All</a></li>
                                            <li><a href="#">Bodysuits</a></li>
                                        </ul>
                                    </li>
                                </ul> -->
                                    <ul class="nav__list">
								      <li>
								        <input id="group-1" type="checkbox" hidden />
								        <label for="group-1"><span class="fa fa-angle-right"></span> First level</label>
								        <ul class="group-list">
<%-- 								        	<c:set var="categories" value="${categories}"></c:set>
											<c:forEach var="i" begin="0" end="${categories.size()-1}">
												<c:choose>
												    <c:when test="">
												    
												    </c:when>
												    <c:otherwise>
												    </c:otherwise>
												</c:choose>
											</c:forEach> --%>
								          <li>
								            <input id="sub-group-1" type="checkbox" hidden />
								            <label for="sub-group-1"><span class="fa fa-angle-right"></span> Second level</label>
								            <ul class="sub-group-list">
								              <li>
								                <input id="sub-sub-group-1" type="checkbox" hidden />
								                <label for="sub-sub-group-1"><span class="fa fa-angle-right"></span> Third level</label>
								                <ul class="sub-sub-group-list">
								                  <li><a href="#">3rd level nav item</a></li>
								                  <li><a href="#">3rd level nav item</a></li>
								                  <li><a href="#">3rd level nav item</a></li>
								                </ul>
								              </li>
								            </ul>
								          </li>
								        </ul>

                            </div>
                        </div>

                        <!-- ##### Single Widget ##### -->
                        <div class="widget price mb-50">
                            <!-- Widget Title -->
                            <h6 class="widget-title mb-30">Filter by</h6>
                            <!-- Widget Title 2 -->
                            <p class="widget-title2 mb-30">Price</p>

                            <div class="widget-desc">
                                <div class="slider-range">
                                    <div data-min="49" data-max="360" data-unit="$" class="slider-range-price ui-slider ui-slider-horizontal ui-widget ui-widget-content ui-corner-all" data-value-min="49" data-value-max="360" data-label-result="Range:">
                                        <div class="ui-slider-range ui-widget-header ui-corner-all"></div>
                                        <span class="ui-slider-handle ui-state-default ui-corner-all" tabindex="0"></span>
                                        <span class="ui-slider-handle ui-state-default ui-corner-all" tabindex="0"></span>
                                    </div>
                                    <div class="range-price">Range: $49.00 - $360.00</div>
                                </div>
                            </div>
                        </div>

                        <!-- ##### Single Widget ##### -->
                        <div class="widget color mb-50">
                            <!-- Widget Title 2 -->
                            <p class="widget-title2 mb-30">Color</p>
                            <div class="widget-desc">
                                <ul class="d-flex">
                                    <li><a href="#" class="color1"></a></li>
                                    <li><a href="#" class="color2"></a></li>
                                    <li><a href="#" class="color3"></a></li>
                                    <li><a href="#" class="color4"></a></li>
                                    <li><a href="#" class="color5"></a></li>
                                    <li><a href="#" class="color6"></a></li>
                                    <li><a href="#" class="color7"></a></li>
                                    <li><a href="#" class="color8"></a></li>
                                    <li><a href="#" class="color9"></a></li>
                                    <li><a href="#" class="color10"></a></li>
                                </ul>
                            </div>
                        </div>

                        <!-- ##### Single Widget ##### -->
                        <div class="widget brands mb-50">
                            <!-- Widget Title 2 -->
                            <p class="widget-title2 mb-30">Brands</p>
                            <div class="widget-desc">
                                <ul>
                                    <li><a href="#">Asos</a></li>
                                    <li><a href="#">Mango</a></li>
                                    <li><a href="#">River Island</a></li>
                                    <li><a href="#">Topshop</a></li>
                                    <li><a href="#">Zara</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-12 col-md-8 col-lg-9">
                    <div class="shop_grid_product_area">
                        <div class="row">
                            <div class="col-12">
                                <div class="product-topbar d-flex align-items-center justify-content-between">
                                    <!-- Total Products -->
                                    <div class="total-products">
                                        <p><span>186</span> products found</p>
                                    </div>
                                    <!-- Sorting -->
                                    <div class="product-sorting d-flex">
                                        <p>Sort by:</p>

                                            <select name="selectSort" id="sortByselect">
                                                <option value="productidDesc">Newest</option>
                                                <option value="priceDesc">Price: High</option>
                                                <option value="priceAsc">Price: Row</option>
                                            </select>

                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row" id="categoriesRow">
							<c:set var="list" value="${list}"></c:set>
							<c:forEach var="i" begin="0" end="${list.size()-1}">
								<!-- Single Product -->
                            <div class="col-12 col-sm-6 col-lg-4">
                                <div class="single-product-wrapper">
                                    <!-- Product Image -->
                                    <div class="product-img">
                                        <img src="${pageContext.request.contextPath}/uploads/${list[i].photoFile}" alt="" class="imgheight">
                                        <!-- Favourite -->
                                        <div class="product-favourite">
                                            <a href="#" class="favme fa fa-heart"></a>
                                        </div>
                                    </div>

                                    <!-- Product Description -->
                                    <div class="product-description">
                                        <span>${list[i].shopid}</span>
                                        <a href="single-product-details.html">
                                            <h6>${list[i].title}</h6>
                                        </a>
                                        <p class="product-price">$${list[i].price}</p>

                                        <!-- Hover Content -->
                                        <div class="hover-content">
                                            <!-- Add to Cart -->
                                            <div class="add-to-cart-btn">
                                                <a href="${pageContext.request.contextPath}/shops/${list[i].shopid}/products/${list[i].productid}" class="btn essence-btn">상세 보기</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
							</c:forEach>


                        </div>
                    </div>

                </div>
            </div>
        </div>
    </section>
    <!-- ##### Shop Grid Area End ##### -->
	<!-- 본문 끝 -->
	
	<%@ include file="/WEB-INF/views/include/footer.jsp"%>
    
    <!-- js파일 ! -->
	<script src="${pageContext.request.contextPath}/resources/js/ajaxcategories.js"></script>
    