<%--
  Created by IntelliJ IDEA.
  User: quet
  Date: 10/21/18
  Time: 1:11 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.util.ArrayList"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>CustomerList</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" href="css.css">
</head>
<body>
<%!
    class Customer {
        private String name;
        private String birth;
        private String adress;
        private String image;
        public Customer(String name, String birth, String adress, String image) {
            this.adress = adress;
            this.image = image;
            this.birth = birth;
            this.name = name;
        }
        public String toString() {
            return "        <li class='list-group-item'>\n" +
                    "            <p>" + name + "</p>\n" +
                    "            <p>" + birth + "</p>\n" +
                    "            <p>" + adress + "</p>\n" +
                    "            <p class='avatar'><img src='" + image + "'></p>\n" +
                    "        </li>";
        }
    }
%>

<%
    ArrayList<Customer> customerArrayList = new ArrayList<>();
    Customer customer1 = new Customer("Mai Văn Hoan", "1997-06-20", "Hà Nội", "https://cdn4.iconfinder.com/data/icons/avatar-person-flat/32/avatar9-512.png");
    Customer customer2 = new Customer("Nguyễn Mai Linh", "1993-11-12", "Lạng Sơn", "https://cdn4.iconfinder.com/data/icons/avatar-person-flat/32/avatar15-512.png");
    Customer customer3 = new Customer("Nguyễn Thái Hòa", "1973-07-26", "TP HCM", "https://cdn4.iconfinder.com/data/icons/avatar-person-flat/32/avatar18-512.png");
    Customer customer4 = new Customer("Trần Đăng Khoa", "1963-08-27", "Hà Giang", "https://cdn4.iconfinder.com/data/icons/halloween-01/128/Grim_Reaper-2-512.png");
    customerArrayList.add(customer1);
    customerArrayList.add(customer2);
    customerArrayList.add(customer3);
    customerArrayList.add(customer4);
%>
<div>
    <h1>Danh sách khách hàng</h1>
    <ul class="list-group">
        <li class="list-group-item active">
            <p>Tên</p>
            <p>Ngày sinh</p>
            <p>Địa chỉ</p>
            <p>Ảnh đại diện</p>
        </li>
        <%
            for (Customer user : customerArrayList) {
                out.println(user.toString());
            }
        %>
    </ul>
</div>
</body>
</html>
