<%--
  Created by IntelliJ IDEA.
  User: ruusabolton
  Date: 8/19/18
  Time: 8:58 AM
  To change this template use File | Settings | File Templates.
--%>



<%@  taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core"  %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%     String username = (request.getParameter("username") != null) ? request.getParameter("username") : "";%>
<% request.setAttribute("username", username); %>
<%

try {
    if (request.getParameter("username").equals("admin")) {
        response.sendRedirect("profile.jsp");
    } else {
        out.println("<h1>Begone, " + username + ", you devil.</h1><br/>");
    }

        }
catch(Exception e){
    e.printStackTrace();
    }
%>
<html>
<head>
    <title>Login Form</title>
<style>
    .container {
        padding: 25px;
        background-color: powderblue;
        border: 10px solid greenyellow;
        box-shadow: 5px 2px green;
        width: 300px;
        heigth: 100px;
        font-size: larger;
        text-align: center;
    }
    textarea {
        width: 150px;
        height: 50px;
    }
</style>
</head>
<body>


<%--<c:if test="${empty username}" >--%>

<form name="login_form" action="login.jsp" method="post">

    <div class="container">
        <label id ="username"><b>Username</b></label>
        <input type="text" placeholder="Enter Username" name="username" required />
    <hr>
        <label id ="psw"><b>Password</b></label>
        <input type="password" placeholder="Enter Password" name="psw" />
        <br>
            <hr>
        <label>
            <input type="checkbox" checked="checked" name="remember"> Remember me
        </label>
        <button type="submit" name="btnLogin">Login</button>

        <button type="reset" class="cancelbtn" value="reset">Cancel</button>
    </div>
</form>



</body>
</html>