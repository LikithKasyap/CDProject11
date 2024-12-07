<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Register Events</title>
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
        button {
            padding: 5px 10px;
            background-color: green;
            color: white;
            border: none;
            cursor: pointer;
        }
        button:hover {
            background-color: darkgreen;
        }
    </style>
</head>
<body>
    <%@ include file="studentnavbar.jsp" %> <!-- Assuming student-specific navbar -->
    <h3 style="text-align: center;"><u>Register Events</u></h3>
    Total Events: <c:out value="${ecount}"/><br>
    <table>
        <tr>
            <th>Event ID</th>
            <th>Event Name</th>
            <th>Description</th>
            <th>Date</th>
            <th>Time</th>
            <th>Status</th>

            <th>Action</th>
        </tr>
        
        <!-- Loop through all available events -->
        <c:forEach items="${eventList}" var="event">
            <c:if test="${event.status == 'Available'}">
                <tr id="event-${event.eventId}">
                    <td><c:out value="${event.eventId}" /></td>
                    <td><c:out value="${event.name}"/></td>
                    <td><c:out value="${event.description}"/></td>
                    <td><c:out value="${event.date}"/></td>
                    <td><c:out value="${event.eventTime}"/></td>
                    <td><c:out value="${event.status}"/></td>

                    <td>
                        <form action="stueventreg" method="post">
                            <input type="hidden" name="eventId" value="${event.eventId}" />
                            <button type="submit">Register</button>
                        </form>
                    </td>
                </tr>
            </c:if>
        </c:forEach>
    </table>
</body>
</html>
