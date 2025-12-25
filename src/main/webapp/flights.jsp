<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Add Flight | Airline Admin</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600&display=swap" rel="stylesheet">
  <style>
    * {
      box-sizing: border-box;
      margin: 0;
      padding: 0;
    }

    body {
      font-family: 'Inter', sans-serif;
      background: linear-gradient(to right, #004080, #007BFF);
      color: #333;
      height: 100vh;
      display: flex;
      align-items: center;
      justify-content: center;
      animation: fadeBg 2s ease-in;
    }

    @keyframes fadeBg {
      from { opacity: 0; }
      to { opacity: 1; }
    }

    .form-container {
      background: #fff;
      padding: 40px;
      border-radius: 15px;
      width: 100%;
      max-width: 600px;
      box-shadow: 0 10px 30px rgba(0, 0, 0, 0.15);
      animation: slideUp 1s ease forwards;
      transform: translateY(50px);
      opacity: 0;
    }

    @keyframes slideUp {
      to {
        transform: translateY(0);
        opacity: 1;
      }
    }

    h2 {
      text-align: center;
      color: #004080;
      margin-bottom: 30px;
      font-size: 28px;
    }

    form {
      display: grid;
      gap: 20px;
    }

    label {
      font-weight: 600;
      margin-bottom: 5px;
      display: block;
      color: #333;
    }

    input[type="text"],
    input[type="time"],
    input[type="number"] {
      width: 100%;
      padding: 12px 15px;
      border: 1px solid #ccc;
      border-radius: 6px;
      font-size: 16px;
      transition: all 0.3s ease;
    }

    input:focus {
      border-color: #004080;
      box-shadow: 0 0 5px rgba(0, 64, 128, 0.3);
      outline: none;
    }

    input[type="submit"] {
      background: #004080;
      color: white;
      border: none;
      padding: 14px;
      font-size: 16px;
      font-weight: 600;
      border-radius: 8px;
      cursor: pointer;
      transition: background 0.3s ease, transform 0.2s;
    }

    input[type="submit"]:hover {
      background: #002e5b;
      transform: scale(1.02);
    }

    .nav-links {
      position: absolute;
      top: 20px;
      left: 30px;
    }

    .nav-links a {
      color: white;
      margin-right: 20px;
      text-decoration: none;
      font-weight: 600;
      transition: color 0.3s;
    }

    .nav-links a:hover {
      color: #ffcc00;
    }

    @media (max-width: 600px) {
      .form-container {
        padding: 30px 20px;
        margin: 20px;
      }
    }
  </style>
</head>
<body>

<div class="nav-links">
  <a href="flights.jsp">Flights</a>
  <a href="flightlist.jsp">Flight List</a>
  <a href="Available_Tickets.jsp">Ticket Enquiry</a>
  <a href="Admin.jsp">Logout</a>
</div>

<div class="form-container">
  <h2>Add New Flight</h2>
  <form action="AddFlightServlet" method="post">
    <div>
      <label>Flight Name:</label>
      <input type="text" name="flightName" required>
    </div>
    <div>
      <label>From:</label>
      <input type="text" name="source" required>
    </div>
    <div>
      <label>To:</label>
      <input type="text" name="destination" required>
    </div>
    <div>
      <label>Departure Time:</label>
      <input type="time" name="departure" required>
    </div>
    <div>
      <label>Arrival Time:</label>
      <input type="time" name="arrival" required>
    </div>
    <div>
      <label>Seats Capacity:</label>
      <input type="number" name="seats" required>
    </div>
    <div>
      <label>Seats Cost:</label>
      <input type="number" name="cost" required>
    </div>
    <div>
      <input type="submit" value="Add Flight">
    </div>
  </form>
</div>

</body>
</html>
