<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="../partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads" />
    </jsp:include>

</head>
<body>
<jsp:include page="../partials/navbar.jsp" />


</div class="container">
    <table >
<h1>Here Are all the ads!</h1>
        <tbody>

        <c:forEach var="ad" items="${ads}">
            <div class="col-md-6">
        <tr><td>
                <h2>${ad.title}</h2>
                <p>${ad.description}</p>
        </td></tr>
            </div>
        </c:forEach>

        </tbody>
    </table>

</div>

</body>
</html>
