<%--
  Created by IntelliJ IDEA.
  User: ruusabolton
  Date: 8/21/18
  Time: 1:10 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Results page</title>
</head>
<body>
    <h1>You entered ${userNbr}.</h1>

    <h1>The random number is ${correctNumber}.</h1>

    <c:if test="<{isNotCorrect}>" />
    <a href="guess_form.jsp">Guess Again.</a>


</body>
</html>
