<%@page import="com.Dao.Database"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="ISO-8859-1">
  <title>Your Ticket Details - SkyJet</title>
  <link href="https://fonts.googleapis.com/css2?family=Outfit:wght@400;600&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    body {
      font-family: 'Outfit', sans-serif;
      background: linear-gradient(135deg, #2e86de, #48c6ef);
      min-height: 100vh;
      color: #fff;
    }

    .navbar {
      background-color: rgba(0, 0, 0, 0.8);
      padding: 15px 40px;
      display: flex;
      justify-content: space-between;
      align-items: center;
      box-shadow: 0 2px 10px rgba(0,0,0,0.3);
    }

    .navbar h1 {
      font-size: 24px;
      color: #00ffd5;
    }

    .navbar a {
      color: white;
      text-decoration: none;
      margin-left: 20px;
      font-size: 16px;
      font-weight: 500;
      transition: color 0.3s;
    }

    .navbar a:hover {
      color: #00ffd5;
    }

    .container {
      max-width: 1100px;
      margin: 60px auto;
      background-color: #ffffff;
      padding: 40px;
      border-radius: 20px;
      box-shadow: 0 10px 30px rgba(0,0,0,0.25);
      animation: slideIn 1s ease;
      color: #333;
    }

    @keyframes slideIn {
      0% {
        opacity: 0;
        transform: translateY(40px);
      }
      100% {
        opacity: 1;
        transform: translateY(0);
      }
    }

    h2 {
      text-align: center;
      margin-bottom: 30px;
      font-size: 32px;
      color: #2e86de;
    }

    table {
      width: 100%;
      border-collapse: collapse;
      margin-top: 20px;
      font-size: 15px;
    }

    th, td {
      padding: 14px;
      text-align: center;
      border: 1px solid #ddd;
    }

    th {
      background-color: #2e86de;
      color: white;
      font-size: 15px;
    }

    tr:nth-child(even) {
      background-color: #f8faff;
    }

    tr:hover {
      background-color: #f0f0f0;
    }

    .no-booking {
      text-align: center;
      font-size: 18px;
      color: #888;
      margin-top: 30px;
    }

    .btn {
      display: inline-block;
      margin-top: 30px;
      background-color: #2e86de;
      color: white;
      padding: 12px 25px;
      border-radius: 8px;
      text-decoration: none;
      font-size: 16px;
      transition: background 0.3s ease;
      text-align: center;
    }

    .btn:hover {
      background-color: #1b4f72;
    }

    .nav-actions {
      display: flex;
      gap: 15px;
    }

    @media (max-width: 768px) {
      .navbar {
        flex-direction: column;
        align-items: flex-start;
      }

      .nav-actions {
        flex-direction: column;
        margin-top: 10px;
      }

      table, th, td {
        font-size: 13px;
      }
    }
  </style>
</head>
<body>

<!-- NAVIGATION BAR -->
<div class="navbar">
  <h1><i class="fas fa-plane-departure"></i> SkyJet</h1>
  <div class="nav-actions">
    <a href="BookFlight.jsp"><i class="fas fa-ticket-alt"></i> Book Ticket</a>
    <a href="MyTicket.jsp"><i class="fas fa-file-alt"></i> My Tickets</a>
    <a href="Plogin.html"><i class="fas fa-sign-out-alt"></i> Logout</a>
  </div>
</div>

<!-- MAIN CONTAINER -->
<div class="container">
  <h2>Your Booked Ticket Details</h2>

  <%
      String passengerEmail = (String) session.getAttribute("passenger");

      if (passengerEmail == null) {
          response.sendRedirect("login.jsp");
      } else {
          Connection con = Database.getConnection();
          String sql = "SELECT b.booking_id, b.flight_id, b.flight_name, b.departure_date, b.arrival, b.source, b.destination, b.status, f.available_seats " +
                       "FROM bookings b " +
                       "JOIN flights f ON b.flight_id = f.flightId " +
                       "WHERE b.passenger_id = (SELECT passenger_id FROM passenger WHERE email = ?)";

          PreparedStatement ps = con.prepareStatement(sql);
          ps.setString(1, passengerEmail);
          ResultSet rs = ps.executeQuery();

          if (rs.next()) {
              out.println("<table>");
              out.println("<tr><th>Booking ID</th><th>Flight ID</th><th>Flight Name</th><th>Departure</th><th>Arrival</th><th>From</th><th>To</th><th>Status</th><th>Seats Left</th></tr>");
              do {
                  out.println("<tr>");
                  out.println("<td>" + rs.getString("booking_id") + "</td>");
                  out.println("<td>" + rs.getString("flight_id") + "</td>");
                  out.println("<td>" + rs.getString("flight_name") + "</td>");
                  out.println("<td>" + rs.getString("departure_date") + "</td>");
                  out.println("<td>" + rs.getString("arrival") + "</td>");
                  out.println("<td>" + rs.getString("source") + "</td>");
                  out.println("<td>" + rs.getString("destination") + "</td>");
                  out.println("<td>" + rs.getString("status") + "</td>");
                  out.println("<td>" + rs.getInt("available_seats") + "</td>");
                  out.println("</tr>");
              } while (rs.next());
              out.println("</table>");
          } else {
              out.println("<p class='no-booking'>You haven't booked any tickets yet.</p>");
          }

          rs.close();
          ps.close();
          con.close();
      }
  %>

  <a href="Phome.jsp" class="btn"><i class="fas fa-arrow-left"></i> Back to Home</a>
</div>

</body>
</html>
