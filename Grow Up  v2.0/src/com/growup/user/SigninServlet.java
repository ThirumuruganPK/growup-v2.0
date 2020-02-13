package com.growup.user;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.growup.db.MakeConnection;




public class SigninServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public SigninServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/**
		 *  DB Connection 
		 */
		MakeConnection mk=new MakeConnection();
		Connection con=mk.makeConnecton();
		
		/**
		 *  Get the data from Signin.jsp
		 */
		String uname = request.getParameter("uname");
		String upass = request.getParameter("upass");
		
		
		try {
			PreparedStatement pst = con.prepareStatement("select username,password from users where username=? and password =? ");
			pst.setString(1, uname);
			pst.setString(2, upass);
			ResultSet rs = pst.executeQuery();
			while(rs.next()){
			String user=rs.getString("username");
			String pass=rs.getString("password");
			
			if(uname.equals(user) && upass.equals(pass)){
				HttpSession session = request.getSession(false);
				session.setAttribute("user", user);
				session.setAttribute("pass", pass);
				if(session != null){
				RequestDispatcher dispatcher = request.getRequestDispatcher("home.jsp");
				dispatcher.forward(request, response);
				}
			}else{
				//will add the code soon
			}
			
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
