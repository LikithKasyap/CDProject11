<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Delete Students</title>
    <style>
        table {
            width: 100%;
            max-width: 1200px;
            margin: 20px auto;
            border-collapse: collapse;
            table-layout: auto;
            background-color: #fff;
        }
        table, th, td {
            border: 2px solid black;
        }
        th, td {
            padding: 10px;
            text-align: center;
            word-wrap: break-word;
        }
        th {
            background-color: black;
            color: white;
        }
        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        tr:nth-child(odd) {
            background-color: #fff;
        }
        .delete-button {
            background-color: #d32f2f;
            color: white;
            border: none;
            padding: 5px 10px;
            border-radius: 4px;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <%@include file="adminnavbar.jsp" %>
    <h3 style="text-align: center;"><u>Delete Students</u></h3>
    Total Students: <c:out value="${scount}"/><br>
    <table>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Department</th>
            <th>Contact No</th>
            <th>Gender</th>
            <th>DOB</th>
            <th>Action</th>
        </tr>
        <c:forEach items="${studentList}" var="student">
            <tr>
                <td><c:out value="${student.id}"/></td>
                <td><c:out value="${student.name}"/></td>
                <td><c:out value="${student.email}"/></td>
                <td><c:out value="${student.department}"/></td>
                <td><c:out value="${student.contactno}"/></td>
                <td><c:out value="${student.gender}"/></td>
                <td><c:out value="${student.dob}"/></td>
                <td>
                    <a href='<c:url value="deletestu?id=${student.id}"></c:url>'>Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
