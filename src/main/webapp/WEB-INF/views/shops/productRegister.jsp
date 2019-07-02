<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>


<%@ include file="/WEB-INF/views/include/head.jsp"%>

<!-- css 넣으세요 -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/productReg.css">

<!-- include summernote css/js -->
<link
	href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote.css"
	rel="stylesheet">
<script>
    function postForm() {
        $('textarea[name="description"]').val($('#summernote').summernote('code'));
    }
    </script>
<%@ include file="/WEB-INF/views/include/header.jsp"%>

<!-- 본문 시작 -->
<!-- ##### Single Product Details Area Start ##### -->
<section class="single_product_details_area d-flex align-items-center">

	<!-- Single Product Thumb -->
	<div class="single_product_thumb clearfix">

		<img
			src="${pageContext.request.contextPath}/resources/img/product-img/product-big-3.jpg"
			alt="" id="previewImage" class="fullimg">

	</div>

	<!-- Single Product Description -->
	<div class="single_product_desc clearfix">
		<h2>물품 등록</h2>
		<!-- onsubmit="postForm()"  -->
		<form
			action="${pageContext.request.contextPath}/shops/test/products/new"
			method="post" onsubmit="postForm()" enctype="multipart/form-data">
			<div class="row">
				<div class="col-12 mb-3">
					<label for="company">제목</label> <input type="text"
						class="form-control" id="company" name="title" value="">
				</div>
				<div class="col-12 mb-3">
					<label for="company">가격</label> <input type="text"
						class="form-control" id="company" name="price" value="">
				</div>
				<div class="select-box d-flex mb-4"
					style="margin-top: 1rem !important; margin-left: 17px;">
					<select id="productSize" class="mr-3" name="smallCategoryCode">
						<option value="">카테고리</option>
						<option value="100100010">티셔츠</option>
						<option value="100200010">블라우스/셔츠</option>
						<option value="2001000010">스킨케어</option>
					</select>

				</div>
				<div class="filebox">
					<label for="ex_file">이미지</label> <input type="file" name="file"
						id="ex_file">
				</div>



				<div class="col-12 mb-3"
					style="background-color: #e2e2e2; padding-top: 15px; padding-bottom: 15px">
					<input type="text" class="form-control" id="company" value=""
						placeholder="제품 명" name="productName"> <input type="text"
						class="form-control" id="company" value="" placeholder="제품 가격"
						name="unitPrice" style="margin-top: 15px;">
					<div class="select-box d-flex mb-4"
						style="margin-top: 1rem !important;">
						<select name="optionCode" id="productSize" class="mr-3">
							<option value="S">Size: S</option>
							<option value="M">Size: M</option>
							<option value="L">Size: L</option>
							<option value="XL">Size: XL</option>
						</select> <select name="optionCode2" id="productColor">
							<option value="BLACK">Color: Black</option>
							<option value="WHITE">Color: White</option>
							<option value="BLUE">Color: BLUE</option>
							<option value="GREEN">Color: GREEN</option>
						</select>
					</div>
				</div>
			</div>
			<div class="row mb-3">
				<div class="col-9">
					<input type="text" class="form-control" id="insertTag" value="#태그">
				</div>
				<div class="col-3">
					<input type="button" value="태그 추가" class="btn essence-btn buttoncolor mybtn"
                            style="height:40px; background-color: #e2e2e2; padding:0 30px; line-height:0" id="addTag"/>
				</div>
			</div>
			<div class="row mb-3">
				<div class="col-9" >
					<div class="row" id="tagArea">
					
					</div>
					<!-- <input type="text" class="form-control" id="tagText" value="" style="border:none; font-size:0.7rem; width:15%; font-weight: bold" readonly> -->
					
				</div>
			</div>
	</div>


</section>
<!-- ##### Single Product Details Area End ##### -->
<section class="single_product_details_area d-flex align-items-center">
	<div class="col-12" align="center">
		<div class="col-11">

			<textarea name="description" style="display: none;"></textarea>

			<div id="summernote" class="mt-30"></div>

		</div>
		<div class="col-11">
			<!-- Cart -->
			<div class="col-12 mt-30 pr-0" align="right">

				<input type="submit" name="addtocart" value="등록하기"
					class="btn essence-btn buttoncolor" />

			</div>
		</div>
		</form>
		<br> <br>
	</div>

</section>
<!-- 본문 끝 -->

<%@ include file="/WEB-INF/views/include/footer.jsp"%>

<!-- js파일 ! -->
<script
	src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote.js"></script>

<script>
		
        $(function(){
        	var tagNum = 1;
          $('#summernote').summernote({
              height:200,
              minHeight:null,
              maxHeight:null,
              focus:true,
              
          });
          
          $("#ex_file").change(function(e) {
  			event.preventDefault();
  			var file = e.target.files[0];
  			var url = URL.createObjectURL(file);
  			$("#previewImage").attr("src", url);
  			});
          
          $('.note-editor').css("border", 0);
          
          $('#addTag').click(function(){
        	  var tagstr = document.getElementById("insertTag").value;
        	  
        	  
        	  if(tagNum != 4){
        		  console.log("들어옴");
            	  
            	  var tag = '<input type="text" name="tagText' + tagNum +'" class="form-control mr-3" id="tagText' + tagNum +'" value="'+ tagstr +'" style="border:none; font-size:0.7rem; width:15%; font-weight: bold" readonly>';
            	  $('#tagArea').append(tag);
            	  tagNum++;
            	  console.log(tagNum);
        	  }
        
          });
          
        });
      </script>