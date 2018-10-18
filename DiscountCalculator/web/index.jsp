<%--
  Created by IntelliJ IDEA.
  User: quet
  Date: 10/18/18
  Time: 10:53 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>
<html>
<style type="text/css">
  .login {
    height:380px; width:350px;
    margin:0;
    padding:10px;
    border:1px #CCC solid;
  }
  .login input {
    padding:5px; margin:5px
  }
</style>
<body>
<form method="post" action="/index">
  <div class="login">
    <h2>Login</h2>
    <span>Product</span>
    <input type="text" name="Product" size="30"/>
    <span>Description</span>
    <input type="text" name="Description" size="30"/>
    <span>Price</span>
    <input type="text" name="Price" size="30"/>
    <span>Discount Percent</span>
    <input type="text" name="Discount Percent" size="30"/>
    <input type="submit" value="Calculate Discount"/>
  </div>
</form>
</body>
</html>
