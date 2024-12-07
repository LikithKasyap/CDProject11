<%@ page import="com.klef.jfsd.sdp.model.Faculty" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
Faculty f = (Faculty) session.getAttribute("faculty");
if (f == null) {
    response.sendRedirect("facsessionfail");
    return;
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Faculty Profile</title>
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
<%@include file="facnavbar.jsp" %>

<div class="profile-container">
    <h2>Faculty Profile</h2>
    <div class="profile-details">
        <p><strong>ID:</strong> <%= f.getId() %></p>
        <p><strong>Name:</strong> <%= f.getName() %></p>
        <p><strong>Email:</strong> <%= f.getEmail() %></p>
        <p><strong>Department:</strong> <%= f.getDepartment() %></p>
        <p><strong>Contact Number:</strong> <%= f.getContactno() %></p>
        <p><strong>Status:</strong> <%= f.getStatus() %></p>
        <p><strong>Location:</strong> <%= f.getLocation() %></p>
    </div>
</div>

</body>
</html>
