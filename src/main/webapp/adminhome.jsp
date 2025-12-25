<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Airlines Admin Dashboard</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600&display=swap" rel="stylesheet">
  <style>
    * {
      box-sizing: border-box;
      margin: 0;
      padding: 0;
    }

    body {
      font-family: 'Inter', sans-serif;
      background: #f4f7fc;
      color: #333;
    }

    header {
      background: #004080;
      color: white;
      padding: 20px 30px;
      text-align: center;
      font-size: 24px;
      font-weight: 600;
      box-shadow: 0 4px 8px rgba(0,0,0,0.1);
    }

    .dashboard-container {
      display: flex;
      flex-wrap: wrap;
      justify-content: center;
      padding: 40px 20px;
      gap: 30px;
    }

    .card {
      background: white;
      width: 250px;
      height: 150px;
      border-radius: 12px;
      box-shadow: 0 8px 20px rgba(0,0,0,0.08);
      text-align: center;
      display: flex;
      flex-direction: column;
      justify-content: center;
      transition: all 0.3s ease;
      cursor: pointer;
      text-decoration: none;
      color: #004080;
      font-weight: 600;
    }

    .card:hover {
      transform: translateY(-5px);
      box-shadow: 0 12px 25px rgba(0,0,0,0.15);
    }

    .card i {
      font-size: 36px;
      margin-bottom: 12px;
      color: #007BFF;
    }

    footer {
      text-align: center;
      margin-top: 40px;
      color: #777;
      font-size: 14px;
    }

    @media (max-width: 600px) {
      .card {
        width: 100%;
      }
    }
  </style>
  <!-- Font Awesome for icons -->
  <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
</head>
<body>

<header>
  Airline Admin Dashboard
</header>

<div class="dashboard-container">
  <a class="card" href="flights.jsp">
    <i class="fas fa-plane-departure"></i>
    Manage Flights
  </a>
  <a class="card" href="flightlist.jsp">
    <i class="fas fa-list"></i>
    Flight List
  </a>
  <a class="card" href="Available_Tickets.jsp">
    <i class="fas fa-ticket-alt"></i>
    Ticket Enquiry
  </a>
  <a class="card" href="Admin.jsp">
    <i class="fas fa-sign-out-alt"></i>
    Logout
  </a>
</div>

<footer>
  &copy; 2025 Airline Reservation System | Admin Panel
</footer>

</body>
</html>
