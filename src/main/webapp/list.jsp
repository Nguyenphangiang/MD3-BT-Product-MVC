<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 3/29/2022
  Time: 9:44 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Product List</title>
</head>
<body>
<h1>Product List</h1>
<p>
    <a href="/products?action=create">Creat new product</a>
</p>
<p>Find Product By Name</p>
<form>
    <input type="text" name="findByName" id="findByName" placeholder="Product Name">
    <input type="submit" value="search" name="search" >
</form>

<table border="1">
    <tr>
        <td>Id</td>
        <td>Name</td>
        <td>Price</td>
        <td>Quantity</td>
        <td>Status</td>
    </tr>
    <c:forEach items='${requestScope["products"]}' var="product">
        <tr>
            <td>${product.getProductId()}</td>
            <td><a href="/products?action=view&id=${product.getProductId()}">${product.getProductName()}</a></td>
            <td>${product.getProductPrice()}</td>
            <td>${product.getProductQuantity()}</td>
            <td>${product.isProductStatus()}</td>
            <td><a href="/products?action=edit&id=${product.getProductId()}">Edit</a></td>
            <td><a href="/products?action=delete&id=${product.getProductId()}">Delete</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
