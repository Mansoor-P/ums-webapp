<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Check Leave Request Status</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!-- Custom CSS for Leave Request Status -->
    <style>
        /* Custom Styles */
        body {
            background-color: #f8f9fa;
        }

        .container {
            margin-top: 20px;
        }

        .leave-status-container {
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
        .leave-status-table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        .leave-status-table th, .leave-status-table td {
            border: 1px solid #ccc;
            padding: 10px;
            text-align: center;
        }

        .leave-status-table th {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
    <div class="container">
        <!-- Leave Requests Section -->
        <section id="leave-requests">
            <h2 class="bg-primary text-white p-3">Leave Requests</h2>
            <div class="row">
                <!-- Submit Leave Request Card -->
                <div class="col-md-4">
                    <div class="card mb-4">
                        <div class="card-body">
                            <h5 class="card-title">Submit Leave Request</h5>
                            <p class="card-text">Allows the student to submit leave requests for various types.</p>
                            <a href="./leave_request.jsp" class="btn btn-primary">Submit Leave Request</a>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Check Leave Request Status Table -->
        <div id="check-leave-status" class="leave-status-container mt-4">
            <h3>Check Leave Request Status</h3>
            <div class="table-responsive">
                <table class="leave-status-table">
                    <thead>
                        <tr>
                            <th>Student ID</th>
                            <th>Leave Type</th>
                            <th>Start Date</th>
                            <th>End Date</th>
                            <th>Status</th>
                        </tr>
                    </thead>
                    <tbody>
                        <!-- Sample Data (Replace with actual data) -->
                        <tr>
                            <td>S001</td>
                            <td>Medicine</td>
                            <td>2023-09-10</td>
                            <td>2023-09-12</td>
                            <td>Approved</td>
                        </tr>
                        <tr>
                            <td>S002</td>
                            <td>Vacation</td>
                            <td>2023-10-05</td>
                            <td>2023-10-15</td>
                            <td>Pending</td>
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
