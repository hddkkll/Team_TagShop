<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
	<%@ include file="/WEB-INF/views/include/head.jsp"%>
	<!-- css 넣으세요 -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/instagram.css">
	<%-- <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/loadingbar.css"> --%>
	<script src="//code.jquery.com/jquery-3.2.1.min.js"></script>

	
	<%@ include file="/WEB-INF/views/include/header.jsp"%>
	
	<!-- 본문 시작 -->
	
	<!-- ##### Instagram Start ##### -->

<div class="top_catagory_area section-padding-80 clearfix insta-background">

	<%@ include file="/WEB-INF/views/include/photosheader.jsp" %>
	
	  <div id="instafeed" class="content">
  	<div class="photocontent">
	        
      <div class="fx7hk"><a class="_9VEo1 T-jvg" href="${pageContext.request.contextPath}/${profile.userid}/feeds"><span class="smsjF">
            <div class="coreSpriteDesktopPhotoGridActive"></div><span class="PJXu4">Feed</span>
          </span></a><a class="_9VEo1 " href="${pageContext.request.contextPath}/${profile.userid}/"><span class="smsjF">
            <div class="coreSpriteDesktopProfileIGTV"></div><span class="PJXu4">Timeline</span>
          </span></a><a class="_9VEo1 " href="${pageContext.request.contextPath}/${profile.userid}/likes"><span class="smsjF">
            <div class="coreSpriteDesktopProfileSave"></div><span class="PJXu4">Like</span>
          </span></a>
        </div>
        
        <!-- ##### Ajax Loading Bar Start ##### -->

