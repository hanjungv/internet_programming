<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>웹툰 리스트</title>
<jsp:include page="./view/css_default.jsp"></jsp:include>
</head>
<body>
	<%
		if(session.getAttribute("email") != null){
      response.sendRedirect("/12114497_Hanjung/index.jsp");
		}
	%>
  <jsp:include page="./view/register.jsp"></jsp:include>
  <jsp:include page="./view/script_default.jsp"></jsp:include>
</body>
</html>