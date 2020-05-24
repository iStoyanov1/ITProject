<%@ page import="domain.models.User" %><%--
  Created by IntelliJ IDEA.
  User: Iliya Stoyanov
  Date: 4/3/2020
  Time: 8:26 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style><%@include file="css/register.css"%></style>
<html>
<head>
    <title>Register</title>
    <meta charset="UTF-8">
</head>
<body>

<header class="headerHome">

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
</style>
<main class="registerMain">
    <form method="post" action="/register">
    <h2 class="create">Създаване на регистрация</h2>

    <input type="text" class="username" placeholder="  Моля въведете потребителско име:" name="username">
    <input type="password" class="password" placeholder="  Моля въведете парола:" name="password">
    <input type="password" class="password" placeholder="  Моля повторете паролата:" name="confirmPassword">

    <button class="registerButton" type="submit">Регистрация</button>
    </form>
</main>
<%@include file="includes/footer.jsp"%>
</body>
</html>
