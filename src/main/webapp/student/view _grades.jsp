<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Grading System</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!-- Custom CSS for Grading System -->
    <style>
        /* Custom Styles */
        body {
            background-color: #f8f9fa;
        }

        .container {
            margin-top: 20px;
        }

        .grading-system-container {
            max-width: 100%;
            margin: 0 auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
            overflow-x: auto; /* Enable horizontal scrolling for small screens */
        }

        h2 {
            text-align: center;
            margin-bottom: 20px;
        }

        /* Table Styles */
        .grading-system-table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        .grading-system-table th, .grading-system-table td {
            border: 1px solid #ccc;
            padding: 10px;
            text-align: center;
        }

        .grading-system-table th {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
    <div class="container">
        <!-- Grading System Section -->
        <section id="grading-system">
            <h2 class="bg-primary text-white p-3">Grading System</h2>
        </section>

        <!-- Grading System Table -->
        <div class="grading-system-container mt-4">
            <div class="table-responsive">
                <table class="grading-system-table">
                    <thead>
                        <tr>
                            <th>Name</th>
                            <th>Semester</th>
                            <th>Course/Subject</th>
                            <th>Grade</th>
                        </tr>
                    </thead>
                    <tbody>
                        <!-- Sample Data (Replace with actual data) -->
                        <tr>
                            <td>John Doe</td>
                            <td>Fall 2023</td>
                            <td>Mathematics</td>
                            <td>A</td>
                        </tr>
                        <tr>
                            <td>Jane Smith</td>
                            <td>Spring 2024</td>
                            <td>Physics</td>
                            <td>B+</td>
                        </tr>
                        <!-- Add more rows for other grades -->
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
