<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="org.apache.*" %>

<html>

<head>

    <jsp:include page="../WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>
</head>
<body>

    <jsp:include page="../WEB-INF/partials/navbar.jsp" />
    <div class="container">
        <h1>Welcome, ${sessionScope.user.username} ! </h1>
        Your user ID is ${sessionScope.user.id}. <br>
        When you create an ad, your user id will be linked to it.
    </div>

</body>
</html>
