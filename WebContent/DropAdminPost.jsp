<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="dbconnection.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%

	String eid=request.getParameter("eid");
	String sn=request.getParameter("sn");
	String pswrd=request.getParameter("pswd");
	try{
	DropUser connection = new DropUser();
	String k="delete from user where emailid='"+eid+"' and name='"+sn+"'";
	connection.delete_from(k);
	String s="delete from usertype where emailid='"+eid+"' and type='ADMIN'";
	connection.delete_from(k);}
	
	catch(Exception e)
	{
	e.printStackTrace();
		response.sendRedirect("../LandingPage.jsp?error=Server Error. please try again ");
		
		
	}