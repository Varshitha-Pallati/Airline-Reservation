<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Flight Search Results</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
<style>
  body {
    background-color: #f8f9fa;
    font-family: 'Segoe UI', sans-serif;
    padding: 30px;
  }
  .nav-actions {
    display: flex;
    gap: 20px;
    margin-bottom: 30px;
  }
  .nav-actions a {
    text-decoration: none;
    padding: 10px 15px;
    background-color: #0d6efd;
    color: white;
    border-radius: 5px;
    transition: 0.3s;
  }
  .nav-actions a:hover {
    background-color: #0b5ed7;
  }
  .table-container {
    background: #fff;
    padding: 25px;
    border-radius: 10px;
    box-shadow: 0px 2px 15px rgba(0,0,0,0.1);
  }
  .table th, .table td {
    vertical-align: middle;
    text-align: center;
  }
  .btn-book {
    background-color: #198754;
    color: white;
    padding: 6px 12px;
    border-radius: 5px;
    text-decoration: none;
    transition: 0.3s;
  }
  .btn-book:hover {
    background-color: #157347;
  }
</style>
</head>
<body>

<div class="nav-actions">
  <a href="BookFlight.jsp"><i class="fas fa-ticket-alt"></i> Book Ticket</a>
  <a href="MyTicket.jsp"><i class="fas fa-file-alt"></i> My Tickets</a>
  <a href="Plogin.html"><i class="fas fa-sign-out-alt"></i> Logout</a>
</div>

<%
if(request.getAttribute("result") != null){
    ResultSet rs = (ResultSet) request.getAttribute("result");
    String uid = null;
    if(session.getAttribute("passenger") != null){
        uid = (String)session.getAttribute("passenger");
    }
    String date = (String)request.getAttribute("date");
%>

<div class="table-container">
  <h3 class="mb-4 text-primary">Available Flights</h3>
  <table class="table table-striped table-bordered">
    <thead class="table-dark">
      <tr>
        <th>Flight ID</th>
        <th>Flight Name</th>
        <th>Source</th>
        <th>Destination</th>
        <th>Departure</th>
        <th>Arrival</th>
        <th>Seats</th>
        <th>Ticket Price</th>
        <th>Action</th>
      </tr>
    </thead>
    <tbody>
    <%
      while(rs.next()){
    %>
      <tr>
        <td><%= rs.getInt(2) %></td>
        <td><%= rs.getString(3) %></td>
        <td><%= rs.getString(4) %></td>
        <td><%= rs.getString(5) %></td>
        <td><%= rs.getString(6) %></td>
        <td><%= rs.getString(7) %></td>
        <td><%= rs.getInt(8) %></td>
        <td>$<%= rs.getInt(9) %></td>
        <td>
          <a class="btn-book" href="Booking.jsp?FlightId=<%=rs.getString(2)%>&&flightname=<%=rs.getString(3)%>&&Source=<%=rs.getString(4)%>&&Destination=<%=rs.getString(5)%>&&Departure=<%=rs.getString(6)%>&&Arrival=<%=rs.getString(7)%>&&cost=<%=rs.getString(9)%>&&departure-date=<%=date%>">
            Book Now
          </a>
        </td>
      </tr>
    <%
      }
    %>
    </tbody>
  </table>
</div>

<%
} else {
%>
  <div class="alert alert-warning mt-4">No result found</div>
<%
}
%>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
