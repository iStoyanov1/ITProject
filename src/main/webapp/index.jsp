<%@ page import="domain.models.User" %><%--
  Created by IntelliJ IDEA.
  User: Iliya Stoyanov
  Date: 4/2/2020
  Time: 1:15 PM
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style><%@include file="css/index.css"%></style>
<html>
<head>
    <title>Index</title>
    <meta charset="UTF-8">

</head>
<body>

<% User user1 = (User)request.getSession().getAttribute("login"); %>

<header class="headerHome">

    <% if (user1 == null) { %>
    <a href="/login" class="login" type="submit">Вход</a><a href="/register" class="register" type="submit">Регистрация</a>
    <a href="/all" class="all-users" type="submit">Потребители</a>
    <% }  else {%>
    <a href="/login" class="login" type="submit">Изход</a>
    <% } %>
</header>
<style>
    .headerHome{
        max-width: 990px;
        margin: auto;
        padding-top: 5%;
        background-color: #012e5e;
        padding-left: 45%;
    }
    .login{
        color: white;
        border: 1px solid #012e5e;
        border-radius: 1px;
        display: inline-block;
        background-color: orange;
        width: 15%;
        margin-left: -50%;
        margin-top: -10px;
        padding: 10px 14px;
        cursor: pointer;
        text-decoration: none;
        text-align: center;
        max-width: 990px;
        max-height: 990px;
        margin-bottom: 1%;

    }
    .register{
        color: white;
        border: 1px solid #012e5e;
        border-radius: 1px;
        display: inline-block;
        background-color: orange;
        width: 15%;
        margin-top: -10px;
        padding: 10px 14px;
        cursor: pointer;
        text-align: center;
        text-decoration: none;
        margin-left: 5px;
        margin-bottom: 1%;
        max-width: 990px;
        max-height: 990px;
    }
    .all-users{
        color: white;
        border: 1px solid #012e5e;
        border-radius: 1px;
        display: inline-block;
        background-color: orange;
        width: 15%;
        margin-top: -10px;
        padding: 10px 14px;
        cursor: pointer;
        text-align: center;
        text-decoration: none;
        margin-left: 5px;
        margin-bottom: 1%;
        max-width: 990px;
        max-height: 990px;
    }
</style>
<main class="main">

    <h2 class="title"> Technical University of Varna - PTI-IT </h2><br>
    <style>
        .title{
            margin-top: -30%;
            text-align: center;
            font-style: inherit;
            color: #012e5e;
        }
    </style>
</main>
<%@include file="includes/footer.jsp"%>
</body>
</html>
