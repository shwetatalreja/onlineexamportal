<%@page import="java.util.List"%>
<%@page import="utility.RandomNumberGenerator"%>
<%@page import="java.sql.ResultSetMetaData"%>

<%@page import="java.sql.ResultSet"%>
<%@page import="Login.Modify"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">



<html>
<head>

		<style >
	body{
		font-family: arial;
		font-size: 13px;
		background-color: #ffffff;
	}
	.container
	{
		width:70%;
		margin: 20px auto;
		overflow: auto;
	}
	.pull-left{
		float: left;
		height: 50px;


	}
	header{
		background-color: #3b5998;
		color: white;
		padding: 5px 10px;
		overflow: auto;
		font-family: 16px;

	}
</style>
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
</head>
<body>
<div class="container">
		<header>
			<div class="pull-left">
				<h2>Online Test:</h2>
			</div>
		</header>
	<% String s=request.getParameter("courseId");
	
	int questionToShow = 3;

	Modify connection = new Modify();
	String countQuery = "select count(*) from questions where courseid='"+s+"'";
	
	ResultSet rsCountQuery = connection.getResults(countQuery);
	if(rsCountQuery.next()){
		
		int count = rsCountQuery.getInt(1);
		
		String h = "select * from questions where courseid='"+s+"'";
		
	  	ResultSet rs = connection.getResults(h);
	  	
	  	
	  	int i=0;
	  	
	  	List<Integer> arrRandomQuestions = RandomNumberGenerator.randomgenerator(questionToShow , count);%>
	  	<form action="checkAnswers.jsp" method=post>
	  	<% while(rs.next() && i < questionToShow )
	  	{	
	  		
	  		if(arrRandomQuestions.contains(rs.getRow())){
	  		
	  		
	  			i++;
	  		
	  			%>
	  			<h3>Ques:<%=i%> <%=rs.getString(3) %></h3>
	  			
				<br>
				<h3>A-<%=rs.getString(4)%></h3><br>
				<h3>B-<%=rs.getString(5)%></h3><br>
				<h3>C-<%=rs.getString(6)%></h3><br>
				<h3>D-<%=rs.getString(7)%></h3><br>
				<input type="hidden" name="ques<%=i%>" value=<%=rs.getString(1) %>>
				
				<select name='ans<%=i%>'>
    			<option>-Correct answer-</option>
   				 <option value='A'>A</option>
    			<option value='B'>B</option>
    			<option value='C'>C</option>
    			<option value='D'>D</option>
    			</select>
	  			
	  		<%}
	  			
	  			
	        
	        }%>
	  	<input type="hidden" name='courseid' value=<%=s%>>
	  	<input type="hidden" name="noofques" value=<%=questionToShow%>><br>
	  	<input type=submit value=submit>
	  	</form>
	  <% 	
	  	
	  	
	} 	%>
	  	
	  	
	  	
	  	
	  	
	  	
	  	
	  	
		
		
	
	
	
	
  	
  		 
  		
  	
  		 
  		 
  	 






	
</body>


</html>



