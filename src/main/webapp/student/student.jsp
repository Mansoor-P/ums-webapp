<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <!DOCTYPE html>
    <html>
    
    <head>
        <title>Student Dashboard</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
       <link rel="stylesheet" href="./student.css">
    </head>
    
    <body>
        <div class="header">
            <h1>Welcome :${session_name} </h1>
        </div>
        <!-- Navigation Bar -->
        <nav class="navbar navbar-expand-lg navbar-dark">
            <a class="navbar-brand" href="#">Student Portal</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="#courses">Courses</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#fees">Fees</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#academic-records">Results</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="./department.jsp">Departments</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#profile">Profile</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#leave-requests">Leave Requests</a>
                    </li>
                   
                </ul>
            </div>
        </nav>
    
        <div class="container-fluid">
            <!-- Courses Section -->
            <section id="courses" class="my-4">
                <h2 class="bg-color-1 p-3 text-white">Courses</h2>
                <div class="row">
                    <div class="col-md-4">
                        <div class="card mb-4">
                            <div class="card-body">
                                <h5 class="card-title">View Enrolled Courses</h5>
                                <p class="card-text">View the list of courses you are currently enrolled in.</p>
                                <a href="./view_reg_course.jsp" class="btn btn-primary">Go to Enrolled Courses</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card mb-4">
                            <div class="card-body">
                                <h5 class="card-title">Register for Courses</h5>
                                <p class="card-text">Register for new courses that you wish to take.</p>
                                <a href="./course_registration.jsp" class="btn btn-primary">Register for Courses</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card mb-4">
                            <div class="card-body">
                                <h5 class="card-title">View Exmas Notifications</h5>
                                <p class="card-text">View the list of exams conducting</p>
                                <a href="./view_exmas.jsp" class="btn btn-primary">view exams</a>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
    
            <!-- Academic Records Section -->
            <section id="academic-records" class="my-4">
                <h2 class="bg-color-2 p-3 text-white">Academic Records</h2>
                <div class="row">
                    <!-- <div class="col-md-4">
                        <div class="card mb-4">
                            <div class="card-body">
                                <h5 class="card-title">View Results</h5>
                                <p class="card-text">Access academic Results and records.</p>
                                <a href="#transcripts" class="btn btn-primary">View Transcripts</a>
                            </div>
                        </div>
                    </div> -->
                    <div class="col-md-4">
                        <div class="card mb-4">
                            <div class="card-body">
                                <h5 class="card-title">View Grades</h5>
                                <p class="card-text">Check grades for current and past courses.</p>
                                <a href="./view _grades.jsp" class="btn btn-primary">View Grades</a>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
    
    
            <!-- Fees Section -->
            <section id="fees" class="my-4">
                <h2 class="bg-color-3 p-3 text-white">Fees</h2>
                <div class="row">
                    <div class="col-md-4">
                        <div class="card mb-4">
                            <div class="card-body">
                                <h5 class="card-title">View Tuition and Fees</h5>
                                <p class="card-text">Displays details about tuition and other fees.</p>
                                <a href="./view_fees.jsp" class="btn btn-primary">View Tuition and Fees</a>
                            </div>
                        </div>
                    </div>
    
                    <div class="col-md-4">
                        <div class="card mb-4">
                            <div class="card-body">
                                <h5 class="card-title">Make Payments</h5>
                                <p class="card-text">Enables the student to make payments for tuition and fees.</p>
                                <a href="./pay_fees.jsp" class="btn btn-primary">Make Payments</a>
                            </div>
                        </div>
                    </div>
    
                    <!-- Add more cards and links for other fee-related functionalities as needed -->
                </div>
            </section>
    
    
            <!-- Leave Requests Section -->
            <section id="leave-requests" class="my-4">
                <h2 class="bg-color-4 p-3 text-white">Leave Requests</h2>
                <div class="row">
                    <div class="col-md-4">
                        <div class="card mb-4">
                            <div class="card-body">
                                <h5 class="card-title">Submit Leave Request</h5>
                                <p class="card-text">Allows the student to submit leave requests for various types.</p>
                                <a href="./leave_request.jsp" class="btn btn-primary">Submit Leave Request</a>
                            </div>
                        </div>
                    </div>
    
                    <div class="col-md-4">
                        <div class="card mb-4">
                            <div class="card-body">
                                <h5 class="card-title">Check Leave Request Status</h5>
                                <p class="card-text">Shows the status of previously submitted leave requests.</p>
                                <a href="./leave_status.jsp" class="btn btn-primary">Check Leave Request Status</a>
                            </div>
                        </div>
                    </div>
    
                    <!-- Add more cards and links for other leave request functionalities as needed -->
                </div>
            </section>
    
            <!-- Profile Section -->
            <section id="profile" class="my-4">
                <h2 class="bg-color-5 p-3 text-white">Profile</h2>
                <div class="row">
                    <div class="col-md-4">
                        <div class="card mb-4">
                            <div class="card-body">
                                <h5 class="card-title">Update Personal Information</h5>
                                <p class="card-text">Allows the student to update personal details like contact information.
                                </p>
                                <a href="./personal_info_change.jsp" class="btn btn-primary">Update Personal
                                    Information</a>
                            </div>
                        </div>
                    </div>
    
                    <div class="col-md-4">
                        <div class="card mb-4">
                            <div class="card-body">
                                <h5 class="card-title">Change Password</h5>
                                <p class="card-text">Provides the option to change the login password.</p>
                                <a href="./change_pwd.jsp" class="btn btn-primary">Change Password</a>
                            </div>
                        </div>
                    </div>
    
                    <!-- Add more cards and links for other profile-related functionalities as needed -->
                </div>
            </section>
    
        </div>
    
        <!-- Footer -->
        <div class="footer">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-4">
                        <div class="footer-logo">
                            <img src="your-logo.png" alt="Project Logo" width="50" height="50">
                        </div>
                        <p>&copy; 2023 University Management System</p>
                    </div>
                    <div class="col-md-4">
                        <h4>Quick Links</h4>
                        <div class="footer-links">
                            <a href="#">Project Overview</a>
                            <a href="#">Features</a>
                            <a href="#">Contact Us</a>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <h4>Connect with Us</h4>
                        <div class="footer-links">
                            <a href="#">Facebook</a>
                            <a href="#">Twitter</a>
                            <a href="#">LinkedIn</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </body>
    
    </html>