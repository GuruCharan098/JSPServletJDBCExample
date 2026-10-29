<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.util.List" %>  
<%@ page import=" com.demoJSP.Studentinfo"%>  
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Information </title>
</head>
<body>
        <h2>Student Info:</h2>
      
   <% 
    String name="Rahul"; 
    String course = "Java full stack";
    int marks = 85;   
    %>
    
    <p> Name: <%= name %></p>
    <p> Course: <%= course %></p>
    <p> Marks: <%= marks %></p>

        <h1>Student database Records: </h1>
        
        <table border="1" cellpadding="8">
            <tr>
                <th> Id </th>
                <th> Name </th>
                <th> Email </th>
                <th> Course </th>
            </tr>
            
            <%
                List<Studentinfo> students = 
                                    (List<Studentinfo>) request.getAttribute("Students");
              
                 if(students != null && !students.isEmpty()){
                	 for(Studentinfo s : students){              		
                		 
             %>
                      <tr>
                              <td><%= s.getId() %></td>
                              <td><%= s.getName() %></td>
                              <td><%= s.getEmail() %></td>
                              <td><%= s.getCourse() %></td>                    
                     </tr>
             <% 
                	   
                	 }
                 }else {
             %>
              <tr> <td colspan='4'>No Student records found.</td></tr>
            <%
                 }
            %>
        </table>
</body>
</html>