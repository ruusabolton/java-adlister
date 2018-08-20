<%@ page import = "javax.servlet.annotation.WebServlet" %>
<%@ page import="javax.servlet.http.HttpServlet" %>
<%@ page import = "javax.servlet.http.HttpServletRequest"%>
<%@ page import ="javax.servlet.http.HttpServletResponse"%>
<%@ page import ="java.io.IOException" %>



<%@  taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title><%= "some title" %></title>
</head>
<body>
    <c:if test="${isAdmin}">
        <h1>Right On Admin!!</h1>
    </c:if>
    <c:if test="false">
        <h1>Begone, Satan!!</h1>
    </c:if>


    <%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
    <%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
    <html>
    <head>
        <title>JSTL Example</title>
    </head>
    <body>
    <h1>Your Shopping Cart</h1>

    <c:choose>

    <c:when test="${cart.isEmpty()}">
        <h2>No items in your cart (yet).</h2>
    </c:when>

    <c:otherwise>
    <c:forEach var="item" items="${cart.items}">
    <div class="item">
        <h3>${item.name}</h3>
        <p>${item.description}</p>
        <p>$${item.price}</p>
        <c:if test="${item.isOnSale}">
        <p>This item is on sale!</p>
        </c:if>
        </div>
    </c:forEach>
        </c:otherwise>

    </c:choose>

    </body>
    </html>




    <%--<c:when test="${pageContext.request.method=='POST'}">--%>
    <%--<c: test="${param.username=='admin'}">Right On!--%>
        <%--<c:redirect url="/profile.jsp"/>--%>
    <%--</c:>--%>

    <%--</c:>--%>
    <%--</c:>--%>

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
