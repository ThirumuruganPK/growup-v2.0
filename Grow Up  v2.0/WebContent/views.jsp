<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %> 
<%@ page import="java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="stylesheet" type="text/css" href="css/viewstyle.css">
<link rel="stylesheet" type="text/css" href="css/footerstyle.css">
<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">

<!-- Latest compiled and minified CSS -->
<title>View</title>
</head>
<body>
<!-- header -->
<%@ include file="homenavbar.jsp" %>
<!-- section -->
<h2 class="viewtop">Search the Interview Feedback</h2>
<div class="container viewcontatiner">
  <form class="form-inline form-inline-extra" action="views.jsp">
    <div class="form-group">
      <input type="text" class="form-control form-margin" id="email" placeholder="Company Name" name="companyname">
    </div>
    <!-- <div class="form-group">
      <input type="date" class="form-control form-margin" id="pwd" placeholder="Interview Date" name="interviewdate">
    </div> -->
    <div class="form-group">
      <input type="text" class="form-control form-margin" id="email" placeholder="Place" name="place">
    </div>
    <button type="submit" class="btn btn-info"><i class="fa fa-search"></i> Search</button>
  </form>
</div>
<div class="container-fluid">
<br>  
<div class="table-responsive-sm">        
  <table class="table table-bordered">
    <thead class="thead-dark">
      <tr>
        <th>Should Improve</th>
        <th>1st Round</th>
        <th>1st Round QA</th>
        <th>2nd Round</th>
        <th>2nd Round QA</th>
        <th>3rd Round</th>
        <th>3rd Round QA</th>
        <th>4th Round</th>
        <th>4th Round QA</th>
      </tr>
    </thead>
    <tbody>
    <% 
    try{
    String companyname =request.getParameter("companyname");
    /* java.util.Date date = null;
	date = new SimpleDateFormat("yyyy-MM-dd").parse(request.getParameter("interviewdate"));
	java.sql.Date sqlDate = new java.sql.Date(date.getTime()); */
    
    String place =request.getParameter("place");
  //provide jdbc connection
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/growup?useSSL=false","root","root");
	/* String q1="select * from feedback where CompanyName=? or Place=?;"; */
	
	PreparedStatement ps=con.prepareStatement("select * from feedback where CompanyName=? and Place=?");
	ps.setString(1, companyname);
	/* ps.setDate(2, sqlDate); */
	ps.setString(2, place);
	
	ResultSet rs=ps.executeQuery();
	while(rs.next()){
		%>
		<tr>
        <td><% out.print(rs.getString("NeedToImprove")); %></td>
        <td><% out.print(rs.getString("FirstRound")); %></td>
        <td><% out.print(rs.getString("FirstRoundQuestions")); %></td>
        <td><% out.print(rs.getString("SecondRound")); %></td>
        <td><% out.print(rs.getString("SecondRoundQuestions")); %></td>
        <td><% out.print(rs.getString("ThirdRound")); %></td>
        <td><% out.print(rs.getString("ThirdRoundQuestions")); %></td>
        <td><% out.print(rs.getString("FourthRound")); %></td>
        <td><% out.print(rs.getString("FourthRoundQuestions")); %></td>
      </tr>
      <%
	}
    %>
    <% }catch(Exception e){
    	e.printStackTrace();
    }
    %>
      
    </tbody>
  </table>
</div>
</div>
<!-- footer -->
<footer id="sticky-footer" class="py-4 bg-dark text-white-50">
    <div class="container text-center">
      <small>Copyright &copy; Team Modern Developers</small>
    </div>
  </footer>
</body>
</html>