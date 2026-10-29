<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Information</title>
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
    

</body>
</html>