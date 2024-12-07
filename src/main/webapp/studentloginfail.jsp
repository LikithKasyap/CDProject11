<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<html>
<head>
<meta charset="UTF-8">
<%@include file="studentnavbar.jsp" %>
<title>Student Login Fail</title>
</head>
<body>
<c:out value="${message}"></c:out>
<br><br>
<a href="studentlogin">Try Again</a>
</body>
</html>