<%-- 
    Document   : newAccount
    Created on : Oct 6, 2014, 7:03:55 PM
    Author     : Dan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="styles/styles.css" rel="stylesheet"/>
        <script>
            function validate(form){
                //alert("Javascript enabled!!");
                form.submit();
            }
        </script>
    </head>
    <body>
        <%@ page import="java.util.List, java.util.ArrayList" %>
        <% 
            List<String> countries = new ArrayList<String>();
            countries.add("United States");
            countries.add("Mexico");
            countries.add("Canada");
            countries.add("Russia");
        %>
        <h1>New Account</h1>
        <form action="newAccountConfirm.jsp" method="post">
            <table border="0">
                <tbody>
                    <tr>
                        <td class="label">First Name</td>
                        <td><input type="text" name="firstname"/></td>
                    </tr>
                    <tr>
                        <td class="label">Last Name</td>
                        <td><input type="text" name="lastname"/></td>
                    </tr>
                    <tr>
                        <td class="label">Country</td>
                        <td>
                            <select name="country">
                                <%
                                    for(int i=0; i<countries.size(); i++){
                                %>
                                <option value="<%=countries.get(i)%>"><%=countries.get(i)%></option>
                                <%
                                    }
                                %>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td class="label">Email</td>
                        <td><input type="text" name="email"/></td>
                    </tr>
                    <tr>
                        <td class="label">Username</td>
                        <td><input type="text" name="username"/></td>
                    </tr>
                    <tr>
                        <td class="label">Password</td>
                        <td><input type="password" name="password1"/></td>
                    </tr>
                    <tr>
                        <td class="label">Password (Verify)</td>
                        <td><input type="password" name="password2"/></td>
                    </tr>
                </tbody>
            </table>
            <input type="button" value="Create" onclick="validate(this.form)"/>
        </form>
    </body>
</html>
