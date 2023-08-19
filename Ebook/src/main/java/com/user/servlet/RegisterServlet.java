package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.eclipse.jdt.internal.compiler.ast.ReturnStatement;

import com.DAO.UserDAOImpl;
import com.DB.DBConnect;
import com.entity.User;

@WebServlet("/signup")
public class RegisterServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			String name=req.getParameter("name");
			String email=req.getParameter("email");
			String phone=req.getParameter("phone");
			String password=req.getParameter("password");
			String check=req.getParameter("check");
			
			//System.out.println(name+""+email+""+phone+""+password+""+check);
			User us =new User();
			us.setName(name);
			us.setEmail(email);
			us.setPhone(phone);
			us.setPassword(password);
			
			HttpSession session = req.getSession();
			if (check != null) {
			    UserDAOImpl dao = new UserDAOImpl(DBConnect.getConn());
			    boolean f2=dao.checkUser(email);
			    
			    if (f2) {
			    	boolean isInserted = dao.userRegistre(us);
				    if (isInserted) {
				        session.setAttribute("succMsg", " User Registered successfully.");
				        resp.sendRedirect("signup.jsp");
				    } else {
				        session.setAttribute("failedMsg", "Something went wrong while inserting data.");
				        resp.sendRedirect("signup.jsp");
				    }
					
				}else {
					session.setAttribute("failedMsg", "User Already Exist Try Another Email");
			        resp.sendRedirect("signup.jsp");
					}
			    
			    
			    
			    
			} else {
			    session.setAttribute("failedMsg", "Please agree to the terms and conditions.");
			    resp.sendRedirect("signup.jsp");
			}

			
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
	}
}
