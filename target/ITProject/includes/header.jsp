<%--
  Created by IntelliJ IDEA.
  User: Iliya Stoyanov
  Date: 4/3/2020
  Time: 8:27 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<% User user1 = (User)request.getSession().getAttribute("login"); %>

<header class="headerHome">

    <% if (user1 == null) { %>
         <a href="/login" class="login" type="submit">Sign in</a><a href="/register" class="register" type="submit">Register</a>
    <% }  else {%>
      <a href="/login" class="login" type="submit">Sign out</a>
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
</style>
</body>
</html>
