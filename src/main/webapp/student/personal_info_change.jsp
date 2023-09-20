<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Personal Information</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!-- Custom CSS for Update Personal Information -->
    <style>
        /* Custom Styles */
        body {
            background-color: #f8f9fa;
        }

        .container {
            margin-top: 20px;
        }

        .update-profile-container {
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
        .update-profile-form .form-group {
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
                <!-- Change Password Card -->
                <div class="col-md-4">
                    <div class="card mb-4">
                        <div class="card-body">
                            <h5 class="card-title">Change Password</h5>
                            <p class="card-text">Provides the option to change the login password.</p>
                            <a href="./change_pwd.jsp" class="btn btn-primary">Change Password</a>
                        </div>
                    </div>
                </div>
                <!-- Add more cards for other profile-related functionalities -->
                <!-- Add your other cards here -->
            </div>
        </section>

        <!-- Update Personal Information Form -->
        <div id="update-profile" class="update-profile-container mt-4">
            <h3>Update Personal Information</h3>
            <form class="update-profile-form">
                <!-- Add form fields for updating personal information -->
                <!-- Example: Name, Email, Phone, Address, etc. -->
                <div class="form-group">
                    <label for="name">First Name:</label>
                    <input type="text" class="form-control" id="name" name="name" required>
                </div>
                <div class="form-group">
                    <label for="name">Last Name:</label>
                    <input type="text" class="form-control" id="name" name="name" required>
                </div>
                <div class="form-group">
                    <label for="email">Email:</label>
                    <input type="email" class="form-control" id="email" name="email" required>
                </div>
                <div class="form-group">
                    <label for="tel">Mobile No :</label>
                    <input type="tel" class="form-control" id="tel" name="tel" required>
                </div>
                <!-- Add more fields as needed -->
                <button type="submit" class="btn btn-primary btn-block">Update Information</button>
            </form>
        </div>
    </div>

    <!-- Bootstrap JS (optional) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
