<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 3/29/2022
  Time: 11:17 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Product Details</title>
</head>
<body>
<h1>Product Details</h1>
<p>
    <a href="/products">Back to product list</a>
</p>
<table>
    <tr>
        <td>Product Id:</td>
        <td>${requestScope["productI"].getProductId()}</td>
    </tr>
    <tr>
        <td>Product Name:</td>
        <td>${requestScope["productI"].getProductName()}</td>
    </tr>
    <tr>
        <td>Product Price:</td>
        <td>${requestScope["productI"].getProductPrice()}</td>
    </tr>
    <tr>
        <td>Product Quantity:</td>
        <td>${requestScope["productI"].getProductQuantity()}</td>
    </tr>
    <tr>
        <td>Product Status:</td>
        <td>${requestScope["productI"].isProductStatus}</td>
    </tr>
</table>
</body>
</html>
