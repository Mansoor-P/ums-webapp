<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>University Management System</title>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!-- Include jQuery from a CDN -->
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <!-- Custom CSS -->
    <link rel="stylesheet" href="styles.css">
	<style>
	 /* Add your custom styles here */
 body {
    background-color: #E2E2E2;
    padding-top: 20px;
    margin: 10px;
}

.navbar {
    background-color: #85E0A3;
    color: black;
    font-size: 24px;
    border-radius: 10px;
    margin-bottom: 5px;
}

.navbar .navbar-brand {
    color: black;
    font-weight: bolder;
    font-size: larger;
}

.jumbotron {
    background-color: #D9B8FF;
    padding: 30px;
}

.carousel-item img {
    width: 100%;
    max-height: 300px;
    margin: 0 auto;
    padding: 20px;
    display: block;
}

/* Content Sections */
.section {
    border: 2px solid transparent;
    transition: all 0.3s;
    padding: 20px;
}

.section:hover {
    border-color: #D9B8FF;
    background-color: #FFAFA3;
    color: #E2E2E2;
}

/* Heading Styles */
.section h3 {
    color: #FFD966;

    margin-top: 20px;

    margin-bottom: 10px;
}

.footer {
    background-color: #AFBCCF;
    color: white;
    padding: 20px 0;
    text-align: center;
    border-radius: 10px;
    margin-top: 10px;
}

.footer-logo {
    font-size: 24px;
    margin-bottom: 10px;
}

.footer-links {
    margin-top: 20px;
}

.footer-links a {
    color: white;
    margin-right: 20px;
}
	</style>
</head>

<body>

    <!-- Navigation Bar -->
    <nav class="navbar navbar-expand-lg navbar-dark">
        <a class="navbar-brand" href="#">UMS</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
            aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" href="#courses">Register</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#fees">Login</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#academic-records">Results</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="./department.html">Departments</a>
                </li>
            </ul>
        </div>
    </nav>

    <!-- Jumbotron -->
    <div class="jumbotron text-center">
        <h1>Welcome to our University Management System</h1>
        <p>Empowering Education</p>
    </div>

    <!-- Carousel -->
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>


        <!-- Slides -->
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="../img/library.jpg" alt="College Image">
                <div class="carousel-caption">
                    <h3>College</h3>
                    <p>A beautiful college campus.</p>
                </div>
            </div>
            <div class="carousel-item">
                <img src="../img/pencils.jpg" alt="University Image">
                <div class="carousel-caption">
                    <h3>University</h3>
                    <p>An iconic university building.</p>
                </div>
            </div>
            <div class="carousel-item">
                <img src="../img/university.jpg" alt="Education Image">
                <div class="carousel-caption">
                    <h3>Education</h3>
                    <p>Supporting lifelong learning.</p>
                </div>
            </div>
        </div>

        <!-- Controls -->
        <a class="carousel-control-prev" href="#myCarousel" data-slide="prev">
            <span class="carousel-control-prev-icon"></span>
        </a>
        <a class="carousel-control-next" href="#myCarousel" data-slide="next">
            <span class="carousel-control-next-icon"></span>
        </a>
    </div>

    <!-- Content Sections -->
    <div class="container mt-5">
        <div class="row">
            <div class="col-md-4 section">
                <h3>Academic Excellence</h3>
                <p>Our university is committed to academic excellence. We offer a wide range of programs and courses
                    designed to prepare students for successful careers.</p>
            </div>
            <div class="col-md-4 section">
                <h3>Career Opportunities</h3>
                <p>Explore a world of career opportunities with our university. Our graduates are in high demand in
                    various industries around the globe.</p>
            </div>
            <div class="col-md-4 section">
                <h3>Campus Life</h3>
                <p>Experience vibrant campus life with a variety of clubs, events, and activities. We believe in
                    holistic development beyond the classroom.</p>
            </div>
        </div>
        <div class="row mt-4">
            <div class="col-md-6 section">
                <h3>Research and Innovation</h3>
                <p>At our university, we encourage innovation and research. Our faculty and students are involved in
                    groundbreaking research projects that impact society.</p>
            </div>
            <div class="col-md-6 section">
                <h3>Student Support</h3>
                <p>We prioritize student support and well-being. From academic advisors to counseling services, we're
                    here to help you succeed.</p>
            </div>
        </div>
    </div>

    <!-- Footer -->
    <div class="footer">
        <div class="container">
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


    <!-- Bootstrap JS and jQuery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>

</html>