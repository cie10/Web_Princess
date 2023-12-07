<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="ko">
<head></head>
<body>
    <%
    String session_id = (String)session.getAttribute("userID"); 
	String log;
	
	if(session_id==null){
		log="Login/Sign in";
	} else {
		log="Log Out";
	}
    %>  
      
    <!-- Header -->
    <header class="header">
        <div class="header__logo">
            <i class="fa-solid fa-star" style="color: #06ebef;" ></i>
            <!-- <img class="header__logo__img" src="images/star-solid.svg" alt="logo"> -->
            <!-- 홈으로 이동하기 위해 a태그 사용 -->
            <h1 class="header__logo_title"><a href="#">picSTAR</a></h1>
        </div>
        <!-- 단순 스타일링 목적으로 div 사용 -->
        <nav class="header__nav">
            <ul class="header__menu">
                <li><a class="header__menu__item" href="#home">Home</a></li>
                <li><a class="header__menu__item" href="#about">About</a></li>
                <li><a class="header__menu__item" href="#goods">STAR's 굿즈제작</a></li> 
                <li><a class="header__menu__item" href="logout.jsp"><%=log %></a></li>
                <li><a class="header__menu__item" href="#mypage">Mypage</a></li>
            </ul>
        </nav>
        <button class ="header__toggle" aria-label="navigation menu toggle ">
            <i class="fa-solid fa-bars"></i>
        </button>
    </header>