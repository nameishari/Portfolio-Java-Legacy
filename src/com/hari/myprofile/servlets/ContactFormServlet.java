package com.hari.myprofile.servlets;

import java.io.IOException;

import javax.mail.MessagingException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.JsonObject;
import com.hari.myprofile.bo.ContactFormBo;
import com.hari.myprofile.vo.ContactFormVO;


/***
 * This the servlet called by send message button. 
 * @author Hari Hara Kumar
 *
 */
@WebServlet("/ContactFormServlet")
public class ContactFormServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ContactFormServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @throws IOException
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		JsonObject myObj = new JsonObject();
		try {
			ContactFormVO conFormVo = new ContactFormVO();
			conFormVo.setUserName(request.getParameter("userName"));

			conFormVo.setEmail(request.getParameter("email"));
			conFormVo.setPhone(request.getParameter("phone"));
			conFormVo.setMessage(request.getParameter("message"));
			ContactFormBo conFormBo = new ContactFormBo();
			conFormBo.sendMail(conFormVo);
			myObj.addProperty("success", true);

		} catch (MessagingException me) {
			System.out.println(me);
			
			myObj.addProperty("success", false);
		} catch (Exception e) {
			System.out.println(e);
			myObj.addProperty("success", false);
		} 
		response.getWriter().println(myObj.toString());
	}

}
