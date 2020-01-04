package com.growup.user;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.growup.db.MakeConnection;


public class SignupServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
  
    public SignupServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("name");
		String password = request.getParameter("pass");
		String mailid = request.getParameter("email");
		MakeConnection mk=new MakeConnection();
		mk.makeConnecton();
		try {
			mk.pst.setString(1, username);
			mk.pst.setString(2, password);
			mk.pst.setString(3, mailid);
			int x=mk.pst.executeUpdate();
			if(x==1){
				response.sendRedirect("welcome_msg.jsp");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		//get from user
		//make a db connection
		//store it on db
		
	}

}
