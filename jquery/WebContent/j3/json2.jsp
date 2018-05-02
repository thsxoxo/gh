<%@page import="org.json.simple.JSONObject"%>
<%@page import="org.json.simple.JSONArray"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="application/json; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
//1단계 드라이브로더
		Class.forName("com.mysql.jdbc.Driver");		
//2단계 디비연결
String dbUrl = "jdbc:mysql://localhost:3306/jspdb";
		String dbUser = "jspid";
		String dbPass = "jsppass";
		Connection con = null;
		con=DriverManager.getConnection(dbUrl,dbUser,dbPass);
		PreparedStatement pstmt = null;
//3단계 sql 객체 생성 select * from member;
		String sql = "";
		sql="select * from member";
		pstmt = con.prepareStatement(sql);
		
//4단계 rs 실행결과 저장

		ResultSet rs=null;
		rs=pstmt.executeQuery();
//5단계 rs 데이터 있으면
	
//	자바빈 객체 생성
//	자바빈 변수 <= rs 열 데이터
		JSONArray arr = new JSONArray();
while(rs.next()){
		JSONObject jobj =new JSONObject();
		jobj.put("id", rs.getString("id"));
		jobj.put("pass", rs.getString("pass"));
		jobj.put("name", rs.getString("name"));
		
		arr.add(jobj);
	}
//	배열 한칸에 저장


//JSONObject == 자바빈
//JSONArray == List배열
//
%>
<%=arr %>











