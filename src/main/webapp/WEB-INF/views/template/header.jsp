<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <!-- Header 시작 -->
	
		<!-- 
		<nav class="nav_main">
			<ul>
				<li><a href="/s1">HOME</a></li>
				<li><a href="/s1/notice/list">Notice</a></li>
				<li><a href="/s1/qna/list">QnA</a></li>
				<li><a href="/s1/bankbook/list">Product</a></li>
			</ul>	
			
		</nav>
		<nav class="nav_sub">
			<ul>
			<c:choose>
				<c:when test="${not empty member}">
					<li><a href="/s1/member/mypage">마이페이지</a></li>
					<li><a href="/s1/member/logout">로그아웃</a></li>
				</c:when>
				
				<c:otherwise>
					<li><a href="/s1/member/login">로그인<span class="material-icons icon">login</span></a></li>
					<li><a href="/s1/member/joinCheck">회원가입<span class="material-icons icon">person_add</span></a></li>
				</c:otherwise>	
			</c:choose>
			</ul>

		</nav> -->
		<nav class="navbar navbar-expand-lg" style="background-color: #e3f2fd;">
		  <a class="navbar-brand" href="/s1">Navbar</a>
		  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
		    <span class="navbar-toggler-icon"></span>
		  </button>
		  <div class="container-fluid">
		  		<ul class="navbar-nav">
		    		<li class="nav-item active">
		        		<a class="nav-link" href="/s1">Home <span class="sr-only">(current)</span></a>
		      		</li>
			        <li class="nav-item">
			            <a class="nav-link" href="/s1/notice/list">Notice</a>
			        </li>
			        <li class="nav-item">
			            <a class="nav-link" href="/s1/qna/list">QnA</a>
			        </li>
			        <li class="nav-item">
			            <a class="nav-link" href="/s1/bankbook/list">Product</a>
			        </li>
		        </ul>
			    <ul class="nav navbar-nav navbar-right">

					<c:choose>
						<c:when test="${not empty member}">
							<li><a href="/s1/member/mypage">마이페이지</a></li>
							<li><a href="/s1/member/logout">로그아웃</a></li>
						</c:when>
						
						<c:otherwise>
							<li><a href="/s1/member/login">로그인<span class="material-icons icon">login</span></a></li>
							<li><a href="/s1/member/joinCheck">회원가입<span class="material-icons icon">person_add</span></a></li>
						</c:otherwise>	
					</c:choose>
			        
				</ul>
			</div>
		</nav>

	
	<!-- Header 끝 -->