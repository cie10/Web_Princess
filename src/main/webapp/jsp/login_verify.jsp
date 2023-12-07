<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<% request.setCharacterEncoding("utf-8"); %>    
<%@ page import = "sign.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="test" class="sign.Signin" />
	<%
		String id=(String)request.getParameter("id");
		String pw=(String)request.getParameter("pw");
		int result;
		
		result=test.login(id, pw);	
		
		if(result == 1 ){
			session.setAttribute("userID", id);
	%>
	<script>
		alert("로그인 성공!");
		location.href="base.jsp";
	</script> 
	<%
		}else if(result == 0){
	%>
	<script>
		alert("비밀번호가 틀렸습니다!");
		location.href="base.jsp#login";
	</script> 		
	<% 
		}else if (result == -1){
	%>
	<script>
		alert("없는 회원입니다..");
		location.href="base.jsp#login";
	</script>
	<%		
		}else {
	%>
		<script>
		alert("DB오류 ㅋㅋ");
		location.href="base.jsp#login";
		</script>	
	<%	
		}
	%>
</body>
</html>