<%@page import="com.klef.jfsd.sdp.model.Student"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
Student student = (Student) session.getAttribute("student");
if(student == null) {
    response.sendRedirect("studentlogin.jsp"); // Redirect to login if student is not logged in
    return;
}
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Student</title>
    <link rel="stylesheet" type="text/css" href="style.css">
    <%@include file="studentnavbar.jsp" %> <!-- Include student-specific navbar -->
</head>
<body>
    <h3 style="text-align: center;"><u>Update Student Information</u></h3>
    <div class="form-container">
        <form method="post" action="editstuprofile">
            <table>
                <tr>
                    <td><label for="sid">Student ID</label></td>
                    <td><input type="text" id="sid" name="sid" value="<%=student.getId()%>" readonly/></td>
                </tr>
                <tr>
                    <td><label for="sname">Enter Name</label></td>
                    <td><input type="text" id="sname" name="sname" value="<%=student.getName()%>" required/></td>
                </tr>
                <tr>
                    <td><label for="spwd">Enter Password</label></td>
                    <td><input type="password" id="spwd" name="spwd" required/></td>
                </tr>
                <tr>
                    <td><label for="sdept">Select Department</label></td>
                    <td>
                        <select id="sdept" name="sdept" required>
                            <option value="">---Select---</option>
                            <option value="CSE" <%=student.getDepartment().equals("CSE") ? "selected" : ""%>>CSE</option>
                            <option value="ECE" <%=student.getDepartment().equals("ECE") ? "selected" : ""%>>ECE</option>
                            <option value="EEE" <%=student.getDepartment().equals("EEE") ? "selected" : ""%>>EEE</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td><label for="semail">Student Email</label></td>
                    <td><input type="email" id="semail" name="semail" value="<%=student.getEmail() %>" readonly/></td>
                </tr>
                <tr>
                    <td><label for="scontact">Enter Contact Number</label></td>
                    <td><input type="text" id="scontact" name="scontact" value="<%=student.getContactno()%>" required/></td>
                </tr>
                <tr>
                    <td><label for="sgender">Select Gender</label></td>
                    <td>
                        <select id="sgender" name="sgender" required>
                            <option value="">---Select---</option>
                            <option value="Male" <%=student.getGender().equals("Male") ? "selected" : ""%>>Male</option>
                            <option value="Female" <%=student.getGender().equals("Female") ? "selected" : ""%>>Female</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td><label for="sdob">Enter Date of Birth</label></td>
                    <td><input type="text" id="sdob" name="sdob" value="<%=student.getDob()%>" required/></td>
                </tr>
                <tr>
                    <td colspan="2" class="button-container">
                        <input type="submit" value="Update"/>
                        <input type="reset" value="Clear"/>
                    </td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>
