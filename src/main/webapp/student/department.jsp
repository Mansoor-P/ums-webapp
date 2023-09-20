<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="database.DatabaseConnection" %>

<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.io.IOException" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Departments</title>
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

        /* Responsive Table Styles */
        .table-responsive {
            overflow-x: auto;
        }

        /* Media Queries */
        @media (max-width: 768px) {
            /* Adjust styles for small screens (e.g., smartphones) */
            .table-responsive {
                width: 100%;
                overflow-x: auto;
                -webkit-overflow-scrolling: touch;
            }
        }

       
    </style>
</head>
<body>
    <div class="container mt-4">
        <h2 class="bg-primary text-white p-3">Departments</h2>
        
        <!-- Departments Table (Replace with actual department data) -->
        <div class="table-responsive">
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>Department Name</th>
                        <th>HOD (Head of Department)</th>
                        <th>Location</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        Connection connection = null;
                        PreparedStatement pstmt = null;
                        ResultSet rs = null;
                        
                        try {
                            connection = DatabaseConnection.getConnection();
                            pstmt = connection.prepareStatement("SELECT department_id, department_name, department_location, department_hod FROM department");
                            rs = pstmt.executeQuery();
                            
                            while (rs.next()) {
                    %>
                            <tr>
                                <td><a href="courses.jsp?departmentId=<%= rs.getString("department_id") %>"><%= rs.getString("department_name") %></a></td>
                                <td><%= rs.getString("department_hod") %></td>
                                <td><%= rs.getString("department_location") %></td>
                            </tr>
                    <%
                            }
                            rs.close();
                            pstmt.close();
                            connection.close();
                            
                        } catch (Exception e) {
                            e.printStackTrace();
                        } finally {
                            try {
                                if (rs != null) rs.close();
                                if (pstmt != null) pstmt.close();
                                if (connection != null) connection.close();
                            } catch (SQLException e) {
                                e.printStackTrace();
                            }
                        }
                    %>
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
