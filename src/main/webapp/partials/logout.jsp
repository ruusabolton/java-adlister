<%--
  Created by IntelliJ IDEA.
  User: ruusabolton
  Date: 8/20/18
  Time: 10:59 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Logout</title>
</head>
    <body>

    <%

                String username=(String)session.getAttribute("username");
                if(username!=null)
                {
                    out.println("<form class=\"fromTop form-inline\">\n  You are currently logged in. <a href=\"./index.jsp\">Logout Now. </form>\n" );

                }
                else
                {                    session.removeAttribute("username");

                    out.println( "<button class=\"btn btn-outline-success my-2 my-sm-0\" type=\"submit\"> <a href=\"../login.jsp\">Logout </a></button></a>        ");
                }



            %>



    </body>
</html>
