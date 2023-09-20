<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Course Registration</title>
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
            max-width: 400px;
            margin: 0 auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
        }

        h3 {
            text-align: center;
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
    <div class="container">
        <!-- Courses Section -->
        <section id="courses">
            <h2 class="bg-primary text-white p-3">Courses</h2>
            <div class="row">
                <!-- Previvously Registered  Courses Card -->


                <div class="col-md-4">
                    <div class="card mb-4">
                        <div class="card-body">
                            <h5 class="card-title">View Courses Previously Registered </h5>
                            <p class="card-text">View Courses that which are you already enrolled.</p>
                            <a href="./view_reg_course.jsp" class="btn btn-primary">Register for Courses</a>
                        </div>
                    </div>
                </div>
                <!-- Other Cards (View Enrolled Courses, Drop Courses) -->
                <!-- Add your other cards here -->
            </div>
        </section>

        <!-- Registration Form for New Courses -->
        <div id="register-courses" class="registration-container mt-4">
            <h3>Register for New Courses</h3>
            <form id="course-registration-form">
                <!-- Course Code Dropdown -->
                <div class="form-group">
                    <label for="course-code">Course Code:</label>
                    <select class="form-control" id="course-code" name="course-code" required>
                        <option value="">Select Course Code</option>
                        <option value="C001">C001</option>
                        <option value="C002">C002</option>
                        <!-- Add more options as needed -->
                    </select>
                </div>

                <!-- Course Name Dropdown -->
                <div class="form-group">
                    <label for="course-name">Course Name:</label>
                    <select class="form-control" id="course-name" name="course-name" required>
                        <option value="">Select Course Name</option>
                        <option value="Course 1">Course 1</option>
                        <option value="Course 2">Course 2</option>
                        <!-- Add more options as needed -->
                    </select>
                </div>

                <!-- Semester Dropdown -->
                <div class="form-group">
                    <label for="semester">Semester:</label>
                    <select class="form-control" id="semester" name="semester" required>
                        <option value="Spring">Spring</option>
                        <option value="Summer">Summer</option>
                        <option value="Fall">Fall</option>
                        <option value="Winter">Winter</option>
                    </select>
                </div>

                <!-- Submit Button -->
                <button type="submit" class="btn btn-primary btn-block">Register</button>
            </form>
        </div>
    </div>

    <!-- Bootstrap JS (optional) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
