<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<title>시리즈 리스트</title>
<!-- meta tag part -->
<jsp:include page="./view/css_default.jsp"></jsp:include>
</head>
<body>
  <%
	  Class.forName("com.mysql.jdbc.Driver");
	  String DB_URL = "jdbc:mysql://localhost:3306/webtoon?useSSL=false";
	  String DB_USER = "admin";
	  String DB_PASSWORD= "1234";
	
	  Connection con= null;
	  Statement stmt = null;
	  ResultSet rs   = null;
	
	  try {
      con = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
      stmt = con.createStatement();
      String query = "SELECT * FROM user"; 
      rs = stmt.executeQuery(query);
	  } catch(Exception e){
	  	
	  }
  %>
  <jsp:include page="./view/series_list.jsp"></jsp:include>
  <jsp:include page="./view/script_default.jsp"></jsp:include>
</body>
</html>