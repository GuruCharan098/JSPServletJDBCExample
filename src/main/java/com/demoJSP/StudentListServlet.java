package com.demoJSP;
import com.demoJSP.Studentinfo;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@WebServlet("/student-list")
public class StudentListServlet extends HttpServlet {

	    @Override 
	    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
	    	
	    	List<Studentinfo> students = new ArrayList<>();
	    	
	    	String sql = "SELECT id, name, email, course From student_detailsdb.studenttable";
	    	
	    	try(Connection con = DBConnectionApp.getConnection();
	    			PreparedStatement ps = con.prepareStatement(sql);
	    			ResultSet rs = ps.executeQuery()){
	    		
	    		while(rs.next()) {
	    			Studentinfo student = new Studentinfo();
	    			
	    			student.setId(rs.getInt("id"));
	    			student.setName(rs.getString("name"));
	    			student.setEmail(rs.getString("email"));
	    			student.setCourse(rs.getString("course"));

	    			students.add(student);
	    		}
	    		
	    		req.setAttribute("Students", students);
	    		req.getRequestDispatcher("/student-list.jsp").forward(req, res);
	    		
	    	}catch(SQLException e) {
	    		e.getMessage();
	    		throw new ServletException("Unable to retrieve students records", e);
	    	}
	    	
	    }
}
