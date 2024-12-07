<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="mainnavbar.jsp" %>
<html>
<head>
    <title>Faculty Login</title>
    <link rel="stylesheet" type="text/css" href="style.css">
    <style>
        /* Body background styling */
        body {
            background-image: url('faclogin.jpg'); /* Specify the path to your background image */
            background-size: cover; /* Make sure the image covers the entire page */
            background-position: center center; /* Center the image */
            background-repeat: no-repeat; /* Prevent image repetition */
            height: 100vh; /* Full viewport height */
            margin: 0;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        /* Header styling - top center */
        h3 {
            text-align: center;
            color: #2c3e50; /* Dark color for header */
            font-size: 1.6em;
            margin-bottom: 20px; /* Add space between header and form */
        }

        /* Form container styling */
        .form-container {
            background-color: rgba(255, 255, 255, 0.8); /* Slight transparency */
            border-radius: 8px;
            padding: 30px;
            width: 80%;
            max-width: 500px;
            border: 1px solid rgba(255, 255, 255, 0.5); /* Optional: Subtle border */
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1); /* Optional: Add shadow for form */
            text-align: center;
        }

        /* Additional styling for the form elements */
        table {
            width: 100%;
            border-collapse: collapse;
        }

        table td {
            padding: 12px;
        }

        label {
            font-weight: bold;
            color: #34495e; /* Dark color for labels */
        }

        input[type="email"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            margin-top: 5px;
            border: 1px solid #bdc3c7;
            border-radius: 4px;
            box-sizing: border-box;
            background-color: #ecf0f1;
            color: #2c3e50;
        }

        input[type="email"]:focus,
        input[type="password"]:focus {
            border-color: #2980b9;
            outline: none;
        }

        .button-container {
            text-align: center;
        }

        input[type="submit"],
        input[type="reset"] {
            padding: 12px 24px;
            margin: 10px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 1.1em;
        }

        input[type="submit"] {
            background-color: #27ae60; /* Green color for submit */
            color: white;
        }

        input[type="reset"] {
            background-color: #e74c3c; /* Red color for reset */
            color: white;
        }

        input[type="submit"]:hover {
            background-color: #2ecc71; /* Hover effect for submit button */
        }

        input[type="reset"]:hover {
            background-color: #c0392b; /* Hover effect for reset button */
        }
    </style>
</head>
<body>
  <%@include file="mainnavbar.jsp" %>
    <div>
        <h3 style="text-align: center; color: white;"><u>Faculty Login</u></h3>
        <div class="form-container">
            <form method="post" action="checkfaclogin">
                <table>
                    <tr>
                        <td><label for="femail">Enter Email ID</label></td>
                        <td><input type="email" id="femail" name="femail" required/></td>
                    </tr>
                    <tr>
                        <td><label for="fpwd">Enter Password</label></td>
                        <td><input type="password" id="fpwd" name="fpwd" required/></td>
                    </tr>
                    <tr>
                        <td colspan="2" class="button-container">
                            <input type="submit" value="Login"/>
                            <input type="reset" value="Clear"/>
                        </td>
                    </tr>
                </table>
            </form>
        </div>
    </div>
</body>
</html>
