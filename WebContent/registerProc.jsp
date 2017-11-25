<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" 
import="java.sql.*, org.cartoon.inha.DBCon, org.cartoon.inha.SecurityUtil" %>
<%
	if(session.getAttribute("email") != null){
    response.sendRedirect("/12114497_Hanjung/index.jsp");
	}
%>
<%

	request.setCharacterEncoding("utf-8");

	DBCon DriverManager = new DBCon();
	SecurityUtil securityUtil = new SecurityUtil();
	Connection con= null;
	PreparedStatement pstmt = null;
	ResultSet rs   = null;

	String email = request.getParameter("email");
	String password = securityUtil.encryptSHA256(request.getParameter("password"));
	String name = request.getParameter("name");
	
	try {
	  con = DriverManager.getConnection();
	  
	  String query = "select * from user where email=?";
	  pstmt = con.prepareStatement(query);
	  pstmt.setString(1,email);
	  rs = pstmt.executeQuery();
	  rs.last();      
    int rowCount = rs.getRow();
    rs.beforeFirst();
		if(rowCount==0){
			query = "INSERT INTO user(email, password, name, is_writer) VALUES(?,?,?)";
		  
		  pstmt = con.prepareStatement(query);
		  pstmt.setString(1,email);
		  pstmt.setString(2,password);
		  pstmt.setString(3,name);
		  
		  pstmt.executeUpdate();
		  
		  pstmt.close();
		  con.close();
		  
		  response.sendRedirect("/12114497_Hanjung/login.jsp");
		} else {
			%> <script> alert("ID가 중복됩니다!"); history.go(-1); </script> <% 
		}
	  
	  
	} catch(Exception e){
		System.out.println(e);
	}
%>