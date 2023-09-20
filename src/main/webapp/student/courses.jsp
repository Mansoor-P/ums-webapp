<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="database.DatabaseConnection" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Courses and Subjects</title>
    <!-- Include Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container ">
        <h1>Courses and Subjects</h1>
        <div class="row">
            <div class="col-md-12">
                <%
                    Connection connection = null;
                    PreparedStatement pstmt = null;
                    ResultSet rs = null;

                    try {

                        String departmentId = request.getParameter("departmentId");
                        if (departmentId != null && !departmentId.isEmpty()) {
                            connection = DatabaseConnection.getConnection();

                            // Prepare the SQL statement to fetch courses
                            String courseSql = "SELECT course_id, course_name FROM course WHERE department_id = ?";
                            pstmt = connection.prepareStatement(courseSql);
                            pstmt.setString(1, departmentId);
                            rs = pstmt.executeQuery();
                %>
                            <form action="" method="post">
                                <input type="hidden" name="departmentId" value="<%= departmentId %>">
                                <div class="form-group">
                                    <label for="courseSelect">Select a Course:</label>
                                    <select id="courseSelect" name="courseId" class="form-control" onchange="this.form.submit()">
                                        <option value="">Select a Course</option>
                                        <%
                                            while (rs.next()) {
                                        %>
                                                <option value="<%= rs.getString("course_id") %>"><%= rs.getString("course_name") %></option>
                                        <%
                                            }
                                        %>
                                    </select>
                                </div>
                            </form>
                <%
                            rs.close();
                            pstmt.close();
                            String courseId = request.getParameter("courseId");
                            if (courseId != null && !courseId.isEmpty()) {
                                String courseName = ""; // Variable to store the course name
                                String subjectSql = "SELECT subject_code, subject_name FROM subjects WHERE course_id = ?";

                                // Fetch the course name
                                String courseNameSql = "SELECT course_name FROM course WHERE course_id = ?";
                                pstmt = connection.prepareStatement(courseNameSql);
                                pstmt.setString(1, courseId);
                                rs = pstmt.executeQuery();
                                if (rs.next()) {
                                    courseName = rs.getString("course_name");
                                }
                %>
                                <h2>Subjects for Course: <%= courseName %></h2>
                                <table class="table table-bordered">
                                    <thead>
                                        <tr>
                                            <th>Subject Code</th>
                                            <th>Subject Name</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <%
                                            // Display the course name in every row
                                            pstmt = connection.prepareStatement(subjectSql);
                                            pstmt.setString(1, courseId);
                                            rs = pstmt.executeQuery();
                                            while (rs.next()) {
                                        %>
                                                <tr>
                                                    <td><%= rs.getString("subject_code") %></td>
                                                    <td><%= rs.getString("subject_name") %></td>
                                                </tr>
                                        <%
                                            }
                                        %>
                                    </tbody>
                                </table>
                <%
                            }
                        } else {
                %>
                            <p>No department selected.</p>
                <%
                        }
                    } catch (SQLException e) {
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
            </div>
        </div>
    </div>

    <!-- Include Bootstrap JavaScript and jQuery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