<%-- 		<div class="save-bar">
			<div class="circle-loader">
				<div class="checkmark draw"></div>
			</div>
			<div class="saved">Saved!</div>
		</div>
	
		<script src="${pageContext.request.contextPath}/resources/js/script.js"></script> --%>
        
        <!-- ##### Ajax Loading Bar End ##### -->
        
            <!-- Content -->

        <div class="inner-content clearfix">
            
          <!-- Content Post1 -->
          <div class="post-container">
            <div class="post">
              <div class="post-summary">
                <!-- Content Post_header -->
                <div class="post-header">
                  <div class="post-account clearfix">
                    <div class="account-avatar-post">
                      <a href="#">
                        <img src="https://via.placeholder.com/30" class="account-avatar-post-style" alt="account-avatar">
                      </a>
                    </div>
                    <div class="account-detail">
                      <a href="#">
                        <h2>Pierce</h2>
                      </a>
                      <a href="#">
                        <p>Alpha Camp</p>
                      </a>
                    </div>
                  </div>
                </div>
                <!-- Content Post_header -->
    
                <!-- Content Post_image -->
                <div class="post-image">
                  <a href="">
                    <img src="https://via.placeholder.com/614x408?text=614x408.75" class="post-image-style" alt="post-image">
                  </a>
                </div>
                <!-- Content Post_image -->
    
                <!-- Content Post_interaction -->
                <div class="post-interaction">
                  <!-- Content Post_interaction_icons -->
                  <div class="feed-top">
                        <span class="fr66n"><button class="dCJp8">
                            <span class="Heart" aria-label="좋아요"></span></button></span>
                        <span class="fr66n"><button class="dCJp8">
                            <span class="Comment" aria-label="댓글 달기"></span></button></span>
                        <span class="fr66n"><button class="dCJp8">
                            <span class="Share" aria-label="게시물 공유"></span></button></span>
                        <span class="fr66nn"><button class="dCJp8">
                            <span class="Bookmark" aria-label="저장"></span></button></span>
                      </div>
                  <!-- Content Post_interaction_icons -->
    
                  <!-- Content Post_interaction_likes_display -->
                  <div class="likes-display">
                    <div class="likes-content clearfix">
                      <div class="account-avatar-likes">
                        <a href="#">
                          <img src="https://via.placeholder.com/20" class="account-avatar-likes-style" alt="account-avatar">
                        </a>
                      </div>
                      <div class="likes-user-name">
                        <a href="#">tester</a>
                        <span>님</span>
                        <a href="#">
                          외 8명
                        </a>
                        <span>이 좋아합니다</span>
                      </div>
                    </div>
                  </div>
                  <!-- Content Post_interaction_likes_display -->
    
                  <!-- Content Post_content -->
                  <div class="post-content">
                    <ul class="content-style">
                            <li class="gElp99 ">
                                    <div class="P9YgZ">
                                        <div class="C7I1f ">
                                            <div class="C4VMK">
                                                <h3 class="_6lAjh"><a class="FPmhX" title="ubd200" href="#">ubd200</a></h3>
                                                <span><span>테스트테스트테스트테스트테스트테스트테스트테스트테스트테스트테스트테스트테스트테스트테스트테스트테스트테스트</span></span>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                      <li class="respond-list">
                        <a href="#">
                          <p>댓글 5개 모두 보기</p>
                        </a>
                      </li>
                    <li class="gElp99 " role="menuitem">
                        <div class="P9YgZ">
                            <div class="C7I1f ">
                                <div class="C4VMK">
                                    <h3 class="_6lAjh"><a class="FPmhX" title="ubd200" href="#">ubd200</a></h3>
                                    <span><span>테스트테스트테스트테스트테스트테스트테스트테스트테스트테스트테스트테스트테스트테스트테스트테스트테스트테스트</span></span>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li class="gElp99 " role="menuitem">
                            <div class="P9YgZ">
                                <div class="C7I1f ">
                                    <div class="C4VMK">
                                        <h3 class="_6lAjh"><a class="FPmhX" title="ubd200" href="/ubd200/">ubd200</a></h3>
                                        <span><span>테스트테스트테스트테스트테스트테스트테스트테스트테스트테스트테스트테스트테스트테스트테스트테스트테스트테스트</span></span>
                                    </div>
                                </div>
                            </div>
                        </li>
                    </ul>
                  </div>
                  <div class="NnvRN1">
                        <a class="c-Yi7" href="/p/By9VAODAQK2/">
                          <time class="Nzb55" datetime="2019-06-21T04:23:09.000Z" title="2019년 6월 21일">2일 전
                          </time>
                        </a>
                      </div>
                      <section class="sH9wk1">
                            <div class="RxpZH">
                              <form class="X7cDz" method="POST"><textarea aria-label="댓글 달기..." placeholder="댓글 달기..." class="Ypffh1" autocomplete="off" autocorrect="off"></textarea><button class="_0mzm- sqdOP yWX7d        " disabled="" type="submit">게시</button></form>
                            </div>
                          </section>
                  <!-- Content Post_content -->
                </div>
                <!-- Content Post_interaction -->
              </div>
            </div>
            <!-- Content Post1 -->
    
            <!-- Content Post2 -->
            <div class="post">
                    <div class="post-summary">
                      <!-- Content Post_header -->
                      <div class="post-header">
                        <div class="post-account clearfix">
                          <div class="account-avatar-post">
                            <a href="#">
                              <img src="https://via.placeholder.com/30" class="account-avatar-post-style" alt="account-avatar">
                            </a>
                          </div>
                          <div class="account-detail">
                            <a href="#">
                              <h2>Pierce</h2>
                            </a>
                            <a href="#">
                              <p>Alpha Camp</p>
                            </a>
                          </div>
                        </div>
                      </div>
                      <!-- Content Post_header -->
          
                      <!-- Content Post_image -->
                      <div class="post-image">
                        <a href="">
                          <img src="https://via.placeholder.com/614x408?text=614x408.75" class="post-image-style" alt="post-image">
                        </a>
                      </div>
                      <!-- Content Post_image -->
          
                      <!-- Content Post_interaction -->
                      <div class="post-interaction">
                        <!-- Content Post_interaction_icons -->
                        <div class="feed-top">
                              <span class="fr66n"><button class="dCJp8">
                                  <span class="Heart" aria-label="좋아요"></span></button></span>
                              <span class="fr66n"><button class="dCJp8">
                                  <span class="Comment" aria-label="댓글 달기"></span></button></span>
                              <span class="fr66n"><button class="dCJp8">
                                  <span class="Share" aria-label="게시물 공유"></span></button></span>
                              <span class="fr66nn"><button class="dCJp8">
                                  <span class="Bookmark" aria-label="저장"></span></button></span>
                            </div>
                        <!-- Content Post_interaction_icons -->
          
                        <!-- Content Post_interaction_likes_display -->
                        <div class="likes-display">
                          <div class="likes-content clearfix">
                            <div class="account-avatar-likes">
                              <a href="#">
                                <img src="https://via.placeholder.com/20" class="account-avatar-likes-style" alt="account-avatar">
                              </a>
                            </div>
                            <div class="likes-user-name">
                              <a href="#">tester</a>
                              <span>님</span>
                              <a href="#">
                                외 8명
                              </a>
                              <span>이 좋아합니다</span>
                            </div>
                          </div>
                        </div>
                        <!-- Content Post_interaction_likes_display -->
          
                        <!-- Content Post_content -->
                        <div class="post-content">
                          <ul class="content-style">
                                  <li class="gElp99 ">
                                          <div class="P9YgZ">
                                              <div class="C7I1f ">
                                                  <div class="C4VMK">
                                                      <h3 class="_6lAjh"><a class="FPmhX" title="ubd200" href="#">ubd200</a></h3>
                                                      <span><span>테스트테스트테스트테스트테스트테스트테스트테스트테스트테스트테스트테스트테스트테스트테스트테스트테스트테스트</span></span>
                                                  </div>
                                              </div>
                                          </div>
                                      </li>
                            <li class="respond-list">
                              <a href="#">
                                <p>댓글 5개 모두 보기</p>
                              </a>
                            </li>
                          <li class="gElp99 " role="menuitem">
                              <div class="P9YgZ">
                                  <div class="C7I1f ">
                                      <div class="C4VMK">
                                          <h3 class="_6lAjh"><a class="FPmhX" title="ubd200" href="#">ubd200</a></h3>
                                          <span><span>테스트테스트테스트테스트테스트테스트테스트테스트테스트테스트테스트테스트테스트테스트테스트테스트테스트테스트</span></span>
                                      </div>
                                  </div>
                              </div>
                          </li>
                          <li class="gElp99 " role="menuitem">
                                  <div class="P9YgZ">
                                      <div class="C7I1f ">
                                          <div class="C4VMK">
                                              <h3 class="_6lAjh"><a class="FPmhX" title="ubd200" href="/ubd200/">ubd200</a></h3>
                                              <span><span>테스트테스트테스트테스트테스트테스트테스트테스트테스트테스트테스트테스트테스트테스트테스트테스트테스트테스트</span></span>
                                          </div>
                                      </div>
                                  </div>
                              </li>
                          </ul>
                        </div>
                        <div class="NnvRN1">
                              <a class="c-Yi7" href="/p/By9VAODAQK2/">
                                <time class="Nzb55" datetime="2019-06-21T04:23:09.000Z" title="2019년 6월 21일">2일 전
                                </time>
                              </a>
                            </div>
                            <section class="sH9wk1">
                                  <div class="RxpZH">
                                    <form class="X7cDz" method="POST"><textarea aria-label="댓글 달기..." placeholder="댓글 달기..." class="Ypffh1" autocomplete="off" autocorrect="off"></textarea><button class="_0mzm- sqdOP yWX7d        " disabled="" type="submit">게시</button></form>
                                  </div>
                                </section>
                        <!-- Content Post_content -->
                      </div>
                      <!-- Content Post_interaction -->
                    </div>
                  </div>
                  </div>
    
          <!-- Content Post2 -->
    
          <!-- Content Sidebar -->
          <div class="sidebar">
            <!-- sidebar-account -->
            <div class="sidebar-account">
              <div class="user-account clearfix">
                <div class="account-avatar-mainuser">
                  <a href="#">
                    <img src="https://via.placeholder.com/50" class="account-avatar-mainuser-style" alt="account-avatar">
                  </a>
                </div>
                <div class="user-account-info">
                  <a href="#">
                    <h2>admin</h2>
                  </a>
                  <a href="#">
                    <p>pierceshih</p>
                  </a>
                </div>
              </div>
            </div>
            <!-- sidebar-account -->
    
            <!-- sidebar-stories -->
            <div class="sidebar-stories">
              <header class="stories clearfix">
                <p>회원님을 위한 추천</p>
                <a href="">
                  <h3>모두 보기</h3>
                </a>
              </header>
              <div class="stories-container">
                <div class="user-account clearfix">
                  <div class="account-avatar-otherusers">
                    <a href="#">
                      <img src="https://via.placeholder.com/34" class="account-avatar-otherusers-style" alt="account-avatar">
                    </a>
                  </div>
                  <div class="user-account-info">
                    <a href="#">
                      <h2>Kevin001</h2>
                      <p>test</p>
                    </a>
                  </div>
                </div>
                <div class="user-account clearfix">
                  <div class="account-avatar-otherusers">
                    <a href="#">
                      <img src="https://via.placeholder.com/34" class="account-avatar-otherusers-style" alt="account-avatar">
                    </a>
                  </div>
                  <div class="user-account-info">
                    <a href="#">
                      <h2>Kevin002</h2>
                      <p>test</p>
                    </a>
                  </div>
                </div>
                <div class="user-account clearfix">
                  <div class="account-avatar-otherusers">
                    <a href="#">
                      <img src="https://via.placeholder.com/34" class="account-avatar-otherusers-style" alt="account-avatar">
                    </a>
                  </div>
                  <div class="user-account-info">
                    <a href="#">
                      <h2>Kevin003</h2>
                      <p>test</p>
                    </a>
                  </div>
                </div>
                <div class="user-account clearfix">
                  <div class="account-avatar-otherusers">
                    <a href="#">
                      <img src="https://via.placeholder.com/34" class="account-avatar-otherusers-style" alt="account-avatar">
                    </a>
                  </div>
                  <div class="user-account-info">
                    <a href="#">
                      <h2>Kevin004</h2>
                      <p>test</p>
                    </a>
                  </div>
                </div>
                <div class="user-account clearfix">
                  <div class="account-avatar-otherusers">
                    <a href="#">
                      <img src="https://via.placeholder.com/34" class="account-avatar-otherusers-style" alt="account-avatar">
                    </a>
                  </div>
                  <div class="user-account-info">
                    <a href="#">
                      <h2>Kevin005</h2>
                      <p>test</p>
                    </a>
                  </div>
                </div>
                <div class="user-account clearfix">
                  <div class="account-avatar-otherusers">
                    <a href="#">
                      <img src="https://via.placeholder.com/34" class="account-avatar-otherusers-style" alt="account-avatar">
                    </a>
                  </div>
                  <div class="user-account-info">
                    <a href="#">
                      <h2>Kevin006</h2>
                      <p>test</p>
                    </a>
                  </div>
                </div>
              </div>
            </div>
            <!-- sidebar-stories -->
    
            <!-- sidebar-reference -->
            <div class="sidebar-reference">
              <header class="stories clearfix">
                <p>test</p>
                <a href="">
                  <h3>test</h3>
                </a>
              </header>
              <div class="user-account clearfix">
                <div class="account-avatar-otherusers">
                  <a href="#">
                    <img src="https://via.placeholder.com/34" class="account-avatar-otherusers-style" alt="account-avatar">
                  </a>
                </div>
                <div class="user-account-info">
                  <div>
                    <a href="#">
                      <h2>Josh001</h2>
                      <p> test</p>
                    </a>
                  </div>
                </div>
                <div class="follow"><a href="#">test</a></div>
              </div>
    
              <div class="user-account clearfix">
                <div class="account-avatar-otherusers">
                  <a href="#">
                    <img src="https://via.placeholder.com/34" class="account-avatar-otherusers-style" alt="account-avatar">
                  </a>
                </div>
                <div class="user-account-info">
                  <div>
                    <a href="#">
                      <h2>Josh002</h2>
                      <p> test</p>
                    </a>
                  </div>
                </div>
                <div class="follow"><a href="#">test</a></div>
              </div>
    
              <div class="user-account clearfix">
                <div class="account-avatar-otherusers">
                  <a href="#">
                    <img src="https://via.placeholder.com/34" class="account-avatar-otherusers-style" alt="account-avatar">
                  </a>
                </div>
                <div class="user-account-info">
                  <div>
                    <a href="#">
                      <h2>Josh003</h2>
                      <p> test</p>
                    </a>
                  </div>
                </div>
                <div class="follow"><a href="#">test</a></div>
              </div>
    
            </div>
            <!-- sidebar-reference -->
    
            <!-- sidebar-offical -->
            <div class="sidebar-offical">
              <nav class="sidebar-offical-info clearfix">
                <ul>
                  <li><a href="#">test</a></li>
                  <li><a href="#">test</a></li>
                  <li><a href="#">test</a></li>
                  <li><a href="#">test</a></li>
                  <li><a href="#">test</a></li>
                  <li><a href="#">test</a></li>
                  <li><a href="#">test</a></li>
                  <li><a href="#">test</a></li>
                  <li><a href="#">test</a></li>
                  <li><a href="#">test</a></li>
                  <li><a href="#">test</a></li>
                </ul>
              </nav>
              <span>&copy 2019 INSTAGRAM</span>
            </div>
            <!-- sidebar-offical -->
          </div>
          <!-- Content Sidebar -->
        </div>
      </div>
      <!-- Content -->
      </div>
        </div>

      


    <!-- ##### Instagram End ##### -->

	<!-- js파일 ! -->
	<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.0/jquery.min.js'></script>
    <script src='https://tympanus.net/Development/ButtonComponentMorph/js/classie.js'></script>
    <script src='https://tympanus.net/Development/ButtonComponentMorph/js/modernizr.custom.js'></script>
    <script src="${pageContext.request.contextPath}/resources/js/instagram.js"></script>

    

    
    	<!-- 본문 끝 -->

	<%@ include file="/WEB-INF/views/include/footer.jsp"%>