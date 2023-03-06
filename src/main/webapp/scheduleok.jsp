<%@page import="com.test.diary.DBUtil"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	
	Connection conn = null;
	PreparedStatement stat = null;
	
	String schedule = request.getParameter("schedule");
	String id = "test";
	String date = request.getParameter("getdate");
	
	conn = DBUtil.open();
	
	String sql = "insert into tblSchedule (sNum, id, sregdate, schedule, state)"
		    + "values (seqSchedule.nextVal, ?, ?, ?, default)";
	
	stat = conn.prepareStatement(sql);
	
	stat.setString(1, id);
	stat.setString(2, date);
	stat.setString(3, schedule);
	
	int result = stat.executeUpdate();
	
	if(result==1){
		response.sendRedirect("diary.jsp");
	}else{
		out.println("<script>");
		out.println("alert('실패했습니다.');");
		out.println("history.back();");
		out.println("</script>");
	}

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Diary</title>
</head>
<body>
	<%=date %>
</body>
</html>