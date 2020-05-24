<%@ page import="domain.models.User" %>
<%@ page import="web.servlets.RegisterServlet" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Map" %>
<%@ page import="web.servlets.LoginServlet" %>
<%@ page import="repositories.UserRepository" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>EditProfile</title>
    <style>
        <%@include file="css/edit-profile.css" %>
    </style>
    <meta charset="UTF-8">
</head>
<body>

<%
    User elem = (User)request.getSession().getAttribute("login");
    String name = (String)request.getAttribute("name");
    User user = null;

    if (elem.getUsername().equals(name)){
        user = elem;
    }


%>

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
<main class="mainProfile">
    <form action="/edit" method="post">
    <%@include file="images/male.svg" %>
    <input type="checkbox" name="male" />
    <%@include file="images/woman.svg" %>
    <input type="checkbox" name="woman" />
    <%

    %>
        <% String value = "" ;%>
    <table style="width: 20%; display: inline">
        <tr>
            <th><h4 class="name">Име:</h4></th>
            <td><textarea class="nameInput" name="name" style="display: inline" ><%if (user.getName() == null) out.print(value); else out.print(user.getName());%></textarea></td>
            <th><h4 class="job">Работа:</h4></th>
            <td><textarea class="jobInput" name="job" style="display: inline"><%if (user.getJob() == null) out.print(value); else out.print(user.getJob());%></textarea></td>
        </tr>
    </table>
    <table class="descriptionTable">
        <tr>
            <th><h4 class="description">Информация:</h4></th>
            <td><textarea class="descriptionInput" name="description" style="display: inline"><%if (user.getDescription() == null) out.print(value); else out.print(user.getDescription());%></textarea></td>
        </tr>
    </table>
    <h2 class="contacts">Contacts</h2>
    <div class="containerContacts">
        <table>
            <tr>
                <th><h4 class="email" style="color: #012e5e; margin-top: 15px;margin-left: 50px">Имейл:</h4></th>
                <td><input type="text" class="emailInput" name="email" style="display: inline; border-radius: 5px " value="<%if (user.getEmail() == null) out.print(value); else out.print(user.getEmail());%>">
                </td>
                <th><h4 class="city" style="display: inline; color: #012e5e; margin-top: 15px;margin-left: 150px">
                    Град:</h4></th>
                <td><input type="text" class="cityInput" name="city" style="display: inline; border-radius: 5px " value="<%if (user.getCity() == null) out.print(value); else out.print(user.getCity());%>"></td>
            </tr>
            <br><br>
            <tr>
                <th><h4 class="Phone" style="color: #012e5e; margin-top: 15px;margin-left: 50px">Телефон:</h4></th>
                <td><input type="text" class="phoneInput" name="phone" style="display: inline; border-radius: 5px " value="<%if (user.getPhone() == null) out.print(value); else out.print(user.getPhone());%>">
                </td>
                <th><h4 class="address" style="display: inline; color: #012e5e; margin-top: 15px;margin-left: 150px">
                    Адрес:</h4></th>
                <td><input type="text" class="addressInput" name="address" style="display: inline; border-radius: 5px " value="<%if (user.getAddress() == null) out.print(value); else out.print(user.getAddress());%>">
                </td>
            </tr>
        </table>
    </div>

        <button class="create" name="create" type="submit">Запази</button>
    </form>
</main>

<%@include file="includes/footer.jsp" %>
</body>
</html>
