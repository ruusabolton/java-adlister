<%--
  Created by IntelliJ IDEA.
  User: ruusabolton
  Date: 8/20/18
  Time: 6:45 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<META http-equiv="refresh" content="25;URL=../index.jsp">
<html>
<head>
    <title>Navbar</title>
</head>
<body>

    <nav class="navbar navbar-light bg-light justify-content-between">
        <a class="navbar-brand" href="/ads">Ruusa's AdLister</a>
        <form class="form-inline">
            <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit" ><a href="./login.jsp">Login </a></button>
        </form>
    </nav>


</body>
</html>
