<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 
	
	<c:set var="profile" value="${profile }" />
	<c:set var="follower" value="${follower }" />
	<c:set var="following" value="${following }" />
	<c:set var="photo" value="${photos }" />
        <div class="user-info">
                <div class="container">
                  <div class="row">
                    <div class="col-xs-12 col-sm-3 profile-photo">
                      <div class="img-wrapper">
                        <img src="${pageContext.request.contextPath}/uploads/${profile.photoName}" alt="profileimg" />
                      </div>
                    </div>
                    <div class="col-xs-12 col-sm-9">
                      <div class="follow">
                        <p>${profile.userid }</p>
                        <button class="sqdOPaB" type="button">팔로우</button>
                        <a class="thEYr " href="${pageContext.request.contextPath}/${sessionScope.userid }/photos/edit"><button class="sqdOPaa" type="button">프로필 편집</button></a>
                        <button class="sqdOPa" type="button">업로드</button>
                      </div>
                      <div class="user-stats">
                        <div>
                          게시글 <b>${fn:length(photos) }</b>
                        </div>
                        <div>
                          팔로워 <b>${follower }</b>
                        </div>
                        <div>
                          팔로우 <b>${following }</b>
                        </div>
                      </div>
                      <div class="user-website">
                          <a href="${profile.website }" target="_blank">${profile.website }</a>
                      </div>
                      <div class="user-biography">
                         <span>${profile.introduction }</span>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
