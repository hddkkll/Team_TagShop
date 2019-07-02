<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
	<%@ include file="/WEB-INF/views/include/head.jsp"%>
	<!-- css 넣으세요 -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
    <link rel="stylesheet" href="//cdn.materialdesignicons.com/3.6.95/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/modify.css">
    
	<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			$('#signup-input_text_instaid').on("propertychange change keyup paste", function(){
				$.ajax({
					url: "check",
				    data: { userid : $('#signup-input_text_instaid').val()},
				    type: "POST",
				    success : function(data){
				    	if(data==1){
				    		$("#check_id").css("color", "#ff0000");
				    		$('#check_id').text('이미 사용중인 ID입니다');
				    	}
				    	if(data==0){
				    		$("#check_id").css("color", "#009900");
				    		$('#check_id').text('사용가능한 ID입니다');
				    	}
				    }
				})
			});
			
			$('#signup-input_text_pwd2').on("propertychange change keyup paste", function(){
				if($('#signup-input_text_pwd2').val()!=$('#signup-input_text_pwd1').val()){
					$("#check_pw").css("color", "#ff0000");
		    		$('#check_pw').text('같은 비밀번호를 입력해주세요');
				}else{
					$("#check_pw").css("color", "#009900");
		    		$('#check_pw').text('사용가능합니다');
				}
			});
		});
	</script>
    
	<%@ include file="/WEB-INF/views/include/header.jsp"%>
	
	
	
	<!-- ##### sign-in, sign-up Start #####-->
    <div class="sales_apply section-padding-80">
      <div class="container">
        <div class="row">
          <div class="signup_details mt-70 clearfix">
            <div class="signup-title">
              <span>회원 가입</span>
            </div>
            <div class="signup-icon">
              <div class="icon-btn">
                <button type="button" class="signup-icon-btn-facebook">
                  <i class="mdi mdi-facebook-box signup-icon-text icon-color-facebook"></i>
                </button>
              </div>
              <div class="icon-btn">
                <button type="button" class="signup-icon-btn-google">
                    <i class="mdi mdi-google signup-icon-text icon-color-google"></i>
                </button>
              </div>
              <div class="icon-btn">
                <button type="button" class="signup-icon-btn-instagram">
                    <i class="mdi mdi-instagram signup-icon-text icon-color-instagram"></i>
                </button>
              </div>
            </div>
            
          </div>
    
          <div class="signup_details-sub clearfix">
          	<form action="" method="POST">
          
	            <div class="signup_input_text_all">
	              <div class="signup-img">
	                <!-- <i class="mdi mdi-account signup-icon-text"></i> -->
	              </div>
	              <div class="signup-input_text">
	                <input type="text" class="form-control signup-input_text_detail" id="signup-input_text_instaid" name="userid" required
	                  placeholder="User ID">
	              </div>
	            </div>
	            
	            <div style='position:absolute'>
	              <span id='check_id' style='font-size:9px'/>
	            </div>
	            
	            <div class="signup_input_text_all">
	              <div class="signup-img">
	                <!-- <i class="mdi mdi-lock signup-icon-text"></i> -->
	              </div>
	              <div class="signup-input_text">
	                <input type="password" class="form-control signup-input_text_detail" id="signup-input_text_pwd1" name="password" required
	                  placeholder="비밀번호">
	              </div>
	            </div>
	            <div class="signup_input_text_all">
	              <div class="signup-img">
	                <!-- <i class="mdi mdi-lock signup-icon-text"></i> -->
	              </div>
	              <div class="signup-input_text">
	                <input type="password" class="form-control signup-input_text_detail" id="signup-input_text_pwd2" required
	                  placeholder="비밀번호확인">
	              </div>
	            </div>
				
				<div style='position:absolute'>
	              <span id='check_pw' style='font-size:9px'/>
	            </div>
	          
	            <div class="signup_input_text_all">
	              <div class="signup-img">
	                <!-- <i class="mdi mdi-email signup-icon-text"></i> -->
	              </div>
	              <div class="signup-input_text">
	                <input type="text" class="form-control signup-input_text_detail" id="signup-input_text_email" name="email" required
	                  placeholder="E-mail">
	              </div>
	            </div>
	            
	            <div class="signup_input_text_all">
	              <div class="signup-img">
	                <!-- <i class="mdi mdi-email signup-icon-text"></i> -->
	              </div>
	              <div class="signup-input_text">
	                <input type="text" class="form-control signup-input_text_detail" id="signup-input_text_phone" name="phone" required
	                  placeholder="Phone">
	              </div>
	            </div>
	            
	            
	            <p id="has-account">이미 아이디가 있으신가요?<a class="signup-signin-text" href="${pageContext.request.contextPath}/users/login">로그인</a></p>
	            <div class="signup-btn">
	                <button type="submit" class="btn signup-btn-detail" id="sign-up" onclick="checkall()">
	                  <div class="v-btn__content">회원가입</div>
	                </button>
	            </div>
            
            </form>
            
          </div>
        </div>
      </div>
    </div>
    <!-- ##### sign-in, sign-up End #####-->
    
    <%@ include file="/WEB-INF/views/include/footer.jsp"%>