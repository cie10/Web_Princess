<!--  로그인 후 보이는 뷰 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html lang="ko">
<head>
<head><jsp:include page="head.jsp"></jsp:include></head>
</head>
<body>
	<jsp:include page="top.jsp"/>
	<jsp:include page="part1.jsp"/>
	<jsp:include page="part2.jsp"/>
</body>
</html>
