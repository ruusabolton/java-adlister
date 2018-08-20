<%--
  Created by IntelliJ IDEA.
  User: ruusabolton
  Date: 8/19/18
  Time: 8:58 AM
  To change this template use File | Settings | File Templates.
--%>

<%--Inside of login.jsp write some code to check the submmitted values.
If the username submitted is "admin", and the password is "password", redirect the user to the profile page,
otherwise, redirect back to the login form.--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%     String username = (request.getParameter("username") != null) ? request.getParameter("username") : "";%>
<% request.setAttribute("username", username); %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<html>
<head>
    <title>Profile Page</title>
</head>
<body>


<h1>Form Accepted</h1>
<p><b>Welcome,  Administrator!</b>
</p>


</body>
</html>
