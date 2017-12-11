<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
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
		int series_id = Integer.parseInt(request.getParameter("series_id"));
		con = DriverManager.getConnection();
		
		String thumbName = "";
		String cartoonName = "";
		String query = "SELECT * FROM series WHERE id=?";
	  pstmt = con.prepareStatement(query);
		pstmt.setInt(1, series_id);
		rs = pstmt.executeQuery();
		
		while(rs.next()){
			thumbName = rs.getString("thumb_img");
			cartoonName = rs.getString("cartoon_img");
			
			ServletContext context = getServletContext();
			String realFolder = context.getRealPath("upload");
				
			File file = new File(realFolder + "/" + thumbName);
			//File file = new File(realFolder + "\\" + thumbName); // windows
			file.delete();
			File file2 = new File(realFolder + "/" + cartoonName);
			//File file2 = new File(realFolder + "\\" + cartoonName); // windows
			file2.delete();
		}
		
	  query = "DELETE FROM series WHERE id=?";
	  pstmt = con.prepareStatement(query);
	  pstmt.setInt(1, series_id);
	  pstmt.executeUpdate();
	  response.sendRedirect("/12114497_Hanjung/webtoon_list.jsp");
	} catch(Exception e) {
		out.println("오류 : " + e);
	}
%>