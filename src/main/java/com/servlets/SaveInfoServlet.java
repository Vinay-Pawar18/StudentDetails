package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Student;
import com.helper.FactoryProvider;



public class SaveInfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public SaveInfoServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			// name,address fetch
			String name = request.getParameter("name");
			String address = request.getParameter("address");
			Student student = new Student(name, address, new Date());

			Session s = FactoryProvider.getFactory().openSession();
			Transaction tx = s.beginTransaction();
			s.save(student);
			tx.commit();
			s.close();
			response.setContentType("text/html");
			PrintWriter out=response.getWriter();
			out.println("<h1 style='text-align:center;'>Info is added successfully</h1>");
			out.println("<h1 style='text-align:center;'><a href='all_info.jsp'>To View all Details click here</a></h1>");
			 


		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
