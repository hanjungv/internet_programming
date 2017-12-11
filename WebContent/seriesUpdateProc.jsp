<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" errorPage="./view/error.jsp"
import="java.sql.*, org.cartoon.inha.DBCon" 
import="com.oreilly.servlet.*, com.oreilly.servlet.multipart.*"
import="java.util.*, java.io.*" 
%>

<%
	if(session.getAttribute("email") == null){
    response.sendRedirect("/12114497_Hanjung/index.jsp");
	}
%>

<%
	request.setCharacterEncoding("utf-8");
	
	DBCon DriverManager = new DBCon();
	Connection con= null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	int maxsize = 5*1024*1024;
	//String realFolder = "/Users/hanjung/12114497/12114497_Hanjung/WebContent/upload";
	ServletContext context = getServletContext();
	String realFolder = context.getRealPath("upload");
	
	try {
		MultipartRequest multi = new MultipartRequest(request, realFolder, maxsize, "utf-8", new DefaultFileRenamePolicy());
		
		String title = multi.getParameter("title");
		String comment = multi.getParameter("comment");
		String thumb_img = multi.getFilesystemName("thumb_img");
		String cartoon_img = multi.getFilesystemName("cartoon_img");

		int series_id = Integer.parseInt(request.getParameter("series_id"));
	
		con = DriverManager.getConnection();
		
		String query = "SELECT * FROM series WHERE id=?";
		pstmt = con.prepareStatement(query);
		pstmt.setInt(1, series_id);
		rs = pstmt.executeQuery();
		
		
	  query = "UPDATE series SET title=?, comment=?, thumb_img=?, cartoon_img=? WHERE id=?";
	 	if(thumb_img == null){
	 		if(cartoon_img == null){
	 			query = "UPDATE series SET title=?, comment=? WHERE id=?";
 			} else {
 				query = "UPDATE series SET title=?, comment=?, cartoon_img=? WHERE id=?";
 			}
 		} else {
 			if(cartoon_img == null){
 				query = "UPDATE series SET title=?, comment=?, thumb_img=? WHERE id=?";
 			}
 		}
	  
	  pstmt = con.prepareStatement(query);
	  pstmt.setString(1,title);
	  pstmt.setString(2,comment);
	  
	 	if(thumb_img == null){
	 		if(cartoon_img == null){
	 		  pstmt.setInt(3,series_id);
	 		} else {
		  		while(rs.next()){	
		 			File file = new File(realFolder + "/" + rs.getString("cartoon_img"));
					//File file = new File(realFolder + "\\" + rs.getString("cartoon_img")); // windows
					file.delete();
		  		}
	 			pstmt.setString(3, cartoon_img);
	 		  pstmt.setInt(4,series_id);
	 		}
	 	} else {
	 		if(cartoon_img == null){
	 			while(rs.next()){	
		 			File file = new File(realFolder + "/" + rs.getString("thumb_img"));
					//File file = new File(realFolder + "\\" + rs.getString("thumb_img")); // windows
					file.delete();
		  		}
	 			pstmt.setString(3, thumb_img);
	 			pstmt.setInt(4,series_id);
	 		} else {
	 			while(rs.next()){	
		 			File file = new File(realFolder + "/" + rs.getString("thumb_img"));
					//File file = new File(realFolder + "\\" + rs.getString("thumb_img")); // windows
					file.delete();
					File file2 = new File(realFolder + "/" + rs.getString("cartoon_img"));
					//File file2 = new File(realFolder + "\\" + rs.getString("cartoon_img")); // windows
					file2.delete();
		  		}
	 			pstmt.setString(3,thumb_img);
	 		  pstmt.setString(4,cartoon_img);
	 		  pstmt.setInt(5,series_id);
	 		}
	 	}
	  
	  pstmt.executeUpdate();
	  
	  pstmt.close();
	  con.close();
	  
	  response.sendRedirect("/12114497_Hanjung/webtoon_list.jsp");
	} catch(IOException e) {
		out.println("파일 전송 오류 : " + e);
	}
%>