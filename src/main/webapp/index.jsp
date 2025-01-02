<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Library Management</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f9;
        }

        /* Navbar */
        .navbar {
            background-color: #34495e;
            color: white;
            padding: 1rem;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .navbar a {
            color: white;
            text-decoration: none;
            margin: 0 1rem;
        }

        .navbar .buttons {
            display: flex;
        }

        .navbar button {
            background-color: #2ecc71;
            border: none;
            padding: 0.5rem 1rem;
            margin-left: 1rem;
            cursor: pointer;
            color: white;
            border-radius: 5px;
        }

        /* Hero Section */
        .hero {
            text-align: center;
            padding: 2rem;
        }

        .hero img {
            width: 50%;
            max-width: 600px;
            border-radius: 10px;
        }

        .hero h1 {
            margin-top: 1rem;
            color: #2c3e50;
        }

        .hero p {
            color: #7f8c8d;
            font-size: 1.2rem;
        }

        .hero button {
            background-color: #3498db;
            color: white;
            border: none;
            padding: 0.7rem 1.5rem;
            font-size: 1rem;
            cursor: pointer;
            border-radius: 5px;
            margin-top: 1rem;
        }
    </style>
</head>
<body>
    <!-- Navbar -->
    <div class="navbar">
        <div>
            <a href="#">Home</a>
            <a href="#">Services</a>
            <a href="#">Contact</a>
        </div>
        <div class="buttons">
            <button onclick="window.location.href='login.jsp'">Login</button>
            <button onclick="window.location.href='register.jsp'">Register</button>
        </div>
    </div>

    <!-- Hero Section -->
    <div class="hero">
        <img src="img/bibliotheque.jpg" alt="Library Image">
        <h1>Welcome to Library Management System</h1>
        <p>Effortlessly manage your library with our intuitive tools and features designed for students and librarians.</p>
        <button>Learn More</button>
    </div>
</body>
</html>
