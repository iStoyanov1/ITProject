<%@ page import="domain.models.User" %>
<%@ page import="repositories.UserRepository" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Iliya Stoyanov
  Date: 4/2/2020
  Time: 1:15 PM
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All Users</title>
    <meta charset="UTF-8">

</head>
<body>

<%
   User userSession = (User)request.getSession().getAttribute("login");
    System.out.println();
%>

<header class="headerHome">
    <% if (userSession != null) { %>
         <a href="/user?=<%=userSession.getUsername()%>" class="login" type="submit">Вход</a><a href="/user?=<%=userSession.getUsername()%>" class="register" type="submit">Регистрация</a>
         <a href="/all" class="all-users" type="submit">Потребители</a>
    <% } else {%>
         <a href="/login" class="login" type="submit">Вход</a><a href="/register" class="register" type="submit">Регистрация</a>
         <a href="/all" class="all-users" type="submit">Потребители</a>
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
<main class="main-all" style="margin-top: 10px; margin-bottom: 20%" >
<table style="background-color: orange; width: 100%">
    <tr>
        <th>Потребители</th>
        <th>Работа</th>
        <th>Информация</th>
    </tr
        <%
            String value = "No data";

            for (User user : UserRepository.users) {%>

            <tr>
                <td style="text-align: center">
                   <a href="/user?=<%=user.getUsername()%>"><%if (user.getName() == null) out.print(value); else out.print(user.getName());%></a>
                </td>
                <td  style="text-align: center">
                    <%if (user.getJob() == null) out.print(value); else out.print(user.getJob());%>
                </td>
                <td  style="text-align: center">
                    <%if (user.getDescription() == null) out.print(value); else out.print(user.getDescription());%>
                </td>
            </tr>
        <% } %>
</table>
</main>
    <%@include file="includes/footer.jsp"%>
</body>
</html>
