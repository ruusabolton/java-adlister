<%--
  Created by IntelliJ IDEA.
  User: ruusabolton
  Date: 8/21/18
  Time: 12:57 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Color Form</title>
</head>
<body>

    <form method="post" action ="/color">
        <label for="usercolor">Select your Color</label>
        <input name="usercolor" id="usercolor" class="form-control" type="color">


        <input type="submit" class="btn btn-primary btn-block" value="submit">
    </form>
</body>
</html>
