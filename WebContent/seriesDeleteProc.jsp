<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	import="java.sql.*, org.cartoon.inha.DBCon, org.cartoon.inha.SecurityUtil" %>

<%
	request.setCharacterEncoding("utf-8");
	
	DBCon DriverManager = new DBCon();
	Connection con= null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	try {
		int series_id = Integer.parseInt(request.getParameter("series_id"));
		con = DriverManager.getConnection();
	  String query = "DELETE FROM series WHERE id=?";
	  pstmt = con.prepareStatement(query);
	  pstmt.setInt(1, series_id);
	  pstmt.executeUpdate();
	  response.sendRedirect("/12114497_Hanjung/webtoon_list.jsp");
	} catch(Exception e) {
		out.println("오류 : " + e);
	}
	
%>