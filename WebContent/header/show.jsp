<%@page import="java.sql.ResultSet"%>
<%@page import="Login.Modify"%>
<%@page import="user.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
	<style >
		body{
			font-family: sans-serif;
			font-size: 15px;
			background-image: url(../images/back.jpg);
			background-size: cover;
			background-attachment: fixed;
		}
		table{
			width: 80%;
		}


		table,th,td
		{

			border:1px solid black;
			border-collapse: collapse;
			opacity: 0.95;


		}
		th,td{
			padding: 10px; 
			text-align: center;





		}
		th{
			background-color: #a70000;
			color: black;

		}

		tr:nth-child(even)
		{
			background-color: #e8e8e8;
		}
		tr:nth-child(odd)
		{
			background-color: white; 
		}
		#head{
			background-color: #3b5998;



		}

	</style>




</head>
<body>
	<table align="center">
		<tr>
			<td id="head" colspan="8">
				<h1>ScoreCard:</h1>
			</td>
		</tr>
	<tr>
			

			<th>Id:</th>
			<th>User Id:</th>
			<th>Name:</th>
			<th>TotalQuestions:</th>
			<th>Correct answer:</th>
			<th>Score:</th>
			<th>Course Id:</th>
			<th>Time:</th>
		</tr>



<%
		
		User user = (User)session.getAttribute("user");
		String userid = user.getEmailid();
		String name=user.getName();
		String s="select * from myscore where userid='"+userid+"'";
		Modify connection = new Modify();
	    ResultSet rs = connection.getResults(s);
		while(rs.next())
		{

		%>

		
		<tr>
			<td><%=rs.getString(1) %> </td>
			<td><%=rs.getString(2) %> </td>
			<td><%=rs.getString(3) %> </td>
			<td><%=rs.getString(4) %> </td>
			<td><%=rs.getString(5) %> </td>
			<td><%=rs.getString(6) %> </td>
			<td><%=rs.getString(7) %> </td>
			<td><%=rs.getString(8) %> </td>
			</tr>
			<%
			}%>
			
			</table>

</body>
</html>
			

			



		
		















	