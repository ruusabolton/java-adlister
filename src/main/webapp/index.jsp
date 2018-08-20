<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title><%= "some title" %></title>
</head>
<body>
    <c:if test="true">
        <h1>Variable names should be very descriptive</h1>
    </c:if>
    <c:if test="false">
        <h1>single letter variable names are good</h1>
    </c:if>

    <%--<c:when test="${pageContext.request.method=='POST'}">--%>
    <%--<c: test="${param.username=='admin'}">Right On!--%>
        <%--<c:redirect url="/profile.jsp"/>--%>
    <%--</c:>--%>

    <%--</c:>--%>
    <%--</c:>--%>

    <%--<c:otherwise>--%>
        <%--<c:redirect url="/login.jsp"/>--%>

    <%--</c:otherwise>--%>

    <form name="login_form" action="login.jsp" method="post">

        <div class="container">
            <label id ="username"><b>Username</b></label>
            <input type="text" placeholder="Enter Username" name="username" required>

            <label id ="psw"><b>Password</b></label>
            <input type="password" placeholder="Enter Password" name="psw" required>

            <button type="submit" name="btnLogin">Login</button>
            <label>
                <input type="checkbox" checked="checked" name="remember"> Remember me
            </label>
        </div>

        <div class="container" style="background-color:#f1f1f1">
            <button type="button" class="cancelbtn">Cancel</button>
            <span class="psw">Forgot <a href="#">password?</a></span>
        </div>
    </form>
</body>
</html>
