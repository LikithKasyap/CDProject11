<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Delete Faculty</title>
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
    </style>
</head>
<body>
     <%@include file="adminnavbar.jsp" %>
    <h3 style="text-align: center;"><u>Delete Faculty</u></h3>
        Total Faculty:<c:out value="${fcount}"></c:out><br>
    <table>
        <tr>
            <th>ID</th>
            <th>NAME</th>
            <th>EMAIL</th>
            <th>DEPARTMENT</th>
            <th>CONTACT NO</th>
            <th>STATUS</th>
            <th>ACTION</th>
        </tr>
        
            <c:forEach items="${faclist}" var="faculty">
            <tr>
                <td><c:out value="${faculty.id}"/></td>
                <td><c:out value="${faculty.name}"/></td>
                <td><c:out value="${faculty.email}"/></td>
                <td><c:out value="${faculty.department}"/></td>
                <td><c:out value="${faculty.contactno}"/></td>
                <td><c:out value="${faculty.status}"/></td>
           
           <td>
             <a href='<c:url value="delete?id=${faculty.id}"></c:url>'>Delete</a>
           </td>

            </tr>
        </c:forEach>
    </table>
</body>
</html>