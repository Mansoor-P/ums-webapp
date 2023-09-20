<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Course Materials</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!-- Custom CSS for Viewing Course Materials -->
    <style>
        /* Custom Styles */
        body {
            background-color: #f8f9fa;
        }

        .container {
            margin-top: 20px;
        }

        .course-materials-container {
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
        .course-materials-table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        .course-materials-table th, .course-materials-table td {
            border: 1px solid #ccc;
            padding: 10px;
            text-align: center;
        }

        .course-materials-table th {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
    <div class="container">
        <!-- View Course Materials Section -->
        <section id="view-course-materials">
            <h2 class="bg-primary text-white p-3">View Course Materials</h2>
        </section>

        <!-- Course Materials Table -->
        <div class="course-materials-container mt-4">
            <div class="table-responsive">
                <table class="course-materials-table">
                    <thead>
                        <tr>
                            <th>Subject Code</th>
                            <th>Course Name</th>
                            <th>Material Name</th>
                            <th>Download Material</th>
                        </tr>
                    </thead>
                    <tbody>
                        <!-- Sample Data (Replace with actual data) -->
                        <tr>
                            <td>SUB101</td>
                            <td>Mathematics</td>
                            <td>Math Lecture Notes</td>
                            <td><a href="download_material.php?file=math_lecture_notes.pdf">Download</a></td>
                        </tr>
                        <tr>
                            <td>SUB202</td>
                            <td>Physics</td>
                            <td>Physics Lab Report</td>
                            <td><a href="download_material.php?file=physics_lab_report.pdf">Download</a></td>
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
