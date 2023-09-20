<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
  <%@ page import="database.DatabaseConnection" %>

<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.io.IOException" %> 
<%@ page import="java.sql.ResultSet" %>

<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.ResultSet" %>

 <%
if(request.getMethod().equalsIgnoreCase("post")){
    Connection connection = null;
    PreparedStatement preparedStatement = null;
    ResultSet resultSet = null;

    try {
	        connection = DatabaseConnection.getConnection();
	        String username = request.getParameter("username");
	        String role = request.getParameter("role");
	        String password = request.getParameter("password");
	
	        // SQL query to check if the username and role and password match
	        String sql = "SELECT * FROM users WHERE user_name = ? AND role=? AND password = ?";
	        
	        //"SELECT * FROM users WHERE user_name = ? OR email=? AND password = ?";
	        
	        preparedStatement = connection.prepareStatement(sql);
	        preparedStatement.setString(1, username);
	        preparedStatement.setString(2, role);
	        preparedStatement.setString(3, password);
	        
	        resultSet = preparedStatement.executeQuery();
		
		        if (resultSet.next()) {
		        	if(role.equalsIgnoreCase("student")){
		        		 response.sendRedirect("../student/student.jsp");
		        	}else if(role.equalsIgnoreCase("faculty")){
		        		 response.sendRedirect("../faculty/faculty.jsp");
		        	}else if(role.equalsIgnoreCase("admin")){
		        		 response.sendRedirect("../admin/admin.jsp");
		        	}
		            //response.sendRedirect("../index.jsp");
		        } else {
		            response.setContentType("text/html");
		            out.println("<h5 style='color:red'>Invalid username or password. Please try again.</h5>");
		        }
	        preparedStatement.close();
	        connection.close();
	        resultSet.close();
    } catch (SQLException e) {
        e.printStackTrace();
        // Handle database errors here
        response.setContentType("text/html");
        out.println("<h5 style='color:red'>An error occurred : " + e.getMessage()+ " </h5>");
    } 
}
%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

    <!-- Custom CSS -->
    <link rel="stylesheet" href="login.css">

</head>

<body>


    <div class="container mt-5">
        <h2>Login</h2>
        <form action="" method="post">
            <div class="form-group">
                <label for="username">Username or Email:</label>
                <input type="text" class="form-control" id="username" name="username" required>
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
                <label for="password">Password:</label>
                <input type="password" class="form-control" id="password" name="password" required>
            </div>
            <button type="submit" class="btn btn-primary">Login</button>
            <div class="text-center">
                <p>If you are not registered, <a href="../registration/registration.jsp">Register here</a>.</p>
            </div>
        </form>
    </div>

    <!-- Bootstrap JS and jQuery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>

</html>