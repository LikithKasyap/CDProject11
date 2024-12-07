<%@ page import="com.klef.jfsd.sdp.model.Student" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
Student s = (Student) session.getAttribute("student");
if (s == null) {
    response.sendRedirect("stusessionfail");
    return;
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student home</title>
</head>
<body>
<%@include file="studentnavbar.jsp" %>
Student Home<br>
Welcome <%= s.getName() %>
</body>
</html>