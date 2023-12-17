<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="sign.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body> 
<jsp:useBean id="test" class="sign.Signin" />

	<%
		String id = (String)request.getParameter("id");
		String pw = (String)request.getParameter("pw");
		String email = (String)request.getParameter("email");
		int result;
		
		Sign_user new_user = new Sign_user();
		
		new_user.setId(id);
		new_user.setPw(pw);
		new_user.setEmail(email);

		result=test.join(new_user);

		if(result > 0){
	%>
	<script>
		alert("회가완!");
		location.href = "base.jsp#login";	
	</script>
	<%		
		} else {
	%>
	<script>
		alert("회가실ㅠ");
		location.href = "../index.html";
	</script>
	<% 		
		}
	%>
</body>
</html>