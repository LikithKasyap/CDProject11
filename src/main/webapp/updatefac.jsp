<%@page import="com.klef.jfsd.sdp.model.Faculty"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
Faculty faculty = (Faculty) session.getAttribute("faculty");
if(faculty == null) {
    response.sendRedirect("faclogin.jsp"); // Redirect to login if faculty is not logged in
    return;
}
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Faculty</title>
    <link rel="stylesheet" type="text/css" href="style.css">
    <%@include file="facnavbar.jsp" %>
</head>
<body>
    <h3 style="text-align: center;"><u>Update Faculty</u></h3>
    <div class="form-container">
        <form method="post" action="updatefaculty">
            <table>
                <tr>
                    <td><label for="fid">Faculty ID</label></td>
                    <td><input type="text" id="fid" name="fid" value="<%=faculty.getId()%>" readonly/></td>
                </tr>
                <tr>
                    <td><label for="fname">Enter Name</label></td>
                    <td><input type="text" id="fname" name="fname" value="<%=faculty.getName()%>" required/></td>
                </tr>
                <tr>
                    <td><label for="fpwd">Enter Password</label></td>
                    <td><input type="password" id="fpwd" name="fpwd" required/></td>
                </tr>
                <tr>
                    <td><label for="fdept">Select Department</label></td>
                    <td>
                        <select id="fdept" name="fdept" required>
                            <option value="">---Select---</option>
                            <option value="CSE" <%=faculty.getDepartment().equals("CSE") ? "selected" : ""%>>CSE</option>
                            <option value="ECE" <%=faculty.getDepartment().equals("ECE") ? "selected" : ""%>>ECE</option>
                            <option value="EEE" <%=faculty.getDepartment().equals("EEE") ? "selected" : ""%>>EEE</option>
                        </select>
                    </td>
                </tr>
                 <tr>
                    <td><label for="femail">Faculty Email</label></td>
                    <td><input type="email" id="femail" name="femail" value="<%=faculty.getEmail() %>" readonly/></td>
                </tr>
                
                <tr>
                    <td><label for="fcontact">Enter Contact Number</label></td>
                    <td><input type="text" id="fcontact" name="fcontact"  required/></td>
                </tr>
                <tr>
                    <td><label for="flocation">Enter Location</label></td>
                    <td><input type="text" id="flocation" name="flocation"  required/></td>
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
