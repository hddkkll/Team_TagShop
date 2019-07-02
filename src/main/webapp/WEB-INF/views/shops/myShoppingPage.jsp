<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

	
	<%@ include file="/WEB-INF/views/include/head.jsp"%>
	
	<!-- css 넣으세요 -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/myshop.css">
	
	<%@ include file="/WEB-INF/views/include/header.jsp"%>
	
	<!-- 본문 시작 -->
	<!-- ##### Blog Wrapper Area Start ##### -->
    <div class="single-blog-wrapper">

        <!-- Single Blog Post Thumb -->
        <div class="single-blog-post-thumb">
            <img src="${pageContext.request.contextPath}/resources/img/bg-img/bg-8.jpg" alt="">
        </div>

        <div class="container">
            <div class="row justify-content-center">
                <div class="col-12">
                        <div class="order_status">
                                <div class="step" data-state="0">
                                    <div class="title">입금대기</div>
                                    <div class="count">
                                        0
                                    </div>
                                </div>
                                <div class="image_arrow"></div>
                                <div class="step" data-state="1">
                                    <div class="title">결제완료</div>
                                    <div class="count">
                                        0
                                    </div>
                                </div>
                                <div class="image_arrow"></div>
                                <div class="step" data-state="2">
                                    <div class="title">배송준비</div>
                                    <div class="count">
                                        0
                                    </div>
                                </div>
                                <div class="image_arrow"></div>
                                <div class="step" data-state="3">
                                    <div class="title three">배송중</div>
                                    <div class="count">
                                        0
                                    </div>
                                </div>
                                <div class="image_arrow"></div>
                                <div class="step" data-state="4">
                                    <div class="title">배송완료</div>
                                    <div class="count">
                                        0
                                    </div>
                                </div>
                                <div class="image_arrow"></div>
                                <div class="step" data-state="6">
                                    <div class="title">리뷰작성</div>
                                    <div class="count">
                                        0
                                    </div>
                                </div>
                            </div>
                </div>
                <div class="col-12 ">
                        <div class="row mt-5 mb-30">
                            <h5>주문내역</h5>
                        </div>

                        <div class="row">
                                <table class="table">
                                        <tr>
                                            <th class="ftd">날짜/주문번호</th>
                                            <th class="ftd2">품목</th>
                                            <th class="ftd">상품금액/수량</th>
                                            <th class="ftd3">주문상태</th>
                                            <th class="ftd3">확인</th></tr>
                                        <tr>
                                            <td>
                                                <h5>2019/03/14</h5>
                                                <h6>3402394723904723</h6>
                                            </td>
                                            <td>
                                                <div class="row">
                                                    <div class="col-3 colbg">
                                                            <img src="${pageContext.request.contextPath}/resources/img/sample-img/sample22.jpg" class="fullimg">
                                                    </div>
                                                    <div class="col-8">
                                                        [에어스미스] [오늘의딜] 저소음 DC 선풍기 smith 일본 BLDC모터 2종
                                                    </div>
                                                </div>
                                            </td>
                                            <td>30,000/2개</td> 
                                            <td>배송 완료</td>
                                            <td>
                                                <button class="mybtn2">교환</button>
                                                <button class="mybtn2">반품</button>
                                                <button class="mybtn2">확정</button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <h5>2019/03/14</h5>
                                                <h6>3402394723904723</h6>
                                            </td>
                                            <td>
                                                <div class="row">
                                                    <div class="col-3 colbg">
                                                        <img src="${pageContext.request.contextPath}/resources/img/sample-img/sample21.jpg" class="fullimg">
                                                    </div>
                                                    <div class="col-8">
                                                        [에어스미스] [오늘의딜] 저소음 DC 선풍기 smith 일본 BLDC모터 2종
                                                    </div>
                                                </div>
                                            </td>
                                            <td>15,000/3개</td> 
                                            <td>배송 완료</td>
                                            <td>
                                                <button class="mybtn2">교환</button>
                                                <button class="mybtn2">반품</button>
                                                <button class="mybtn2">확정</button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <h5>2019/03/14</h5>
                                                <h6>3402394723904723</h6>
                                            </td>
                                            <td>
                                                <div class="row">
                                                    <div class="col-3 colbg">
                                                        <img src="${pageContext.request.contextPath}/resources/img/sample-img/sample312.jpg" class="fullimg">
                                                    </div>
                                                    <div class="col-8">
                                                        [에어스미스] [오늘의딜] 저소음 DC 선풍기 smith 일본 BLDC모터 2종
                                                    </div>
                                                </div>
                                            </td>
                                            <td>10,000/5개</td> 
                                            <td>배송 완료</td>
                                            <td>
                                                <button class="mybtn2">교환</button>
                                                <button class="mybtn2">반품</button>
                                                <button class="mybtn2">확정</button>
                                            </td>
                                        </tr>
                                      </table> 
                                      
                            </div>
                        
                </div>
            </div>
        </div>
    </div>
    <!-- ##### Blog Wrapper Area End ##### -->
	<!-- 본문 끝 -->
	
	<%@ include file="/WEB-INF/views/include/footer.jsp"%>
    
    <!-- js파일 ! -->
    