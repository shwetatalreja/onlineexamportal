<%@page import="dbconnection.InsertQueries"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<% String ques=request.getParameter("ques");
	String optiona=request.getParameter("optiona");
	String optionb=request.getParameter("optionb");
	String optionc=request.getParameter("optionc");
	String optiond=request.getParameter("optiond");
	String correct=request.getParameter("correct");
	String id=request.getParameter("id");
	try{
	InsertQueries connection = new InsertQueries();
	String k="insert into questions(courseid,question,optionA,optionB,optionC,optionD,correct_answer) values('"+id+"','" +ques+"','"+optiona+"','"+optionb+"','"+optionc+"','"+optiond+"','"+correct+"')";
	System.out.println(k);
	connection.insert_into(k);%>
	<% response.sendRedirect("Addquestions.jsp");%>
	
	<%}
	
	catch(Exception e)
	{
	e.printStackTrace();
		response.sendRedirect("../LandingPage.jsp?error=Server Error. please try again ");
		
		
	}
	
	%>