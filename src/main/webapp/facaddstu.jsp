<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="facnavbar.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Registration by Faculty</title>
    <link rel="stylesheet" type="text/css" href="style.css">
    <style>
        .success-message {
            color: green;
            text-align: center;
            margin-bottom: 15px;
            font-size: 1.2em;
        }
    </style>
</head>
<body>
    <!-- Display the success message if it exists -->
    <c:if test="${not empty successMessage}">
        <div class="success-message">${successMessage}</div>
    </c:if>
    
    <h3 style="text-align: center;"><u>Student Registration</u></h3>
    <div class="form-container">
        <form method="post" action="facinsertstu">
            <table>
                <tr>
                    <td><label for="fname">Enter Name</label></td>
                    <td><input type="text" id="fname" name="fname" required/></td>
                </tr>
                <tr>
                    <td><label for="fpwd">Enter Password</label></td>
                    <td><input type="password" id="fpwd" name="fpwd" required/></td>
                </tr>
                <tr>
                    <td><label for="femail">Enter Email ID</label></td>
                    <td><input type="email" id="femail" name="femail" required/></td>
                </tr>
                <tr>
                    <td><label for="fdept">Select Department</label></td>
                    <td>
                        <select id="fdept" name="fdept" required>
                            <option value="">---Select---</option>
                            <option value="CSE">CSE</option>
                            <option value="CS-IT">CS-IT</option>
                            <option value="AIDS">AIDS</option>
                            <option value="ECE">ECE</option>
                            <option value="EEE">EEE</option>
                            <!-- Add other department options as needed -->
                        </select>
                    </td>
                </tr>
                <tr>
                    <td><label for="fcontact">Enter Contact Number</label></td>
                    <td><input type="text" id="fcontact" name="fcontact" required/></td>
                </tr>
                <tr>
                    <td><label for="fgender">Select Gender</label></td>
                    <td>
                        <select id="fgender" name="fgender" required>
                            <option value="">---Select---</option>
                            <option value="Male">Male</option>
                            <option value="Female">Female</option>
                            <option value="Other">Other</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td><label for="fdob">Enter Date of Birth</label></td>
                    <td><input type="date" id="fdob" name="fdob" required/></td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align: center;">
                        <button type="submit">Register Student</button>
                    </td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>
