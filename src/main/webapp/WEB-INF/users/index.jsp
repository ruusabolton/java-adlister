<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="../../WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads" />
    </jsp:include>
</head>
<body>
<jsp:include page="../../WEB-INF/partials/navbar.jsp" />

<div class="container">
    <h1>Here Are all the users!</h1>

    <c:forEach var="user" items="users">
        <div class="col-md-6">
            <p>${user.username} ${user.id}</p>
            <p>${user.email}</p>
            <p>${user.password}</p>
        </div>
    </c:forEach>
</div>

</body>
</html>
