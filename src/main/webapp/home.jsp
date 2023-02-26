<%@ page import="tech.qiwei.learning.Model.UserModel" %><%--
  Created by IntelliJ IDEA.
  User: limqi
  Date: 25/2/2023
  Time: 2:20 pm
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" errorPage="error.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <link rel="icon" type="image/x-icon" href="/img/favicon.ico">
    <title>CATS - Home</title>
</head>
<body>
    <%

        response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");

        UserModel userModel = (UserModel) session.getAttribute("userModel");

        if (userModel == null) {
            response.sendRedirect("/login.jsp");
        }
    %>

    <div style="margin: 10em auto">
        <div class="container" style="display: flex; align-items: center; justify-content: center; ">
            <h1 style="display: flex; align-items: center">Home</h1>
        </div>
        <hr>
        <div class="container" style="text-align: center">
            <p>Logged in as: ${userModel.getUsername()}</p>
            <button id="logoutBtn" class="btn btn-danger">Log out</button>
        </div>
    </div>

</body>
<script src="https://code.jquery.com/jquery-3.6.3.min.js" integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
<script src="js/home.js"></script>
</html>
