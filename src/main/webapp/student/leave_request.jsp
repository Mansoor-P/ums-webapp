<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Leave Requests</title>
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

        .leave-container {
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

        /* Form Styles */
        .leave-form .form-group {
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
    <div class="container">
        <!-- Leave Requests Section -->
        <section id="leave-requests">
            <h2 class="bg-primary text-white p-3">Leave Requests</h2>
            <div class="row">
                <!-- Check Leave Request Status Card -->
                <div class="col-md-4">
                    <div class="card mb-4">
                        <div class="card-body">
                            <h5 class="card-title">Check Leave Request Status</h5>
                            <p class="card-text">Shows the status of previously submitted leave requests.</p>
                            <a href="./leave_status.jsp" class="btn btn-primary">Check Leave Request Status</a>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Submit Leave Request Form -->
        <div id="submit-leave-request" class="leave-container mt-4">
            <h3>Submit Leave Request</h3>
            <form class="leave-form">
                <div class="form-group">
                    <label for="student-id">Student ID:</label>
                    <input type="text" class="form-control" id="student-id" name="student-id" required>
                </div>
                <div class="form-group">
                    <label for="leave-type">Leave Type:</label>
                    <select class="form-control" id="leave-type" name="leave-type" required>
                        <option value="Medicine">Medicine</option>
                        <option value="Vacation">Vacation</option>
                        <!-- Add more leave types as needed -->
                    </select>
                </div>
                <div class="form-group">
                    <label for="start-date">Start Date:</label>
                    <input type="date" class="form-control" id="start-date" name="start-date" required>
                </div>
                <div class="form-group">
                    <label for="end-date">End Date:</label>
                    <input type="date" class="form-control" id="end-date" name="end-date" required>
                </div>
                <button type="submit" class="btn btn-primary btn-block">Submit Request</button>
            </form>
        </div>

       
    </div>

    <!-- Bootstrap JS (optional) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
