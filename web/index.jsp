<%-- 
    Document   : index
    Created on : 2013-4-3, 0:21:53
    Author     : tigerpeasant
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns:h="http://java.sun.com/jsf/html" xmlns:f="http://java.sun.com/jsf/core">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>

        <form action="login.jsp" method="POST">
            <input type="text" name="user" value="" /><br/>
            <input type="password" name="pass" value="" /><br/>
            <input type="submit" value="登陆" />

        </form>
    </body>
</html>
