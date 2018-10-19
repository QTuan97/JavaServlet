<%--
  Created by IntelliJ IDEA.
  User: quet
  Date: 10/19/18
  Time: 10:20 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Interest Money</title>
</head>
<body>
<%
    double money = Double.parseDouble(request.getParameter("Input"));
    double rate = Double.parseDouble(request.getParameter("Interest"))/100;
    int month = Integer.parseInt(request.getParameter("Month"));
    double result = money + ( money * rate * month);

    if(rate > 100 || rate < 0){
        out.println("Invaild interest rate");
    }else if(money <= 0){
        out.println("Invaild money input");
    }else if(month <= 0 ){
        out.println("Invaild month input");
    }else{
        if(month == 1) {
            out.println("Your interest money after " + month + " month is: " + result);
        }
        else{
            out.println("Your interest money after " + month + " months is: " + result);
        }
    }
%>
</body>
</html>
