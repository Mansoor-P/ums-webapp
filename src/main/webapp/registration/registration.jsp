<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration</title>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        /* styles.css */

        /* Add your custom styles here */

        body {
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }

        .container {
            max-width: 100%;
            margin-top: 20px;
        }

        .row {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
        }

        .col-md-6 {
            flex-basis: calc(50% - 20px);
            margin: 10px;
        }

        .registration-container {
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
            margin: 10px 0;
            height: 800px;
        }

        h2 {
            color: #FFD966;
            text-align: center;
        }

        .form-group {
            margin-bottom: 20px;
        }

        label {
            font-weight: bold;
        }

        input[type="text"],
        input[type="password"],
        select,
        input[type="email"],
        input[type="tel"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #D9B8FF;
            border-radius: 5px;
            color: #E2E2E2;
        }

        select {
            cursor: pointer;
        }

        button {
            width: 100%;
            padding: 10px;
            background-color: #85E0A3;
            color: #E2E2E2;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease-in-out;
        }

        button:hover {
            background-color: #FFAFA3;
        }

        .image-container {
            height: 400px;
            /* Equal height to registration form */
            margin: 10px 0;
            border-radius: 10px;
            position: relative;
        }

        .image-container img {
            border-radius: 10px;
            margin-top: 10px;
           height: 380px;
        }

        .login-text {
            text-align: center;
            margin-top: 10px;
        }

        .message-container {
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
            margin: 10px 0;
            text-align: center;
            height: 100%;
            /* Equal height to registration form */
        }

        @media (max-width: 768px) {
            .col-md-6 {
                flex-basis: 100%;
                margin: 10px 0;
            }

            .registration-container {
                padding: 10px;
            }

            .image-container {
                display: none;
            }
        }
    </style>
</head>

<body>
    <div class="container">
        <div class="row ml-2 mr-2">
            <div class="col-md-6 registration-container">
                <h2>Registration</h2>

                <form action="registration_process.php" method="post">
                    <div class="form-group">
                        <label for="name">Name:</label>
                        <input type="text" class="form-control" id="name" name="name" required>
                    </div>
                    <div class="form-group">
                        <label for="password">Password:</label>
                        <input type="password" class="form-control" id="password" name="password" required>
                    </div>
                    <div class="form-group">
                        <label for="role">Role:</label>
                        <select class="form-control" id="role" name="role">
                            <option value="student">Student</option>
                            <option value="faculty">Faculty</option>
                            <option value="admin">Admin</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="first_name">First Name:</label>
                        <input type="text" class="form-control" id="first_name" name="first_name" required>
                    </div>
                    <div class="form-group">
                        <label for="last_name">Last Name:</label>
                        <input type="text" class="form-control" id="last_name" name="last_name" required>
                    </div>
                    <div class="form-group">
                        <label for="email">Email:</label>
                        <input type="email" class="form-control" id="email" name="email" required>
                    </div>
                    <div class="form-group">
                        <label for="phone_number">Phone Number:</label>
                        <input type="tel" class="form-control" id="phone_number" name="phone_number" required>
                    </div>
                    <button type="submit" class="btn btn-primary">Submit</button>
                    <div class="text-center">
                        <p>If you are already registered, <a href="../login/login.jsp">login here</a>.</p>
                    </div>
                </form>
            </div>
            <div class="col-md-6">
                <div class="row">
                    <div class="col-md-12 image-container">
                        <img src="../images/dna-flower.png" alt="Image" class="img-fluid">
                    </div>
                    <div class="col-md-12 message-container">
                        <p>Here is a beautiful message for you.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap JS and jQuery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>

</html>