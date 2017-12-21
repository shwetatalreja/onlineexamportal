<%@page import="java.util.List"%>
<%@page import="user.UserDetail"%>
<%@page import="java.util.ArrayList"%>
<%@page import="user.User"%>
<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="Login.*" %>
<%@page import="java.sql.ResultSet" %>
<%
    String u_name=request.getParameter("u_name");
    String pswrd=request.getParameter("pswrd");
    Modify connection = new Modify();
    ResultSet rs = connection.getResults("select * from user where emailid='"+u_name+"' and password='"+pswrd+"'");
    if(rs.next()) //If user exists then show the UserMainPage else Again show the login page
    {
    
    	
    	User user = new User();
    	user.setEmailid(rs.getString(1));
    	user.setPassword(rs.getString(2));
    	user.setName(rs.getString(3));
    	user.setPhoneno(rs.getString(4));
    	user.setCity(rs.getString(5));
    	user.setState(rs.getString(6));
    	user.setCountry(rs.getString(7));
    	user.setGender(rs.getString(8));
    	
    	
	    ResultSet res = connection.getResults("select * from usertype where userid='"+u_name+"'");
	    List<UserDetail> userDetails = new ArrayList<UserDetail>();
	    while(res.next()){
	    	
	    	UserDetail userDetail = new UserDetail();
	    	userDetail.setUserId(res.getString(1));
	    	userDetail.setType(res.getString(2));
	    	userDetail.setId(res.getInt(3));
	    	userDetails.add(userDetail);
	    }
	    
	    user.setUserDetails(userDetails);
	    
	    session.setAttribute("user", user);
	    
	    //Here we have to do the next because rs will be initially pointing to Columns
	    if(user.getUserDetails().get(0).getType().equalsIgnoreCase("ADMIN"))
	    {
	    	%>
	    	
	   <jsp:include page="AdminMainPage.jsp"/>;
	    
	    
	    <%} 
	    else if(user.getUserDetails().get(0).getType().equalsIgnoreCase("USER"))
	    {
	    	
	    
	    %>
	    
	    	<jsp:include page="user/UserMainPage.jsp" />  
	   <% }else{
		   	response.sendRedirect("LandingPage.jsp?error=Invalid User. Please try again.");
		   
	   	  }
	    
		%>
	<%	 
	      
    }
    else{
    
   		response.sendRedirect("LandingPage.jsp?error=Invalid User. Please try again.");
    }
%>