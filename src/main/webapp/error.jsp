<%--
  Created by IntelliJ IDEA.
  User: limqi
  Date: 26/2/2023
  Time: 12:42 am
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isErrorPage="true" %>
<html>
<head>
    <title>Error</title>
</head>
<body>
    <div class="container" style="display: flex; align-items: center">
      <p>Oops something went wrong！</p>
    </div>
    <p>Exception Caught:</p>
    <div class="container">
        <%= exception.getMessage() %>
    </div>
</body>
</html>
