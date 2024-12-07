<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View All Events</title>
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
    <%@ include file="studentnavbar.jsp" %>

    <h3 style="text-align: center;"><u>View All Events</u></h3>
    
        Total Events:<c:out value="${ecount}"></c:out><br>
    <table>
        <tr>
            <th>Event ID</th>
            <th>Event Name</th>
            <th>Description</th>
            <th>Date</th>
            <th>Time</th>
            <th>Status</th>

        </tr>
        <c:forEach items="${eventList}" var="event">
            <tr>
                <td><c:out value="${event.eventId}" /></td>
                <td><c:out value="${event.name}"/></td>
                <td><c:out value="${event.description}"/></td>
                <td><c:out value="${event.date}"/></td>
                <td><c:out value="${event.eventTime}"/></td>
                <td><c:out value="${event.status}"/></td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
