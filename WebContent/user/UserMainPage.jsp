<%@page import="java.sql.ResultSet"%>
<%@page import="Login.Modify"%>
<%@page import="user.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%
	User user = (User)session.getAttribute("user");

	if(user == null){
		response.sendRedirect("../LandingPage.jsp?error=You are not logged in. Please log in to continue.");
	}


%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<jsp:include page="../header/UserMenu.jsp"/>


