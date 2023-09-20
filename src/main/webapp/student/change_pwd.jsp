<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Change Password</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!-- Custom CSS for Change Password -->
    <style>
        /* Custom Styles */
        body {
            background-color: #f8f9fa;
        }

        .container {
            margin-top: 20px;
        }

        .change-password-container {
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
        .change-password-form .form-group {
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
    <div class="container">
        <!-- Profile Section -->
        <section id="profile">
            <h2 class="bg-primary text-white p-3">Profile</h2>
            <div class="row">
                <!-- Update Personal Information Card -->
                <div class="col-md-4">
                    <div class="card mb-4">
                        <div class="card-body">
                            <h5 class="card-title">Update Personal Information</h5>
                            <p class="card-text">Allows the student to update personal details like contact information.
                            </p>
                            <a href="./personal_info_change.jsp" class="btn btn-primary">Update Personal Information</a>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Change Password Form -->
        <div id="change-password" class="change-password-container mt-4">
            <h3>Change Password</h3>
            <form class="change-password-form">
                <div class="form-group">
                    <label for="current-password">Current Password:</label>
                    <input type="password" class="form-control" id="current-password" name="current-password" required>
                </div>
                <div class="form-group">
                    <label for="new-password">New Password:</label>
                    <input type="password" class="form-control" id="new-password" name="new-password" required>
                </div>

                <button type="submit" class="btn btn-primary btn-block">Change Password</button>
            </form>
        </div>
    </div>

    <!-- Bootstrap JS (optional) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
