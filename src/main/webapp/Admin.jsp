<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Airline Admin Login</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600&display=swap" rel="stylesheet">
  <style>
    * {
      box-sizing: border-box;
      margin: 0;
      padding: 0;
    }

    body {
      margin: 0;
      padding: 0;
      font-family: 'Inter', sans-serif;
      background: #000;
      overflow-x: hidden;
    }

    /* Background animation */
    body::before {
      content: "";
      position: fixed;
      top: 0;
      left: 0;
      right: 0;
      bottom: 0;
      background: url('https://images.unsplash.com/photo-1533473359331-0135ef1b58bf?auto=format&fit=crop&w=1400&q=80') no-repeat center center fixed;
      background-size: cover;
      filter: brightness(0.7);
      z-index: -1;
      animation: zoomIn 25s ease-in-out infinite alternate;
    }

    @keyframes zoomIn {
      0% {
        transform: scale(1);
      }
      100% {
        transform: scale(1.1);
      }
    }

    /* NAVIGATION BAR */
    .navbar {
      background: rgba(0, 64, 128, 0.9);
      padding: 15px 30px;
      display: flex;
      justify-content: space-between;
      align-items: center;
      position: sticky;
      top: 0;
      z-index: 10;
      box-shadow: 0 4px 8px rgba(0,0,0,0.2);
    }

    .navbar h1 {
      color: #fff;
      font-size: 22px;
    }

    .nav-links a {
      color: white;
      text-decoration: none;
      margin-left: 20px;
      font-weight: 600;
      transition: color 0.3s;
    }

    .nav-links a:hover {
      color: #ffcc00;
    }

    /* LOGIN BOX */
    .login-container {
      max-width: 420px;
      margin: 100px auto;
      padding: 40px 30px;
      background: rgba(255, 255, 255, 0.95);
      border-radius: 15px;
      box-shadow: 0 0 30px rgba(0, 0, 0, 0.4);
      animation: slideFadeIn 1.2s ease forwards;
      opacity: 0;
      transform: translateY(50px);
    }

    @keyframes slideFadeIn {
      to {
        opacity: 1;
        transform: translateY(0);
      }
    }

    h2 {
      text-align: center;
      color: #004080;
      margin-bottom: 25px;
      animation: fadeInUp 1s ease-out;
    }

    @keyframes fadeInUp {
      from {
        opacity: 0;
        transform: translateY(20px);
      }
      to {
        opacity: 1;
        transform: translateY(0);
      }
    }

    .form-group {
      margin-bottom: 20px;
      animation: fadeInUp 1s ease forwards;
      animation-delay: 0.4s;
    }

    label {
      display: block;
      font-weight: bold;
      margin-bottom: 6px;
    }

    input[type="text"],
    input[type="password"] {
      width: 100%;
      padding: 12px;
      border-radius: 6px;
      border: 1px solid #ccc;
      font-size: 15px;
      transition: all 0.3s ease;
    }

    input:focus {
      border-color: #004080;
      box-shadow: 0 0 5px rgba(0, 64, 128, 0.5);
      outline: none;
    }

    button {
      width: 100%;
      padding: 12px;
      background-color: #004080;
      color: white;
      border: none;
      font-size: 16px;
      font-weight: 600;
      border-radius: 6px;
      cursor: pointer;
      transition: background 0.3s ease, transform 0.2s;
    }

    button:hover {
      background-color: #002e5b;
      transform: scale(1.02);
    }

    .error {
      color: red;
      text-align: center;
      margin-top: 10px;
    }

    @media (max-width: 480px) {
      .login-container {
        margin: 60px 20px;
        padding: 30px 20px;
      }

      .nav-links {
        display: flex;
        flex-direction: column;
        gap: 10px;
        align-items: flex-end;
      }

      .nav-links a {
        margin-left: 0;
      }
    }
  </style>
</head>
<body>

<!-- Navigation Bar -->
<div class="navbar">
  <h1>Airline Portal</h1>
  <div class="nav-links">
    <a href="Admin.jsp">Admin</a>
    <a href="Plogin.html">Passenger Login</a>
    <a href="Passenger.jsp">Register</a>
  </div>
</div>

<!-- Login Box -->
<div class="login-container">
  <h2>Airline Admin Login</h2>
  <form method="post" action="admin-login">
    <div class="form-group">
      <label for="username">Username</label>
      <input type="text" id="username" name="username" placeholder="Enter your username" required/>
    </div>
    <div class="form-group">
      <label for="password">Password</label>
      <input type="password" id="password" name="password" placeholder="Enter your password" required/>
    </div>
    <button type="submit">Login</button>
  </form>
</div>

</body>
</html>
