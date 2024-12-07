<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Events</title>
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

    <%@ include file="adminnavbar.jsp" %>
    
    <h3 style="text-align: center;"><u>Update Events</u></h3>
    Total Events: <c:out value="${ecount}"/><br>
    
    <table>
        <thead>
            <tr>
                <th>Event ID</th>
                <th>Event Name</th>
                <th>Description</th>
                <th>Date</th>
                <th>Time</th>
                <th>Status</th>
                <th>Total Count</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="event" items="${eventList}">
                <tr>
                    <td><c:out value="${event.eventId}"/></td>
                    <td><c:out value="${event.name}"/></td>
                    <td><c:out value="${event.description}"/></td>
                    <td><c:out value="${event.date}"/></td>
                    <td><c:out value="${event.eventTime}"/></td>
                    <td><c:out value="${event.status}"/></td>
                    <td><c:out value="${event.totalCount}"/></td>
                    <td>
                        <!-- Update button -->
                        <form action="editevent" method="get">
                            <input type="hidden" name="eventId" value="${event.eventId}" />
                            <button type="submit">Update</button>
                        </form>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
    
</body>
</html>
