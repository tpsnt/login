<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : login
    Created on : 2013-4-3, 0:23:05
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
        <sql:setDataSource var="abc" driver="org.apache.derby.jdbc.ClientDriver"
                           url="jdbc:derby://localhost:1527/abc"
                           user="abc"  password="abc"/>

        <%
            String name = request.getParameter("user");
        %> 
        <sql:query var="result" dataSource="${abc}">
            SELECT * FROM users where username='<%= name%>'
        </sql:query>
        ${result.rows[0].get("uid")}
        <%
            session.setAttribute("user", name);
        %>
    </body>
</html>
