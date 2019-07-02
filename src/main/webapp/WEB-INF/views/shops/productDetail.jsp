<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ include file="/WEB-INF/views/include/head.jsp"%>

<!-- css 넣으세요 -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/productDetail.css">

<%@ include file="/WEB-INF/views/include/header.jsp"%>

<!-- 본문 시작 -->
<!-- ##### Single Product Details Area Start ##### -->
<section class="single_product_details_area d-flex align-items-center">

	<!-- Single Product Thumb -->
	<div class="single_product_thumb clearfix mt86" >

			<img
				src="${pageContext.request.contextPath}/uploads/${vo.photoFile}"
				alt="" class="wh100">

	</div>
	<!-- Single Product Description -->
	<div class="single_product_desc clearfix">
		<span>${vo.shopid}</span>
		<h2>${vo.productName}</h2>
		
		<p class="product-price">$${vo.unitPrice}</p>
		<!-- Form -->
		<form action="${pageContext.request.contextPath}/${sessionScope.userid}/baskets/${vo.productItemid}" class="cart-form clearfix" method="post">
		<!--  -->
		<!-- Select Box -->
		<div class="select-box d-flex mt-30 mb-30">
			<select name="select" id="productSize" class="mr-3">
				<c:set var="list" value="${vo.options}"></c:set>
				<c:forEach var="i" begin="0" end="${list.size()-1}">
					<c:if test="${list[i].optionType eq 'SIZE'}">
						<option value="${list[i].optionCode}">Size:
							${list[i].optionCode}</option>
					</c:if>
				</c:forEach>
			</select>
		</div>
		<div class="select-box d-flex mt-30 mb-30">
			<select name="select" id="productSize" class="mr-3">
				<c:forEach var="i" begin="0" end="${list.size()-1}">
					<c:if test="${list[i].optionType eq 'COLOR'}">
						<option value="${list[i].optionCode}">Size:
							${list[i].optionCode}</option>
					</c:if>
				</c:forEach>
			</select>
		</div>
		<div class="cart-page-heading">
			<h5>Your Order</h5>
			<p>The Details</p>
			<div id="goods_list">
					<table align='' cellspacing='0' cellpadding='0'>
						<tr>
							<td>&nbsp;&nbsp;&nbsp;</td>
							<td>
								<div class="col-10 pzero">
									<div class="row">
										<div class="col-6 pzero">
											<input type="text" class="form-control" name="quantity"
												value="1">
										</div>
										<div class="pzero w40p">
											<input type="button" class="form-control plusbtnback"
												id="company">
										</div>
										<div class="pzero w40p" style="color: white">
											<input type="button" class="form-control minusbtnback"
												id="company">
										</div>

									</div>
								</div>
							</td>
						</tr>
					</table>
			</div>
		</div>
		<!-- Cart & Favourite Box -->
		<br>
			<input type="hidden" class="form-control" name="unitPrice" value="${vo.unitPrice}">
		<div class="cart-fav-box d-flex align-items-center">
			<!-- Cart -->
			<button type="submit" name="addtocart" value="5"
				class="btn essence-btn mr-30 buttoncolor">장바구니</button>
		</div>
		</form>
	</div>
</section>
<!-- ##### Single Product Details Area End ##### -->
<section class="single_product_details_area d-flex">
	<div class="col-7 textcenter" id="fixed1">
		<div class="col-12 mb1px">
			<h5 style="margin-top: 12px;">상품정보</h5>
		</div>
	</div>



	<div class="col-7">
		<img
			src="${pageContext.request.contextPath}/resources/img/sample-img/sample1.jpg"
			alt=""> <img
			src="${pageContext.request.contextPath}/resources/img/sample-img/sample2.jpg"
			alt="">
	</div>
	<div class="col-4" id="fixed2">
		<div class="order-details-confirmation">

			<div class="cart-page-heading">
				<h5>Your Order</h5>
				<p>OPTION</p>
			</div>


			<div id="accordion" role="tablist" class="mb-4">
				<div class="card">
					<div class="card-header" role="tab" id="headingTwo">

						<div class="select-box d-flex">
							<select name="select" id="productSize" class="mr-3">
								<c:forEach var="i" begin="0" end="${list.size()-1}">
									<c:if test="${list[i].optionType eq 'COLOR'}">
										<option value="${list[i].optionCode}">Size:
											${list[i].optionCode}</option>
									</c:if>
								</c:forEach>
							</select>
						</div>
					</div>
				</div>
				<div class="card">
					<div class="card-header" role="tab" id="headingTwo">

						<div class="select-box d-flex">
							<select name="select" id="productSize" class="mr-3">
								<c:set var="list" value="${vo.options}"></c:set>
								<c:forEach var="i" begin="0" end="${list.size()-1}">
									<c:if test="${list[i].optionType eq 'SIZE'}">
										<option value="${list[i].optionCode}">Size:
											${list[i].optionCode}</option>
									</c:if>
								</c:forEach>
							</select>
						</div>
					</div>
				</div>

				<ul class="order-details-form mb-4">
					<li><span>Product</span> <span>${vo.productName}</span></li>
					<li><span>Shipping</span> <span>2500</span></li>
					<li><span>Total</span> <span>${vo.unitPrice}</span></li>
				</ul>

				<p></p>

				<a href="#" class="btn essence-btn">Place Order</a>
			</div>
		</div>
</section>
<!-- ##### Footer Area Start ##### -->
<!-- 본문 끝 -->

<%@ include file="/WEB-INF/views/include/footer.jsp"%>

<!-- js파일 ! -->
<script>
	$(document).ready(function() {

		$(window).scroll(function() {
			var height = $(document).scrollTop(); //실시간으로 스크롤의 높이를 측정
			if (height > 720) {
				$('#fixed1').addClass('fixed1');
				$('#fixed2').addClass('fixed2');
			} else {
				$('#fixed1').removeClass('fixed1');
				$('#fixed2').removeClass('fixed2');
			}
		});
	});
</script>