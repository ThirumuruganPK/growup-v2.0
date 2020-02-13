<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<nav class="navbar navbar-expand-md bg-dark navbar-dark fixed-top">
  <!-- Brand -->
  <a class="navbar-brand" href="home.jsp"><b>GrowUp</b></a>

  <!-- Toggler/collapsibe Button -->
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
    <span class="navbar-toggler-icon"></span>
  </button>

  <!-- Navbar links -->
  <div class="collapse navbar-collapse " id="collapsibleNavbar">
    <ul class="navbar-nav ml-auto">
    
    <li class="nav-item">
        <a  style="color:white">Welcome <b class="navbar-brand"><%= session.getAttribute("user") %></b></a>
      </li>
    <li class="nav-item">
        <a class="nav-link" href="home.jsp" >Home</a>
      </li>
    <!-- Dropdown -->
    <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
        Interview Feedback
      </a>
      <div class="dropdown-menu">
        <a class="dropdown-item" href="add.jsp">Add</a>
        <a class="dropdown-item" href="views.jsp">View</a>
      </div>
    </li>
      
      <li class="nav-item">
        <a class="nav-link" href="aboutus.jsp">About Us</a>
      </li>
      <li class="nav-item">
        <a class="nav-link logout-border" href="./LogoutServlet">Logout</a>
      </li>
    </ul>
  </div>
</nav>
</body>
</html>