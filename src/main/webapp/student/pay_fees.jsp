<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Make Payments</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!-- Custom CSS for Payment Form -->
    <style>
        /* Custom Styles */
        body {
            background-color: #f8f9fa;
        }

        .container {
            margin-top: 20px;
        }

        .payment-container {
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

        /* Form Styles */
        .payment-form .form-group {
            margin-bottom: 20px;
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
                            <h5 class="card-title">View Tuition and Fees</h5>
                            <p class="card-text">Displays details about tuition and other fees.</p>
                            <a href="./view_fees.jsp" class="btn btn-primary">View Tuition and Fees</a>
                        </div>
                    </div>
                </div>
              
            </div>
        </section>

        <!-- Payment Form -->
        <div id="make-payments" class="payment-container mt-4">
            <h3>Make Payments</h3>
            <form class="payment-form">
                <div class="form-group">
                    <label for="student-id">Student ID:</label>
                    <input type="text" class="form-control" id="student-id" name="student-id" required>
                </div>
                <div class="form-group">
                    <label for="payment-type">Payment Type:</label>
                    <select class="form-control" id="payment-type" name="payment-type" required>
                        <option value="Tuition">Tuition</option>
                        <option value="Registration Fees">Registration Fees</option>
                        <option value="College Total Fees">College Total Fees</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="payment-amount">Payment Amount:</label>
                    <input type="text" class="form-control" id="payment-amount" name="payment-amount" required>
                </div>
                <div class="form-group">
                    <label for="payment-status">Payment Status:</label>
                    <select class="form-control" id="payment-status" name="payment-status" required>
                        <option value="Pending">Pending</option>
                        <option value="Paid">Paid</option>
                    </select>
                </div>
                <button type="submit" class="btn btn-primary btn-block">Make Payment</button>
            </form>
        </div>
    </div>

    <!-- Bootstrap JS (optional) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
