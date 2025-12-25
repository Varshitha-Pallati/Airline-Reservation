<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="ISO-8859-1">
  <title>Book Your Flight | SkyJet Airlines</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;600&display=swap" rel="stylesheet">
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    body {
      font-family: 'Montserrat', sans-serif;
      background: linear-gradient(135deg, #1f4037, #99f2c8);
      min-height: 100vh;
      position: relative;
      overflow-x: hidden;
    }

    /* Animated background */
    body::before {
      content: "";
      position: fixed;
      top: 0;
      left: 0;
      height: 100%;
      width: 100%;
      background: url('https://images.unsplash.com/photo-1573843981267-be1999ff37e8?auto=format&fit=crop&w=1470&q=80') no-repeat center center fixed;
      background-size: cover;
      filter: brightness(0.6);
      z-index: -1;
      animation: zoom 30s infinite alternate ease-in-out;
    }

    @keyframes zoom {
      0% { transform: scale(1); }
      100% { transform: scale(1.05); }
    }

    .navbar {
      background: rgba(0,0,0,0.7);
      padding: 15px 40px;
      color: #fff;
      display: flex;
      justify-content: space-between;
      align-items: center;
      box-shadow: 0 4px 12px rgba(0,0,0,0.5);
    }

    .navbar h1 {
      font-size: 24px;
      color: #00ffd5;
    }

    .navbar a {
      color: white;
      margin-left: 20px;
      text-decoration: none;
      font-weight: 500;
      transition: color 0.3s;
    }

    .navbar a:hover {
      color: #00ffd5;
    }

    .container {
      max-width: 600px;
      margin: 60px auto;
      background: rgba(255, 255, 255, 0.95);
      border-radius: 15px;
      padding: 40px;
      box-shadow: 0 8px 30px rgba(0,0,0,0.3);
      animation: fadeSlideIn 1.3s ease;
    }

    @keyframes fadeSlideIn {
      0% {
        opacity: 0;
        transform: translateY(30px);
      }
      100% {
        opacity: 1;
        transform: translateY(0);
      }
    }

    h2 {
      text-align: center;
      margin-bottom: 30px;
      color: #333;
    }

    .form-group {
      position: relative;
      margin-bottom: 25px;
    }

    label {
      position: absolute;
      top: 12px;
      left: 15px;
      font-size: 14px;
      color: #999;
      pointer-events: none;
      transition: 0.3s ease;
    }

    input:focus + label,
    input:not(:placeholder-shown) + label {
      top: -12px;
      left: 10px;
      background: white;
      padding: 0 5px;
      font-size: 12px;
      color: #007BFF;
    }

    input[type="text"],
    input[type="date"] {
      width: 100%;
      padding: 14px 15px;
      font-size: 16px;
      border: 1px solid #ccc;
      border-radius: 10px;
      background: white;
      margin-top: 8px;
    }

    button {
      width: 100%;
      padding: 14px;
      font-size: 16px;
      border: none;
      background: #007BFF;
      color: white;
      border-radius: 10px;
      cursor: pointer;
      font-weight: bold;
      transition: background 0.3s ease, transform 0.2s;
    }

    button:hover {
      background: #0056b3;
      transform: scale(1.02);
    }

    @media screen and (max-width: 600px) {
      .container {
        margin: 40px 20px;
        padding: 30px 20px;
      }
    }
  </style>
</head>
<body>

<!-- NAVIGATION BAR -->
<div class="navbar">
  <h1>SkyJet</h1>
  <div>
    <a href="BookFlight.jsp">Book Ticket</a>
    <a href="MyTicket.jsp">My Tickets</a>
    <a href="Plogin.html">Logout</a>
  </div>
</div>

<!-- BOOKING FORM -->
<div class="container">
  <h2>Book Your Flight</h2>
  <form action="BookFlight" method="post">

    <div class="form-group">
      <input type="text" id="from" name="from" placeholder=" " required>
      <label for="from">From</label>
    </div>

    <div class="form-group">
      <input type="text" id="to" name="to" placeholder=" " required>
      <label for="to">To</label>
    </div>

    <div class="form-group">
      <input type="date" id="departure-date" name="departure-date" required>
      <label for="departure-date">Departure Date</label>
    </div>

    <button type="submit">Book Flight</button>
  </form>
</div>

</body>
</html>
