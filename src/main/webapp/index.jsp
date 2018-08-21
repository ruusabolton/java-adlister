<%@ page import = "javax.servlet.annotation.WebServlet" %>
<%@ page import="javax.servlet.http.HttpServlet" %>
<%@ page import = "javax.servlet.http.HttpServletRequest"%>
<%@ page import ="javax.servlet.http.HttpServletResponse"%>
<%@ page import ="java.io.IOException" %>



<%@  taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <title><%= "Index" %></title>
    <style><%@ include file="./css/main.css" %></style>
</head>
<body>
    <%@ include file="partials/navbar.jsp" %>


<%@ include file="partials/head.jsp" %>
<div class="fromTop">
    <p><h1>Welcome to my world.</h1></p>
</div>

</body>
</html>
