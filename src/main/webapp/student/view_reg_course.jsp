<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Registered Courses</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!-- Custom CSS -->
    <style>
        /* Custom Styles */
        body {
            background-color: #f8f9fa;
        }

        .container {
            margin-top: 20px;
        }

        .registration-container {
            max-width: 100%;
            margin: 0 auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
            overflow-x: auto; /* Enable horizontal scrolling for small screens */
        }

        h3 {
            text-align: center;
            margin-bottom: 20px;
        }

        /* Table Styles */
        .course-table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        .course-table th, .course-table td {
            border: 1px solid #ccc;
            padding: 10px;
            text-align: center;
        }

        .course-table th {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
    <div class="container">
        <!-- Courses Section -->
        <section id="courses">
            <h2 class="bg-primary text-white p-3">Courses</h2>
            <div class="row">
                <!-- Register for Courses Card -->
                <div class="col-md-4">
                    <div class="card mb-4">
                        <div class="card-body">
                            <h5 class="card-title">Register for New Courses If You are not Registered</h5>
                            <p class="card-text">Register for new courses that you wish to take.</p>
                            <a href="./course_registration.jsp" class="btn btn-primary">Register for Courses</a>
                        </div>
                    </div>
                </div>
                <!-- Other Cards (Register for Courses, Drop Courses) -->
                <!-- Add your other cards here -->
            </div>
        </section>

        <!-- View Registered Courses Table -->
        <div id="view-registered-courses" class="registration-container mt-4">
            <h3>View Registered Courses</h3>
            <div class="table-responsive"> <!-- Make the table responsive -->
                <table class="course-table">
                    <thead>
                        <tr>
                            <th>Enroll ID</th>
                            <th>Course ID</th>
                            <th>Student ID</th>
                            <th>Enroll Date</th>
                        </tr>
                    </thead>
                    <tbody>
                        <!-- Sample Data (Replace with actual data) -->
                        <tr>
                            <td>1</td>
                            <td>C001</td>
                            <td>S001</td>
                            <td>2023-09-19</td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>C002</td>
                            <td>S001</td>
                            <td>2023-09-20</td>
                        </tr>
                        <!-- Add more rows as needed -->
                    </tbody>
                </table>
            </div>
        </div>
    </div>

    <!-- Bootstrap JS (optional) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
