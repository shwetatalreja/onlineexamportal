
<%@page import="com.mysql.jdbc.exceptions.MySQLIntegrityConstraintViolationException"%>
<%@page import="dbconnection.*"%>
<%@page import="java.sql.*"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>






<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%

	String eid=request.getParameter("eid");
	String sn=request.getParameter("sn");
	String sg=request.getParameter("sg");
	String sc=request.getParameter("sc");
	String ss=request.getParameter("ss");
	String sci=request.getParameter("sci");
	
	String sph=request.getParameter("sph");
	String pswd=request.getParameter("pswd");
	try{
	InsertQueries connection = new InsertQueries();
	String k="insert into user values('"+eid+"','" +pswd+"','"+sn+"','"+sph+"','"+sci+"','"+ss+"','"+sc+"','"+sg+"')";
	connection.insert_into(k);
	String p="insert into usertype values('"+eid+"','USER')";
	connection.insert_into(p);
	response.sendRedirect("../LandingPage.jsp?success=Thankyou for registering please Login to continue");
	}
	catch(SQLIntegrityConstraintViolationException  e){
		e.printStackTrace();
		response.sendRedirect("../LandingPage.jsp?error=User already Registered");
		
	}
	catch(Exception e)
	{
	e.printStackTrace();
		response.sendRedirect("../LandingPage.jsp?error=Server Error. please try again ");
		
		
	}
	

%>

