<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Calculator Window</title>
</head>
<body>
       <h1>Simple Calculator</h1>
       
       <form method="post">
            First Number: 
            <input type="number" name="num1" step="any" required>
            <br><br>
            
            Second Number: 
            <input type="number" name="num2" step="any" required>
            <br><br>
            
            <button type="submit">Calculate Sum</button>           
       </form>
       
       <%
          if("POST".equalsIgnoreCase(request.getMethod())){
        	  try{
        		  double a = Double.parseDouble(request.getParameter("num1"));
        		  
        		  double b = Double.parseDouble(request.getParameter("num2"));
        		  
        		  double sum = a+b; 
        %>
        
        <h3>Result: <%= sum %></h3>

        <% 
        	  }catch(NumberFormatException e){
        %>
        <p>Please Enter valid number</p>       		  		  
       <% 
        	  }
          }
       %>

</body>
</html>