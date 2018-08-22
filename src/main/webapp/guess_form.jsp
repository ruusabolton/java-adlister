<%--
  Created by IntelliJ IDEA.
  User: ruusabolton
  Date: 8/21/18
  Time: 1:09 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Guess Form</title>
</head>
<form action="/guess" method="post">
<h1>Enter you guess</h1>

<label for="userNbr">Random Number</label>
<input name="userNbr" id="userNbr" class="form-control" type="number" min="1" max="100">

<input type="submit" class="btn btn-primary btn-block" value="submit">
</form>

</body>
</html>
