<%-- 
    Document   : newAccountConfirm
    Created on : Oct 13, 2014, 6:26:44 PM
    Author     : Dan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Account Confirmation</title>
        <link href="styles/styles.css" rel="stylesheet"/>
    </head>
    <body>
        <h2>New Account Details</h2>
        <table>
            <tr>
                <td class="label">First Name</td>
                <td><%=request.getParameter("firstname")%></td>
            </tr>
            <tr>
                <td class="label">Last Name</td>
                <td><%=request.getParameter("lastname")%></td>
            </tr>
            <tr>
                <td class="label">Country</td>
                <td><%=request.getParameter("country")%></td>
            </tr>
            <tr>
                <td class="label">Email</td>
                <td><%=request.getParameter("email")%></td>
            </tr>
            <tr>
                <td class="label">Username</td>
                <td><%=request.getParameter("username")%></td>
            </tr>
        </table>
    </body>
</html>
