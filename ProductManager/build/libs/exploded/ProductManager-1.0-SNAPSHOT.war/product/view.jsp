<%--
  Created by IntelliJ IDEA.
  User: quet
  Date: 10/22/18
  Time: 10:15 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>View product</title>
</head>
<body>
<h1>Product details</h1>
<p>
    <a href="/products">Back to product list</a>
</p>
<table>
    <tr>
        <td>Name: </td>
        <td>${requestScope["product"].getName()}</td>
    </tr>
    <tr>
        <td>Type: </td>
        <td>${requestScope["product"].getType()}</td>
    </tr>
    <tr>
        <td>Vendor: </td>
        <td>${requestScope["product"].getVendor()}</td>
    </tr>
</table>
</body>
</html>
