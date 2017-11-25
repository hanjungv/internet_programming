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
		String email= request.getParameter("email");
		String password = securityUtil.encryptSHA256(request.getParameter("password"));
		int id = -1;
		String writerName = "";
		
    try {
	  	  	con = DriverManager.getConnection();
	  	  	
			String query = "SELECT id, name FROM user WHERE email=? AND password=?";
			pstmt = con.prepareStatement(query);
			pstmt.setString(1,email);
		  pstmt.setString(2,password);
			
			rs= pstmt.executeQuery();
		  while(rs.next()) {
				id = rs.getInt("id");
				writerName = rs.getString("name");
		  }
    
	    if(id != -1) {
				session.setAttribute("email", email);
				session.setAttribute("id", id);
				session.setAttribute("writerName", writerName);

				con.close();
				pstmt.close();
        response.sendRedirect("/12114497_Hanjung/index.jsp");
	    } else {
        %> <script> alert("비밀번호 혹은 이메일이 잘못되었습니다."); history.go(-1); </script> <%            
	    }
    
		} catch (Exception e) {       
		    System.out.println(e);
		}
%>

