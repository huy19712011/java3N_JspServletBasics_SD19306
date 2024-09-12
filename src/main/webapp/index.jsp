<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@page import="com.example.java3n_jspservletbasics_sd19306.FunUtils" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP</title>
</head>
<body>
<h1><%= "Hello from JSP page!" %>
</h1>

<%--1. expressions--%>
<%--     <% = ...   %>      --%>
<p>Time on server: <%= new java.util.Date() %> </p>
<p><%=3 + 5%></p>
<p><%=69 > 70%></p>
<p>Converting to UPPER CASE: <%= new String("Hello sd19306").toUpperCase()%></p>

<%--2.scriplets--%>
<%
    for (int i = 1; i < 6; ++i) {
        out.println(i);
        out.println("<br>");
    }
%>

<%--3. declarations--%>
<%!
    String makeItLower(String str) {
        return str.toLowerCase();
    }
%>
<p><%= makeItLower("HELLO SD19306")%></p>

<%--4. Calling java code from JSP--%>
<p><%= com.example.java3n_jspservletbasics_sd19306.FunUtils.makeItUpper("hi sd19306")%></p>
<p><%= FunUtils.makeItUpper("hi sd19306")%></p>

<br/>
<a href="hello-servlet">Hello Servlet</a>
</body>
</html>
