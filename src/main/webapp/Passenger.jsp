<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <title>Register - FlyNow Airlines</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">
  <style>
    * {
      box-sizing: border-box;
      padding: 0;
      margin: 0;
    }

    body {
      font-family: 'Poppins', sans-serif;
      background: linear-gradient(to right, #0f2027, #203a43, #2c5364);
      min-height: 100vh;
      display: flex;
      flex-direction: column;
      align-items: center;
    }

    /* ===== NAVBAR ===== */
    .navbar {
      width: 100%;
      background-color: rgba(0, 0, 40, 0.9);
      display: flex;
      justify-content: space-between;
      align-items: center;
      padding: 15px 30px;
      position: sticky;
      top: 0;
      z-index: 999;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.5);
    }

    .navbar h1 {
      color: #00c3ff;
      font-size: 22px;
    }

    .nav-links a {
      color: #ffffff;
      text-decoration: none;
      margin-left: 25px;
      font-weight: 600;
      font-size: 15px;
      transition: color 0.3s ease;
    }

    .nav-links a:hover {
      color: #00c3ff;
    }

    /* ===== REGISTRATION CARD ===== */
    .card {
      background: rgba(255, 255, 255, 0.15);
      backdrop-filter: blur(10px);
      border-radius: 20px;
      padding: 40px 30px;
      width: 90%;
      max-width: 480px;
      margin-top: 60px;
      color: #fff;
      box-shadow: 0 8px 20px rgba(0, 0, 0, 0.4);
    }

    .card h2 {
      text-align: center;
      margin-bottom: 25px;
      color: #00c3ff;
      font-weight: 600;
    }

    .form-group {
      margin-bottom: 18px;
    }

    label {
      display: block;
      margin-bottom: 6px;
      font-size: 14px;
    }

    input, select {
      width: 100%;
      padding: 12px 15px;
      border: none;
      border-radius: 12px;
      font-size: 14px;
      background: rgba(255, 255, 255, 0.1);
      color: #fff;
      outline: none;
      transition: 0.3s;
    }

    input::placeholder {
      color: #ccc;
    }

    input:focus, select:focus {
      background: rgba(255, 255, 255, 0.2);
      box-shadow: 0 0 5px #00c3ff;
    }

    .btn-submit {
      width: 100%;
      padding: 12px;
      background: #00c3ff;
      border: none;
      border-radius: 12px;
      color: #002b4f;
      font-size: 16px;
      font-weight: bold;
      cursor: pointer;
      transition: background 0.3s ease;
    }

    .btn-submit:hover {
      background: #0097a7;
    }

    .footer-text {
      margin-top: 20px;
      font-size: 13px;
      text-align: center;
      color: #ccc;
    }

    @media (max-width: 600px) {
      .navbar {
        flex-direction: column;
        align-items: flex-start;
        gap: 10px;
      }

      .nav-links {
        display: flex;
        flex-direction: column;
        width: 100%;
      }

      .nav-links a {
        margin: 5px 0;
      }

      .card {
        padding: 30px 20px;
        margin-top: 40px;
      }
    }
  </style>
</head>
<body>

  <!-- Top Navigation Bar -->
  <div class="navbar">
    <h1>FlyNow Airlines</h1>
    <div class="nav-links">
      <a href="Admin.jsp">Admin</a>
      <a href="Plogin.html">Passenger Login</a>
      <a href="Passenger.jsp">Register</a>
    </div>
  </div>

  <!-- Registration Card -->
  <div class="card">
    <h2>Passenger Registration</h2>
    <form action="register_passenger" method="POST">
      <div class="form-group">
        <label for="fullname">Full Name</label>
        <input type="text" id="fullname" name="fullname" required placeholder="John Doe">
      </div>

      <div class="form-group">
        <label for="email">Email Address</label>
        <input type="email" id="email" name="email" required placeholder="your@email.com">
      </div>

      <div class="form-group">
        <label for="phone">Phone Number</label>
        <input type="tel" id="phone" name="phone" required placeholder="+1234567890">
      </div>

      <div class="form-group">
        <label for="gender">Gender</label>
        <select id="gender" name="gender" required>
          <option value="" disabled selected>Select Gender</option>
          <option value="Male">Male</option>
          <option value="Female">Female</option>
          <option value="Other">Other</option>
        </select>
      </div>

      <div class="form-group">
        <label for="passport">Passport Number</label>
        <input type="text" id="passport" name="passport" required placeholder="A12345678">
      </div>

      <div class="form-group">
        <label for="creditcard">Credit Card Number</label>
        <input type="text" id="creditcard" name="creditcard" maxlength="16" pattern="\d{16}" placeholder="1234 5678 9012 3456" required>
      </div>

      <div class="form-group">
        <label for="password">Create Password</label>
        <input type="password" id="password" name="password" required ">
      </div>

      <button type="submit" class="btn-submit">Register & Book</button>
    </form>
    <div class="footer-text">
       Safe. Secure. Seamless - Fly with confidence.
    </div>
  </div>

</body>
</html>
