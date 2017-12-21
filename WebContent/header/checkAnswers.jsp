<%@page import="java.util.Calendar"%>
<%@page import="dbconnection.InsertQueries"%>
<%@page import="user.User"%>

<%@page import="java.sql.ResultSet"%>
<%@page import="Login.Modify"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	String noofques=request.getParameter("noofques");
    String courseid=request.getParameter("courseid");
    int u=Integer.parseInt(noofques);
    String id[] = new String[u];
    int i;
    String correct[] = new String[u];
    String query="(";
    for( i=1;i<=u;i++)
    {
    	String c=request.getParameter("ques"+i);
    	String d=request.getParameter("ans"+i);
    	id[i-1]=c;
    	correct[i-1]=d;
    	if(i==u)
    		query=query+"'"+c+"')";
    	else
    		query=query+"'"+c+"',";
    
    }
    String k="select * from questions where id in "+query;
    System.out.println(k);
    Modify connection = new Modify();
    ResultSet rs = connection.getResults(k);
    int count=0;
    i=0;
    while(rs.next())
    {
    	if(rs.getString(8).equalsIgnoreCase(correct[i]))
    	{
    		count=count+1;
    		
    	}
    	i++;
    }
    
    User user = (User)session.getAttribute("user");

	if(user == null){
		response.sendRedirect("../LandingPage.jsp?error=You are not logged in. Please log in to continue.");}

	String userid = user.getEmailid();
	String name=user.getName();
	
    String insrt="insert into score(userid,courseid,totalques,correctans) values('"+userid+"','"+courseid+"','"+noofques+"','"+count+"')";
	
    
    
    InsertQueries conection = new InsertQueries();
    conection.insert_into(insrt);
    Calendar calendar = Calendar.getInstance();
    
    
    java.util.Date currentDate = calendar.getTime();

    String insertinto="insert into myscore(userid,name,totalques,correctans,score,courseid,time) values('"+userid+"','"+name+"','"+noofques+"','"+count+"','"+count+"','"+courseid+"','"+currentDate+"')";
   	System.out.println(insertinto);
   	InsertQueries build = new InsertQueries();
    build.insert_into(insertinto);
   
    response.sendRedirect("show.jsp");
    
    
    
    %>