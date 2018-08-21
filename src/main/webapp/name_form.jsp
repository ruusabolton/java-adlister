<%--
  Created by IntelliJ IDEA.
  User: ruusabolton
  Date: 8/21/18
  Time: 11:22 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Name_form</title>
</head>
<body>

    <form action="/nameme" method="POST">
        <div class="form-group">
            <label for="username">Username</label>
            <input name="username" id="username" class="form-control" type="text">

            <label for="password">Password</label>
            <input  name="password" id="password" class="form-control" type="password">

        <input type="submit" class="btn btn-primary btn-block" value="submit">
        </div>
    </form>

</body>
</html>
