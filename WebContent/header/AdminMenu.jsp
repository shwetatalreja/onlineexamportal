<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang=''>
<head>
   <meta charset='utf-8'>
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <style>
   
		@import url(http://fonts.googleapis.com/css?family=Source+Sans+Pro:500);
/* 2f4b87 */
/* 2f4b87 */
/* #1f325d */
/* Menu CSS */#cssmenu {
  width: auto;
}
#cssmenu,
#cssmenu ul,
#cssmenu ul li,
#cssmenu ul li a {
  padding: 0;
  margin: 0;
  line-height: 1;
  font-family: 'Source Sans Pro', sans-serif;
  font-weight: 500;
  font-size: 16px;
  color: #ffffff;
  -webkit-transition: all ease .3s;
  -o-transition: all ease .3s;
  -moz-transition: all ease .3s;
  -ms-transition: all ease .3s;
  transition: all ease .3s;
}
#cssmenu:before,
#cssmenu:after,
#cssmenu > ul:before,
#cssmenu > ul:after {
  content: "";
  display: table;
}
#cssmenu:after,
#cssmenu > ul:after {
  clear: both;
}
#cssmenu a {
  text-shadow: 0 1px 1px rgba(0, 0, 0, 0.2);
}
#cssmenu ul {
  background: #3b5998;
  border-radius: 3px;
  border: 1px solid #2b4479;
  border: 1px solid #2d4373;
  -webkit-box-shadow: 0 1px 2px rgba(2, 2, 2, 0.25), inset 0 1px 1px rgba(255, 255, 255, 0.15);
  -o-box-shadow: 0 1px 2px rgba(2, 2, 2, 0.25), inset 0 1px 1px rgba(255, 255, 255, 0.15);
  -moz-box-shadow: 0 1px 2px rgba(2, 2, 2, 0.25), inset 0 1px 1px rgba(255, 255, 255, 0.15);
  -ms-box-shadow: 0 1px 2px rgba(2, 2, 2, 0.25), inset 0 1px 1px rgba(255, 255, 255, 0.15);
  box-shadow: 0 1px 2px rgba(2, 2, 2, 0.25), inset 0 1px 1px rgba(255, 255, 255, 0.15);
}
#cssmenu ul > li {
  float: left;
  list-style: none;
}
#cssmenu ul > li > a {
  display: block;
  text-decoration: none;
  padding: 15px 44px;
  position: relative;
}
#cssmenu ul > li > a:hover {
  background: #2d4373;
  -webkit-box-shadow: inset 0 0 1px #1e2e4f;
  -o-box-shadow: inset 0 0 1px #1e2e4f;
  -moz-box-shadow: inset 0 0 1px #1e2e4f;
  -ms-box-shadow: inset 0 0 1px #1e2e4f;
  box-shadow: inset 0 0 1px #1e2e4f;
  -webkit-transition: all ease .3s;
  -o-transition: all ease .3s;
  -moz-transition: all ease .3s;
  -ms-transition: all ease .3s;
  transition: all ease .3s;
}
#cssmenu ul > li > a:hover:before {
  content: "";
  z-index: 2;
  position: absolute;
  border: 1px solid white;
  border-top: 0;
  border-bottom: 0;
  border-right: 0;
  width: 100%;
  height: 100%;
  top: 0;
  left: -1px;
  opacity: .2;
}
#cssmenu ul > li > a:hover:after {
  content: "";
  z-index: 2;
  position: absolute;
  border: 1px solid white;
  border-top: 0;
  border-bottom: 0;
  border-left: 0;
  width: 100%;
  height: 100%;
  top: 0;
  right: -1px;
  opacity: .2;
}
#cssmenu > ul > li > ul {
  opacity: 0;
  visibility: hidden;
  position: absolute;
}
#cssmenu > ul > li:hover > ul {
  opacity: 1;
  visibility: visible;
  position: absolute;
  border-radius: 0 0 3px 3px;
  -webkit-box-shadow: none;
  -o-box-shadow: none;
  -moz-box-shadow: none;
  -ms-box-shadow: none;
  box-shadow: none;
}
#cssmenu > ul > li > ul {
  width: 200px;
  position: absolute;
}
#cssmenu > ul > li > ul > li {
  float: none;
  position: relative;
}
#cssmenu > ul > li > ul > li > ul {
  opacity: 0;
  visibility: hidden;
  position: absolute;
}
#cssmenu > ul > li > ul > li:hover > ul {
  opacity: 1;
  visibility: visible;
  position: absolute;
}
#cssmenu > ul > li > ul > li > ul {
  left: 200px;
  top: 1px;
  width: 200px;
}
#cssmenu > ul > li > ul > li > ul > li {
  float: none;
}

   
   
   
   
   
   
   
   
   
   
   
   
   
   </style>
   <script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
   <script src="script.js"></script>
   <title>CSS MenuMaker</title>
</head>
<body>

<div id='cssmenu'>
<ul>
   <li><a href='header/profile.jsp'><span>profile</span></a></li>
   <li class='active has-sub'><a href='#'><span>Add</span></a>
      <ul>
         <li class='has-sub'><a href='user/UserRegistrationForm2.jsp'><span>User</span></a>
            
         </li>
         <li class='has-sub'><a href='user/UserRegistrationForm.jsp'><span>Admin</span></a>
            
         </li>
         <li class='has-sub'><a href=''><span>Course</span></a>
            
         </li>
      </ul>
   </li>
   <li><a href='#'><span>Block</span></a>
   	 <ul>
         <li class='has-sub'><a href='DropUser.jsp'><span>User</span></a>
            
         </li>
         <li class='has-sub'><a href='DropUser.jsp'><span>Admin</span></a>
            
         </li>
          <li class='has-sub'><a href='#'><span>Course</span></a>
            
         </li>
         
         
         
      </ul>
   
   
   
   
   
   </li>
   <li class='last'><a href='admin/Addquestions.jsp'><span>Questions</span></a></li>
   <li class='last' style="float:right">
   	<a href="user/LogOut.jsp">
   	<img src='../images/logout.png' style="width:16px;"/>
   	<span>Logout</span></a>
   </li>
   
   
   
</ul>

	
   


</div>

</body>
<html>