<%@ page import="domain.models.User" %>
<%@ page import="web.servlets.RegisterServlet" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.HashSet" %>
<%@ page import="java.util.List" %>
<%@ page import="web.servlets.LoginServlet" %>
<%@ page import="repositories.UserRepository" %>

<%--
  Created by IntelliJ IDEA.
  User: Iliya Stoyanov
  Date: 4/3/2020
  Time: 10:16 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>UserProfile</title>
    <style>
        <%@include file="css/edit-profile.css" %>
    </style>
    <meta charset="UTF-8">
</head>
<body>

<%
    User userSession  = (User)request.getSession().getAttribute("login");
    User user = (User)request.getAttribute("elem");


%>

<header class="headerHome">

    <% if (userSession == null) { %>
    <a href="/login" class="login" type="submit">Вход</a><a href="/register" class="register" type="submit">Регистарция</a>
    <% }  else {%>
    <a href="/logout" class="login" type="submit">Изход</a><a href="/all" class="all-users" type="submit">Потребители</a>
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
<button type="submit" name="logOut"></button>
<main class="mainProfile">

    <%
        String value = "";
    %>
    <%@include file="images/male.svg" %>
    <input type="checkbox" name="male"  />
    <%@include file="images/woman.svg" %>
    <input type="checkbox" name="woman"/>

        <script type="text/javascript">
            let msg = "<%="Добре дошъл, "+userSession.getUsername()%>";
            alert(msg);
        </script>

        <table style="width: 20%; display: inline">
            <tr>
                <th><h4 class="name">Име:</h4></th>
                <td><%if (user.getName() == null) out.print(value); else out.print(user.getName());%></td>
                <th><h4 class="job">Работа:</h4></th>
                <td><%if (user.getJob() == null) out.print(value); else out.print(user.getJob());%></td>
            </tr>
        </table>
        <table class="descriptionTable">
            <tr>
                <th><h4 class="description">Информация:</h4></th>
                <td><%if (user.getDescription() == null) out.print(value); else out.print(user.getDescription());%></td>
            </tr>
        </table>
        <h2 class="contacts">Контакти</h2>
        <div class="containerContacts">
            <table>
                <tr>
                    <th><h4 class="email" style="color: #012e5e; margin-top: 15px;margin-left: 50px">Имейл:</h4></th>
                    <td><%if (user.getEmail() == null) out.print(value); else out.print(user.getEmail());%>
                    </td>
                    <th><h4 class="city" style="display: inline; color: #012e5e; margin-top: 15px;margin-left: 150px">
                        Град:</h4></th>
                    <td><%if (user.getCity() == null) out.print(value); else out.print(user.getCity());%></td>
                </tr>
                <br><br>
                <tr>
                    <th><h4 class="Phone" style="color: #012e5e; margin-top: 15px;margin-left: 50px">Телефон:</h4></th>
                    <td><%if (user.getPhone() == null) out.print(value); else out.print(user.getPhone());%>
                    </td>
                    <th><h4 class="address" style="display: inline; color: #012e5e; margin-top: 15px;margin-left: 150px">
                        Адрес:</h4></th>
                    <td><%if (user.getAddress() == null) out.print(value); else out.print(user.getAddress());%>
                    </td>
                </tr>
            </table>
            <% if (userSession.getUsername().equals(user.getUsername())) { %>
            <a href="/edit?=<%=user.getUsername()%>" class="create" name="edit" type="submit">Редактирай</a>
            <% } %>

    </div>

</main>

<%@include file="includes/footer.jsp" %>
</body>
</html>
