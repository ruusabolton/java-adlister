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
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<html>
<head>
    <style><%@ include file="./css/main.css" %></style>


    <title>Profile Page</title>
</head>
    <body>

            <%@ include file="partials/navbar.jsp" %>

        <%@ include file="/partials/head.jsp" %>
            <%@ include file="/partials/logout.jsp" %>



            <div class="fromTop">
            <p><h1><b>Welcome,  <%= session.getAttribute("username") %>!</b></h1>
                <hr>
                Click on your name to log out.</p>
               session.removeAttribute("username");

        </div>

    </body>
</html>
