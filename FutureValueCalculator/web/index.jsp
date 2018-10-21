<%--
  Created by IntelliJ IDEA.
  User: quet
  Date: 10/21/18
  Time: 12:53 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Future Calculator</title>
</head>
<form action = "/calculate" method="post">
<body>
<h1>Future Value Calculator</h1>
<p>Inventment Amount</p>
<br>
<input type="text" name ="Amount"/>
<p>Yearly Interest Rate</p>
<input type="text" name="Rate">
<p>Number of Years</p>
<input type="text" name="Years">
<br>
<br>
<input type="submit" value="Calculate">
</body>
</form>
</html>

