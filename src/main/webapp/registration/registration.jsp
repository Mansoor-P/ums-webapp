<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="database.DatabaseConnection" %>

<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.io.IOException" %>
<%@ page import="java.sql.ResultSet" %>

   <%
if(request.getMethod().equalsIgnoreCase("post")) {
    Connection connection = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    String user_name = request.getParameter("name");
    String password = request.getParameter("password");
    String role = request.getParameter("role");
    String firstName = request.getParameter("first_name");
    String lastName = request.getParameter("last_name");
    String email = request.getParameter("email");
    String phoneNumber = request.getParameter("phone_number");

    try {
        connection = DatabaseConnection.getConnection();

        // Checking if the username already exists
        ps = connection.prepareStatement("SELECT COUNT(*) FROM users WHERE user_name = ?");
        ps.setString(1, user_name);
        rs = ps.executeQuery();
        rs.next();
        int usernameCount = rs.getInt(1);

        // Checking if the email already exists
        ps = connection.prepareStatement("SELECT COUNT(*) FROM users WHERE email = ?");
        ps.setString(1, email);
        rs = ps.executeQuery();
        rs.next();
        int emailCount = rs.getInt(1);

        if (usernameCount > 0) {
            out.println("<h3 style='color:red'>Username already exists.</h3>");
        } else if (emailCount > 0) {
            out.println("<h3 style='color:red'>Email already exists.</h3>");
        } else {
            ps = connection.prepareStatement("INSERT INTO users (user_name, password, role, first_name, last_name, email, phone_number) VALUES (?, ?, ?, ?, ?, ?, ?)");
            ps.setString(1, user_name);
            ps.setString(2, password);
            ps.setString(3, role);
            ps.setString(4, firstName);
            ps.setString(5, lastName);
            ps.setString(6, email);
            ps.setString(7, phoneNumber);

            int count = ps.executeUpdate();

            if (count > 0) {
                out.println("<h3 style='color:green'>Successfully Inserted</h3>");
            } else {
                out.println("<h3 style='color:red'>Not Inserted due to some errors</h3>");
            }
            connection.close();
            ps.close();
            rs.close();
        }
    } catch (SQLException e) {
        e.printStackTrace();
        out.println("<p style='color:red'>Database Exception: " + e.getMessage() + "</p>");
    } finally {
        // Close resources
        try { if (rs != null) rs.close(); } catch (SQLException e) { e.printStackTrace(); }
        try { if (ps != null) ps.close(); } catch (SQLException e) { e.printStackTrace(); }
        try { if (connection != null) connection.close(); } catch (SQLException e) { e.printStackTrace(); }
    }
}
%>

    <!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration</title>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
   <link rel="stylesheet" href="./registration.css">
</head>

<body>
    <div class="container">
        <div class="row ml-2 mr-2">
            <div class="col-md-6 registration-container">
                <h2>Registration</h2>

                <form action="" method="post">
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