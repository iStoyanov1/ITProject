<%@ page import="domain.models.User" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="web.servlets.RegisterServlet" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashSet" %><%--
  Created by IntelliJ IDEA.
  User: Iliya Stoyanov
  Date: 4/3/2020
  Time: 9:03 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style><%@include file="css/login.css"%></style>
<html>
<head>
    <title>Login</title>
    <meta charset="UTF-8">
</head>
<body>


<% User user1 = (User)request.getSession().getAttribute("login"); %>

<header class="headerHome">

    <% if (user1 == null) { %>
    <a href="/register" class="register" type="submit">Регистрация</a><a href="/all" class="all-users" type="submit">Потребители</a>
    <% }  else {%>
    <a href="/login" class="login" type="submit">Вход</a>
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
    .register{
        color: white;
        border: 1px solid #012e5e;
        border-radius: 1px;
        display: inline-block;
        background-color: orange;
        width: 15%;
        margin-left: -55%;
        margin-top: -10px;
        padding: 10px 14px;
        cursor: pointer;
        text-decoration: none;
        text-align: center;
        max-width: 990px;
        max-height: 990px;
        margin-bottom: 1%;

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
<main class="mainLogin">
    <form action="/login" method="post">
        <h2 class="welcome">Добре дошъл!<br>Моля влезе в профила си!</h2>
        <input type="text" placeholder="    Моля въведете потребителско име:" class="usernameLogin" name="userLogin"/><br>
        <input type="password" placeholder="    Моля въведете парола:" class="passwordLogin" name="passLogin"/><br>

        <button class="signIn" type="submit">Вход</button>
    </form>
</main>
<%@include file="includes/footer.jsp"%>
</body>
</body>
</html>
