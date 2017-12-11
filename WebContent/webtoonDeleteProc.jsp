<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" errorPage="./view/error.jsp"
	import="java.sql.*, org.cartoon.inha.DBCon" 
	import="com.oreilly.servlet.*, com.oreilly.servlet.multipart.*"
	import="java.util.*, java.io.*"  
%>

<%
	request.setCharacterEncoding("utf-8");
	
	DBCon DriverManager = new DBCon();
	Connection con= null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	try {
		int cartoon_id = Integer.parseInt(request.getParameter("webtoon_id"));
		con = DriverManager.getConnection();
		
		String thumbName="";
		String cartoonName="";
		String query = "SELECT * FROM series WHERE cartoon_id=?";
		pstmt = con.prepareStatement(query);
		pstmt.setInt(1, cartoon_id);
		rs = pstmt.executeQuery();
		
		ServletContext context = getServletContext();
		String realFolder = context.getRealPath("upload");
		
		// 시리즈들 해당되는 이미지 전부 삭제
		while(rs.next()){
			thumbName = rs.getString("thumb_img");
			cartoonName = rs.getString("cartoon_img");
			
			File file = new File(realFolder + "/" + thumbName);
			//File file = new File(realFolder + "\\" + thumbName); // windows
			file.delete();
			File file2 = new File(realFolder + "/" + cartoonName);
			//File file2 = new File(realFolder + "\\" + cartoonName); // windows
			file2.delete();
		}
		
		query = "SELECT * FROM cartoon WHERE id=?";
		pstmt = con.prepareStatement(query);
		pstmt.setInt(1, cartoon_id);
	  
	  rs = pstmt.executeQuery(); 
	  while(rs.next()){
	  		String representName = rs.getString("represent_img");
			File file = new File(realFolder + "/" + representName);
			//File file = new File(realFolder + "\\" + representName); // windows

			file.delete();
	  }
	  
	  query = "DELETE FROM cartoon WHERE id=?";
	  pstmt = con.prepareStatement(query);
	  pstmt.setInt(1, cartoon_id);
	  pstmt.executeUpdate();
	  response.sendRedirect("/12114497_Hanjung/webtoon_list.jsp");
	} catch(Exception e) {
		out.println("오류 : " + e);
	}
	
%>