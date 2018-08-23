<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="../partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>
</head>
<body>
    <jsp:include page="../partials/navbar.jsp" />

    <div class="container">
        <h1>Viewing your profile ${username}.</h1>

        <div class="container">
            <h1>Here Are all the ads!</h1>

            <c:forEach var="ad"  items="${ads}">
                <h1>${ad.title}</h1>
                <p>${ad.description}</p>
                <span>${ad.userId}</span>
            </c:forEach>
        </div>
    </div>

</body>
</html>
