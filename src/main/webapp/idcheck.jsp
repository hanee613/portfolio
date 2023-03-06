<%@page import="com.test.diary.DBUtil"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	//1. 아이디 가져오기
	//2. 디비 연결
	//3. 디비에 있는지 대조하기
	//4. 없으면 사용 있으면 사용불가
	//5. 창 닫기
	
	String id = request.getParameter("id");

 	Connection conn = null;
	PreparedStatement stat = null;
	ResultSet rs = null;
	
	conn = DBUtil.open();
	
	String sql = "select count(*) as cnt from tblSMember where id = ?";
	
	stat = conn.prepareStatement(sql);
	stat.setString(1, id);
	
	
	rs = stat.executeQuery();
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>아이디 중복 검사</h1>
	<form name="form">
	<%-- <% if (rs.next()) { %>
		<p>사용 가능한 아이디입니다.</p>
		<div class="btn-9 main_btn">사용하기</div>
	<% } else { %>
		<p>존재하는 아이디입니다.</p>
		<input type="text" id="id">
		<input type="button" class="btn-9 join_btn" onclick="idcheck();" value="중복확인"></td>
	<% } %> --%>
	</form>
	
</body>
</html>

<%
/* 	rs.close();
	stat.close();
	conn.close(); */
%>