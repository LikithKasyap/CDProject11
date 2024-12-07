<%@ page import="com.klef.jfsd.sdp.model.Faculty" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
Faculty f = (Faculty) session.getAttribute("faculty");
if (f == null) {
    response.sendRedirect("facsessionfail"); // Redirect to session fail page if faculty is not in session
    return;
}
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Faculty Home</title>
</head>
<body>
    <%@ include file="facnavbar.jsp" %>
    <h2>Faculty Home</h2>
    Welcome <%= f.getName() %> <!-- Display faculty name -->
</body>
</html>
