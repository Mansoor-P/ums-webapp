<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Exam View</title>
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

        /* Media Queries */
        @media (max-width: 768px) {
            /* Adjust styles for small screens (e.g., smartphones) */
            .table-responsive {
                overflow-x: auto;
            }
        }
    </style>
</head>
<body>
    <div class="container mt-4">
        <h2 class="bg-primary text-white p-3">Student Exam View</h2>
        <div class="table-responsive">
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>Course</th>
                        <th>Exam Date</th>
                        <th>Subject</th>
                        <th>Start Time</th>
                        <th>End Time</th>
                        <th>PDF</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Course A</td>
                        <td>2023-09-25</td>
                        <td>Subject 1</td>
                        <td>09:00 AM</td>
                        <td>11:00 AM</td>
                        <td><a href="path_to_pdf_file.pdf" target="_blank">Download PDF</a></td>
                    </tr>
                    <tr>
                        <td>Course B</td>
                        <td>2023-09-26</td>
                        <td>Subject 2</td>
                        <td>10:00 AM</td>
                        <td>12:00 PM</td>
                        <td></td> <!-- No PDF available -->
                    </tr>
                    <!-- Add more rows for additional exams -->
                </tbody>
            </table>
        </div>
    </div>

    <!-- Bootstrap JS (optional) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
