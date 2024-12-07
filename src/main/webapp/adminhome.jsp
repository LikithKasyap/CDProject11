<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Home</title>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script> <!-- Include Chart.js -->
<style>
    #countChart, #pieChart {
        max-width: 300px;
        margin: auto;
    }
</style>
</head>
<body>
<%@include file="adminnavbar.jsp" %>

<h2>Admin Dashboard</h2>

<h3>Count</h3> <!-- Title above Bar Chart -->
<canvas id="countChart"></canvas> <!-- Canvas for Bar Chart -->

<h3>Distribution</h3> <!-- Title above Pie Chart -->
<canvas id="pieChart"></canvas> <!-- Canvas for Pie Chart -->

<script>
    // Get the values from the JSP page
    const facultyCount = ${fcount};
    const studentCount = ${scount};
    const eventCount = ${ecount};

    // Initialize the Bar Chart
    new Chart(document.getElementById('countChart'), {
        type: 'bar',
        data: {
            labels: ['Faculty', 'Students', 'Events'],
            datasets: [{
                data: [facultyCount, studentCount, eventCount],
                backgroundColor: ['#4bc0c0', '#36a2eb', '#ffce56'],
            }]
        },
        options: {
            plugins: {
                legend: { display: false }, // Hide the legend for simplicity
                title: {
                    display: true,
                    text: 'Faculty, Student, and Event Counts' // Title for the Bar Chart
                }
            },
            scales: {
                y: {
                    beginAtZero: true,
                    ticks: { stepSize: 1 }
                }
            }
        }
    });

    // Initialize the Pie Chart
    new Chart(document.getElementById('pieChart'), {
        type: 'pie',
        data: {
            labels: ['Faculty', 'Students', 'Events'],
            datasets: [{
                data: [facultyCount, studentCount, eventCount],
                backgroundColor: ['#4bc0c0', '#36a2eb', '#ffce56'],
            }]
        },
        options: {
            plugins: {
                legend: { display: true }, // Display the legend for the pie chart
                title: {
                    display: true,
                    text: 'Distribution of Faculty, Students, and Events' // Title for the Pie Chart
                }
            }
        }
    });
</script>

</body>
</html>
