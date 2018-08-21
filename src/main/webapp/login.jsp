<%--
  Created by IntelliJ IDEA.
  User: ruusabolton
  Date: 8/19/18
  Time: 8:58 AM
  To change this template use File | Settings | File Templates.
--%>



<%@  taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core"  %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<% String username = request.getParameter("username");--%>
    <%--String password = request.getParameter("password");%>--%>
<%--<% request.setAttribute("username", username); %>--%>
<%--<%--%>


    <%--if (request.getMethod().equalsIgnoreCase("post")) {--%>
        <%--String username = request.getParameter("username");--%>
        <%--String password = request.getParameter("password");--%>
        <%--if (username.equals("admin") && password.equals("password")) {--%>
            <%--response.sendRedirect("../profile.jsp");--%>
        <%--}else{return;}--%>
    <%--}--%>


<%--//--%>
<%--//try {--%>
<%--//    if (request.getParameter("username").equals("admin") && password.equals("password")) {--%>
<%--//        response.sendRedirect("/profile.jsp");--%>
<%--//    } else {--%>
<%--//        out.println("<h1>Begone, " + username + ", you devil.</h1><br/>");--%>
<%--//    }--%>
<%--//--%>
<%--//        }--%>
<%--//catch(Exception e){--%>
<%--//    e.printStackTrace();--%>
<%--//    }--%>
<%--%>--%>


<html>

<head>
    <style><%@ include file="./css/main.css" %></style>


                <% try{
        if (request.getMethod().equalsIgnoreCase("post")) {
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            if (username.equals("admin") && password.equals("password")) {
                out.println("Welcome " + username + " Right on!");
                session.setAttribute("username", username);
                response.sendRedirect("/profile.jsp");
            }else{
                out.println("<div class='rejected'> Rejected!,  " + username + " <a href=\"login.jsp\">Try again</a></div>");
            }
        }}catch(Exception e){e.printStackTrace();}
    %>
    <title>Login Form</title>



</head>
    <body>
        <nav>
            <%@ include file="partials/navbar.jsp" %>
        </nav>
        <title>Login Form</title>
        <%@include file="partials/head.jsp" %>

        <%
        String username =  (String)session.getAttribute("username");

        if(username!=null)
        {
            out.println("Welcome  "+username+"  , <a href=\"../login.jsp\" >Login</a>");
        }
        else
        {
        %>

        <form class="fromTop" name="login_form" action="login.jsp" method="post">
            <div class="container">
                <label id ="username"><b>Username</b></label>
                <input type="text" placeholder="Enter Username" name="username" value="<%= session.getAttribute("username") %>"required>
                <label id ="psw"><b>Password</b></label>
                <input type="password" placeholder="Enter Password" name="password" value="<%= session.getAttribute("password") %>"required>
            </div>

            <div class="container">
                <button class="btn btn-dark" type="submit" value="Login" name="btnLogin">Login</button>
                <button class="btn " type="reset" value="reset">Cancel</button>
                <hr>
                <label>
                    <input type="checkbox" checked="checked" name="remember"> Remember me
                </label><br>
                <span class="psw"> <a href="#">Forgot password?</a></span>
            </div>
        </form>
        <%
        }
        %>

    </body>
</html>