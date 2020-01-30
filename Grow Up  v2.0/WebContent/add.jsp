<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


<link rel="stylesheet" type="text/css" href="css/footerstyle.css">
<title>Add Feedback</title>
<!-- Icons font CSS-->
    <link href="vendorform/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
    <link href="vendorform/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <!-- Font special for pages-->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">

    <!-- Vendor CSS-->
    <link href="vendorform/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="vendorform/datepicker/daterangepicker.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="cssform/main.css" rel="stylesheet" media="all">
</head>
<body>
<!-- header -->
<%@ include file="homenavbar.jsp" %>

<!-- section -->
<div class="page-wrapper bg-gra-03 p-t-45 p-b-50">
        <div class="wrapper wrapper--w790">
            <div class="card card-5">
                <div class="card-heading">
                    <h2 class="title">Interview Feedback Form</h2>
                </div>
                <div class="card-body">
                    <form action="./AddFeedbackServlet" method="POST" >
                        <div class="form-row">
                            <div class="name">Your Name</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-5" type="text" name="name">
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">Email</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-5" type="email" name="email">
                                </div>
                            </div>
                        </div>
                        <div class="form-row m-b-55">
                            <div class="name">Phone</div>
                            <div class="value">
                                <div class="row row-refine">
                                    <div class="col-3">
                                        <div class="input-group-desc">
                                            <input class="input--style-5" type="text" name="areacode" value="+91">
                                            <label class="label--desc">Area Code</label>
                                        </div>
                                    </div>
                                    <div class="col-9">
                                        <div class="input-group-desc">
                                            <input class="input--style-5" type="text" name="phone">
                                            <label class="label--desc">Phone Number</label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">Company</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-5" type="text" name="company">
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">Date</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-5" type="date" name="interviewdate">
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">Place</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-5" type="text" name="place">
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">City</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-5" type="text" name="city">
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">Rounds</div>
                            <div class="value">
                                <div class="input-group">
                                    <div class="rs-select2 js-select-simple select--no-search">
                                        <select name="rounds">
                                            <option disabled="disabled" selected="selected">Choose option</option>
                                            <option>1</option>
                                            <option>2</option>
                                            <option>3</option>
                                            <option>4</option>
                                        </select>
                                        <div class="select-dropdown"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">1st round</div>
                            <div class="value">
                                <div class="input-group">
                                    <div class="rs-select2 js-select-simple select--no-search">
                                        <select name="1stround">
                                            <option disabled="disabled" selected="selected">Choose option</option>
                                            <option value="Technical">Technical</option> 
							                <option value="Technical Written">Technical Written</option> 
							                <option value="Programming">Programming</option>
							                <option value="Technical F2F">Technical F2F</option>
							                <option value="Technical 2nd round F2F">Technical 2nd round F2F </option>
							                <option value="Group Discussion">Group Discussion</option>
							                <option value="HR Discussion">HR Discussion</option> 
							                <option value="Aptitude">Aptitude</option>
                                        </select>
                                        <div class="select-dropdown"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">1st round Question's</div>
                            <div class="value">
                            <div class="form-group">
				              <textarea class="form-control" name="firstroundmessage" rows="4" placeholder="What they Ask ?"></textarea>
				              <div class="validation"></div>
				            </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">2nd round</div>
                            <div class="value">
                                <div class="input-group">
                                    <div class="rs-select2 js-select-simple select--no-search">
                                        <select name="2ndround">
                                            <option disabled="disabled" selected="selected">Choose option</option>
                                            <option value="Technical">Technical</option> 
							                <option value="Technical Written">Technical Written</option> 
							                <option value="Programming">Programming</option>
							                <option value="Technical F2F">Technical F2F</option>
							                <option value="Technical 2nd round F2F">Technical 2nd round F2F </option>
							                <option value="Group Discussion">Group Discussion</option>
							                <option value="HR Discussion">HR Discussion</option> 
							                <option value="Aptitude">Aptitude</option>
                                        </select>
                                        <div class="select-dropdown"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">2nd round Question's</div>
                            <div class="value">
                            <div class="form-group">
				              <textarea class="form-control" name="secondroundmessage" rows="4" placeholder="What they Ask ?"></textarea>
				              <div class="validation"></div>
				            </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">3rd round</div>
                            <div class="value">
                                <div class="input-group">
                                    <div class="rs-select2 js-select-simple select--no-search">
                                        <select name="3rdround">
                                            <option disabled="disabled" selected="selected">Choose option</option>
                                            <option value="Technical">Technical</option> 
							                <option value="Technical Written">Technical Written</option> 
							                <option value="Programming">Programming</option>
							                <option value="Technical F2F">Technical F2F</option>
							                <option value="Technical 2nd round F2F">Technical 2nd round F2F </option>
							                <option value="Group Discussion">Group Discussion</option>
							                <option value="HR Discussion">HR Discussion</option> 
							                <option value="Aptitude">Aptitude</option>
                                        </select>
                                        <div class="select-dropdown"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">3rd round Question's</div>
                            <div class="value">
                            <div class="form-group">
				              <textarea class="form-control" name="thirdroundmessage" rows="4" placeholder="What they Ask ?"></textarea>
				              <div class="validation"></div>
				            </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">4th round</div>
                            <div class="value">
                                <div class="input-group">
                                    <div class="rs-select2 js-select-simple select--no-search">
                                        <select name="4thround">
                                            <option disabled="disabled" selected="selected">Choose option</option>
                                            <option value="Technical">Technical</option> 
							                <option value="Technical Written">Technical Written</option> 
							                <option value="Programming">Programming</option>
							                <option value="Technical F2F">Technical F2F</option>
							                <option value="Technical 2nd round F2F">Technical 2nd round F2F </option>
							                <option value="Group Discussion">Group Discussion</option>
							                <option value="HR Discussion">HR Discussion</option> 
							                <option value="Aptitude">Aptitude</option>
                                        </select>
                                        <div class="select-dropdown"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">4th round Question's</div>
                            <div class="value">
                            <div class="form-group">
				              <textarea class="form-control" name="fourthroundmessage" rows="4" placeholder="What they Ask ?"></textarea>
				              <div class="validation"></div>
				            </div>
                            </div>
                        </div>
                        <!-- <hr> -->
                        <div class="form-row">
                            <div class="name">Need to Improve Things</div>
                            <div class="value">
                            <div class="form-group">
				              <textarea class="form-control" name="yourmessage" rows="4" placeholder="What are the Areas will improve in future  from this interview?"></textarea>
				              <div class="validation"></div>
				            </div>
                            </div>
                        </div>                
                        <div>
                            <button class="btn btn--radius-2 btn--red" type="submit" style="border-bottom: solid 2px #34495e; margin-right: 20px;">Submit</button>
                            <button class="btn btn--radius-2 btn--red" type="reset" style="border-bottom: solid 2px #34495e">Reset</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!-- Jquery JS-->
    <script src="vendorform/jquery/jquery.min.js"></script>
    <!-- Vendor JS-->
    <script src="vendorform/select2/select2.min.js"></script>
    <script src="vendorform/datepicker/moment.min.js"></script>
    <script src="vendorform/datepicker/daterangepicker.js"></script>

    <!-- Main JS-->
    <script src="jsform/global.js"></script>


<!-- footer -->
<footer id="sticky-footer" class="py-4 bg-dark text-white-50">
    <div class="container text-center">
      <small>Copyright &copy; Team Modern Developers</small>
    </div>
  </footer>
</body>
</html>