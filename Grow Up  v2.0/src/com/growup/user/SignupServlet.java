package com.growup.user;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.growup.db.MakeConnection;


public class SignupServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public PreparedStatement pst;
    public SignupServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			MakeConnection mk=new MakeConnection();
			Connection con=mk.makeConnecton();
			pst=con.prepareStatement("insert into users(username,password,email) values(?,?,?)");
			String username = request.getParameter("name");
			String password = request.getParameter("pass");
			String mailid = request.getParameter("email");
			pst.setString(1, username);
			pst.setString(2, password);
			pst.setString(3, mailid);
			int x=pst.executeUpdate();
			
			/*SESSION START*/
			HttpSession session = request.getSession();
			session.setAttribute("username", username);
			session.setAttribute("password", password);
			session.setAttribute("mailid", mailid);
			//forward the session to signin page
			
			if(x==1){
				RequestDispatcher dispatcher = request.getRequestDispatcher("welcome_msg.jsp");
				dispatcher.forward(request, response);
				/*SESSION END*/
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
