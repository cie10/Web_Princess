<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="java.sql.*"%>
<%
	String userID = request.getParameter("ID");
	String userPassword = request.getParameter("PASSWORD");
	String userEmail = request.getParameter("EMAIL");
	
	out.print(userID);
	out.print(userPassword);
	out.print(request.getParameter("ID"));

	Connection myConn = null;
	Statement stmt = null;
	String mySQL = null;
	ResultSet myResultSet = null;

	try{
		Class.forName("com.mysql.jdbc.Driver");
		String jdbcurl = "jdbc:mysql://localhost:3306/webprincess?serverTimezone=UTC";
		myConn = DriverManager.getConnection(jdbcurl, "root", "7879");
		stmt = myConn.createStatement();

		mySQL = "INSERT INTO MEMBER (Name, Password, Email) VALUES('"+userID+"','" + userPassword + "','" + userEmail + "')";
		stmt.executeUpdate(mySQL); //데이터를 추가하는 경우이므로 executeUpdate를 사용해야 함. 
		out.println("회원가입이 완료되었습니다.");
	}
	catch(Exception e){
		out.println("DB 연동 오류입니다.: " + e.getMessage());
	}
	

	stmt.close();
	myConn.close();
%>

