<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="adminnavbar.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Event</title>
    <link rel="stylesheet" type="text/css" href="style.css"> <!-- Link your CSS file here -->
    <script>
        function updateEventStatus() {
            var totalCount = document.getElementById("etotalcount").value;
            var statusSelect = document.getElementById("estatus");

            if (totalCount > 0) {
                statusSelect.value = "Scheduled";  // Set status to "Scheduled" if count is > 0
            } else {
                statusSelect.value = "Not Available";  // Set status to "Not Available" if count is 0
            }
        }
    </script>
</head>
<body>
    <h3 style="text-align: center;"><u>Add Event</u></h3>
    <div class="form-container">
        <form method="post" action="insertevent">
            <table>
                <tr>
                    <td><label for="ename">Enter Event Name</label></td>
                    <td><input type="text" id="ename" name="ename" required/></td>
                </tr>
                <tr>
                    <td><label for="edescription">Enter Event Description</label></td>
                    <td><textarea id="edescription" name="edescription" required></textarea></td>
                </tr>
                <tr>
                    <td><label for="edate">Enter Event Date</label></td>
                    <td><input type="date" id="edate" name="edate" required/></td>
                </tr>
                <tr>
                    <td><label for="etime">Enter Event Time</label></td>
                    <td><input type="time" id="etime" name="etime" required/></td>
                </tr>
                <tr>
                    <td><label for="estatus">Select Event Status</label></td>
                    <td>
                        <select id="estatus" name="estatus" required>
                            <option value="">---Select---</option>
                            <option value="Scheduled">Scheduled</option>
                            <option value="Ongoing">Ongoing</option>
                            <option value="Not Available">Not Available</option> <!-- New option -->
                        </select>
                    </td>
                </tr>
                <tr>
                    <td><label for="etotalcount">Enter Total Count (Max Registrations)</label></td>
                    <td><input type="number" id="etotalcount" name="etotalcount" required oninput="updateEventStatus()"/></td>
                </tr>
                <tr>
                    <td colspan="2" class="button-container">
                        <input type="submit" value="Add Event"/>
                        <input type="reset" value="Clear"/>
                    </td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>
