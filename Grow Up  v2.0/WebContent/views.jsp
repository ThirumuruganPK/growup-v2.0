<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="stylesheet" type="text/css" href="css/viewstyle.css">
<link rel="stylesheet" type="text/css" href="css/footerstyle.css">
<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<!-- Latest compiled and minified CSS -->
<title>View</title>
</head>
<body>
<!-- header -->
<%@ include file="homenavbar.jsp" %>
<!-- section -->
<h2 class="viewtop">Search the Interview Feedback</h2>
<div class="container viewcontatiner">
  <form class="form-inline form-inline-extra" action="/action_page.php">
    <div class="form-group">
      <input type="text" class="form-control form-margin" id="email" placeholder="Company Name" name="companyname">
    </div>
    <div class="form-group">
      <input type="date" class="form-control form-margin" id="pwd" placeholder="Interview Date" name="interviewdate">
    </div>
    <div class="form-group">
      <input type="text" class="form-control form-margin" id="email" placeholder="Place" name="place">
    </div>
    <button type="submit" class="btn btn-info"><i class="fa fa-search"></i> Search</button>
  </form>
</div>
<div class="container-fluid">
<br>          
  <table class="table table-dark">
    <thead>
      <tr>
        <th>Firstname</th>
        <th>Lastname</th>
        <th>Email</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>John</td>
        <td>Doe</td>
        <td>john@example.com</td>
      </tr>
      <tr>
        <td>Mary</td>
        <td>Moe</td>
        <td>mary@example.com</td>
      </tr>
      <tr>
        <td>July</td>
        <td>Dooley</td>
        <td>july@example.com</td>
      </tr>
    </tbody>
  </table>
</div>
<!-- footer -->
<footer id="sticky-footer" class="py-4 bg-dark text-white-50">
    <div class="container text-center">
      <small>Copyright &copy; Team Modern Developers</small>
    </div>
  </footer>
</body>
</html>