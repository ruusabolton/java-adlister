<%--
  Created by IntelliJ IDEA.
  User: ruusabolton
  Date: 8/19/18
  Time: 8:58 AM
  To change this template use File | Settings | File Templates.
--%>

<%@ page import = "javax.servlet.annotation.WebServlet" %>
<%@ page import="javax.servlet.http.HttpServlet" %>
<%@ page import = "javax.servlet.http.HttpServletRequest"%>
<%@ page import ="javax.servlet.http.HttpServletResponse"%>
<%@ page import ="java.io.IOException" %>

<%@  taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login Form</title>
    <style>
        .container {
            padding: 16px;
        }
    </style>
</head>
<body>
<%--<%@include file="index.jsp" %>--%>


request.setAttribute("username", "admin");

String message;

switch (request.getAttribute("username")).toString()){

request.setAttribute("Hello, "+ ${username})
}

    <%--<c:when test="${pageContext.request.method=='POST'}">--%>
        <%--<c: test="${param.username=='admin'}">Right On!--%>
            <%--<c:redirect url="/profile.jsp"/>--%>
        <%--</c:>--%>

    <%--</c:when>--%>

<%--<c:otherwise>--%>
    <%--<c:redirect url="/login.jsp"/>--%>

<%--</c:otherwise>--%>

<%--<form name="login_form" action="login.jsp" method="post">--%>

    <%--<div class="container">--%>
        <%--<label id ="username"><b>Username</b></label>--%>
        <%--<input type="text" placeholder="Enter Username" name="username" required>--%>

        <%--<label id ="psw"><b>Password</b></label>--%>
        <%--<input type="password" placeholder="Enter Password" name="psw" required>--%>

        <%--<button type="submit" name="btnLogin">Login</button>--%>
        <%--<label>--%>
            <%--<input type="checkbox" checked="checked" name="remember"> Remember me--%>
        <%--</label>--%>
    <%--</div>--%>

    <%--<div class="container" style="background-color:#f1f1f1">--%>
        <%--<button type="button" class="cancelbtn">Cancel</button>--%>
        <%--<span class="psw">Forgot <a href="#">password?</a></span>--%>
    <%--</div>--%>
<%--</form>--%>

</body>
</html>