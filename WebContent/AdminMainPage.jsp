<%@page import="user.UserDetail"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="user.User"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	User user = (User)session.getAttribute("user");


	

	if(user == null){
		response.sendRedirect("LandingPage.jsp?error=You are not logged in. Please log in to continue.");
	}

	List<UserDetail> userdetails = user.getUserDetails();
	boolean isAdmin=false;
	for(int i=0;i<userdetails.size();i++)
	{
		UserDetail u= userdetails.get(i);
		if(u.getType().equalsIgnoreCase("ADMIN"))
		{
			isAdmin=true;
			break;
		}
		
		
		
	}
	if(isAdmin)
	{
		
		
		
		
	




%>



<jsp:include page="header/AdminMenu.jsp"/>	
<%
}

	else
	{
		response.sendRedirect("LandingPage.jsp?error=You are not authorized to access this page.Please login as admin..");

}
%>