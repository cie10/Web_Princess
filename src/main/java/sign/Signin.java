package sign;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class Signin {

	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs; 
	
	public Signin() {
		try {
			String dbURL = "jdbc:mysql://localhost:3306/webproj?serverTimezone=UTC";
			String dbID = "root";
			String dbPassword = "0000";
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public int login(String userID, String userPW) {
		String SQL = "SELECT Password FROM MEMBER WHERE ID = ?";
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, userID);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				if (rs.getString(1).equals(userPW))
					return 1; //로그인 성공
				else
					return 0; // 비밀번호 틀림
			}
			return -1; // 아이디 없음 
		}catch(Exception e) {
			e.printStackTrace();
		}
		return -2; //DB 오류 
	}
	
	public int join(Sign_user user) {
		String SQL = "INSERT INTO MEMBER VALUES(?, ?, ?)";
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, user.getId());
			pstmt.setString(2, user.getPw());
			pstmt.setString(3, user.getEmail());
			return pstmt.executeUpdate(); // 0이상 값이 return된 경우 성공 
		}catch(Exception e) {
			e.printStackTrace();	
		}
		return -1; //DB 오류 
	}
	
}
