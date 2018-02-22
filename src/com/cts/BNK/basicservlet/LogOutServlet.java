package com.cts.BNK.basicservlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LogOutServlet
 */
public class LogOutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public LogOutServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession sesion = request.getSession();
		sesion.invalidate();
		PrintWriter out = response.getWriter();
		out.print("<head><style> .center {margin: auto;width: 30%;height: 30%;  background-color:white;color: black;border: 10px solid #b0e0e6;padding: 10px;margin-top: 15%;}</style></head>");
		out.print("<body background='images/bg1.jpg'><div  class=center><div align='center';color='red'><h2>You have been sucessfully LoggedOut<h2><br><a href='HomePage.jsp'>Click Here to Log In again.</a></div></div><br>");
		out.print("</body>");
	}

}
