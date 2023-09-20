<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Tuition and Fees</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!-- Custom CSS for Tabular Format -->
    <style>
        /* Custom Styles */
        body {
            background-color: #f8f9fa;
        }

        .container {
            margin-top: 20px;
        }

        .fees-container {
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
        .fees-table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        .fees-table th, .fees-table td {
            border: 1px solid #ccc;
            padding: 10px;
            text-align: center;
        }

        .fees-table th {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
    <div class="container">
        <!-- Fees Section -->
        <section id="fees">
            <h2 class="bg-primary text-white p-3">Fees</h2>
            <div class="row">
                <!-- View Tuition and Fees Card -->
                <div class="col-md-4">
                    <div class="card mb-4">
                        <div class="card-body">
                            <h5 class="card-title">Make Payment</h5>
                            <p class="card-text">details about paying tuition and other fees.</p>
                            <a href="./pay_fees.jsp" class="btn btn-primary">make a payment</a>
                        </div>
                    </div>
                </div>
                <!-- Other Cards (Make Payments, and additional fee-related functionalities) -->
                <!-- Add your other cards here -->
            </div>
        </section>

        <!-- View Tuition and Fees Table -->
        <div id="tuition-fees" class="fees-container mt-4">
            <h3>View Tuition and Fees</h3>
            <div class="table-responsive">
                <table class="fees-table">
                    <thead>
                        <tr>
                            <th>Fees Type</th>
                            <th>Amount</th>
                            <th>Course</th>
                        </tr>
                    </thead>
                    <tbody>
                        <!-- Sample Data (Replace with actual data) -->
                        <tr>
                            <td>Tuition</td>
                            <td>$1,200</td>
                            <td>Course 1</td>
                        </tr>
                        <tr>
                            <td>Registration Fees</td>
                            <td>$200</td>
                            <td>Course 1</td>
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
