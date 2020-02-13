package com.growup.process;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AddServlet
 */
public class AddFeedbackServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddFeedbackServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				response.setContentType("text/html");
		
			try {
				java.util.Date date = null;
				date = new SimpleDateFormat("yyyy-MM-dd").parse(request.getParameter("interviewdate"));
				java.sql.Date sqlDate = new java.sql.Date(date.getTime());
				
				// total 18 fields
				String yourname=request.getParameter("name");
				String email=request.getParameter("email");
				String areacode=request.getParameter("areacode");
				int iareacode=Integer.parseInt(areacode);
				String phone=request.getParameter("phone");
				String company=request.getParameter("company");
				/*String idate=request.getParameter("interviewdate");*/
				String place=request.getParameter("place");
				String city=request.getParameter("city");
				String rounds=request.getParameter("rounds");
				int irounds=Integer.parseInt(rounds);
				String firstround=request.getParameter("1stround");
				String firstroundQA=request.getParameter("firstroundmessage");
				String secondround=request.getParameter("2ndround");
				String secondroundQA=request.getParameter("secondroundmessage");
				String thirdround=request.getParameter("3rdround");
				String thirdroundQA=request.getParameter("thirdroundmessage");
				String fourthround=request.getParameter("4thround");
				String fourthroundQA=request.getParameter("fourthroundmessage");
				String yourmsg=request.getParameter("yourmessage");
				//insert the above field data in the feedback table
				//provide jdbc connection
				Class.forName("com.mysql.jdbc.Driver");
				Connection con=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/growup?useSSL=false","root","root");
				//insert data into feedback table
				PreparedStatement pst=con.prepareStatement("INSERT INTO feedback(`CompanyName`,`InterviewDate`,`City`,`Rounds`,`FirstRound`,`FirstRoundQuestions`,`SecondRound`,`SecondRoundQuestions`,`ThirdRound`,`ThirdRoundQuestions`,`FourthRound`,`FourthRoundQuestions`,`NeedToImprove`,`Place`,`AreaCode`,`PhoneNumber`,`Email`,`Name`) VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
				pst.setString(1, company);
				pst.setDate(2, sqlDate);
				pst.setString(3, city); 
				pst.setInt(4, irounds);
				pst.setString(5, firstround);
				pst.setString(6, firstroundQA);
				pst.setString(7, secondround);
				pst.setString(8, secondroundQA);
				pst.setString(9, thirdround);
				pst.setString(10, thirdroundQA);
				pst.setString(11, fourthround);
				pst.setString(12, fourthroundQA);
				pst.setString(13, yourmsg);
				pst.setString(14, place);
				pst.setInt(15, iareacode);
				pst.setString(16, phone);
				pst.setString(17, email);
				pst.setString(18, yourname);
				int x=pst.executeUpdate();
				
				
				if(x==1){
					
					response.sendRedirect("record_insert_msg.jsp");
			}
		} catch (ClassNotFoundException | SQLException | ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
