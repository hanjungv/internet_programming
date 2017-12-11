<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" errorPage="./view/error.jsp"%>
<%
  session.invalidate();
  response.sendRedirect("/12114497_Hanjung/login.jsp"); 
%>

