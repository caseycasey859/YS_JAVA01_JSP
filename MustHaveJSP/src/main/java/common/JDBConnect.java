package common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import jakarta.servlet.ServletContext;

public class JDBConnect {
	public Connection con;
	public Statement stmt;
	public PreparedStatement psmt;
	public ResultSet rs;
	
	//1.기본 생성자
	public JDBConnect() {
		try {
			//JDBC 드라이버로드
			Class.forName("oracle.jdbc.OracleDriver");
			
			//DB 연결
			String url = "jdbc:oracle:thin:@localhost:1521:xe";
			String id  = "musthave";
			String pwd = "1234";
			con = DriverManager.getConnection(url, id, pwd);			
			System.out.println("DB 연결 성공(기본생성자)");				
		} catch(Exception e) {			
			e.printStackTrace();			
		}
		
	}

	//2번생성자
	public JDBConnect(String driver, String url, String id, String pwd) {

		try {
			//JDBC 드라이버로드
			Class.forName(driver);
			
			//DB 연결
			con = DriverManager.getConnection(url, id, pwd);			
			System.out.println("DB 연결 성공(기본생성자)");				
		} catch(Exception e) {			
			e.printStackTrace();			
		}
	}
	
	//3번생성자(application)

	public JDBConnect(ServletContext application) {
		try {
			String driver = application.getInitParameter("OracleDriver");
			String url    = application.getInitParameter("OracleURL");
			String id     = application.getInitParameter("OracleId");
			String pwd    = application.getInitParameter("OraclePwd");

			//JDBC 드라이버로드
			Class.forName(driver);
			con = DriverManager.getConnection(url, id, pwd);
			System.out.println("DB연결성공(application)");			
			
		} catch(Exception e) {	
			e.printStackTrace();	
			
		}
		
		
	}
	//연결 해제
	public void close() {
		try {
			if(rs != null) {rs.close();}
			if(stmt != null) {stmt.close();}
			if(psmt != null) {psmt.close();}
			if(con != null) {con.close();}
			System.out.println("JDBC 자원해제");		
		} catch(Exception e) {
			e.printStackTrace();
		}
	}

	

}