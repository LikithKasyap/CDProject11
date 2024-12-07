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
<title>Student Profile</title>
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
<%@include file="studentnavbar.jsp" %>

<div class="profile-container">
    <h2>Student Profile</h2>
    <div class="profile-details">
        <p><strong>ID:</strong> <%= s.getId() %></p>
        <p><strong>Name:</strong> <%= s.getName() %></p>
        <p><strong>Email:</strong> <%= s.getEmail() %></p>
        <p><strong>Department:</strong> <%= s.getDepartment() %></p>
        <p><strong>Contact Number:</strong> <%= s.getContactno() %></p>
        <p><strong>Gender:</strong> <%= s.getGender() %></p>
        <p><strong>Date of Birth:</strong> <%= s.getDob() %></p>
    </div>
</div>

</body>
</html>
