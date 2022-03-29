<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 3/29/2022
  Time: 10:50 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Delete Product</title>
</head>
<body>
<h1>Deleting Product</h1>
<p>
    <a href="/products">Back to product list</a>
</p>
<form method="post">
    <h3>Are you sure ?</h3>
    <fieldset>
        <legend>Product Information</legend>
        <table>
            <tr>
                <td>Product ID:</td>
                <td>${requestScope["product"].getProductId()}</td>
            </tr>
            <tr>
                <td>Product Name:</td>
                <td>${requestScope["product"].getProductName()}</td>
            </tr>
            <tr>
                <td>Product Price:</td>
                <td>${requestScope["product"].getProductPrice()}</td>
            </tr>
            <tr>
                <td>Product Quantity:</td>
                <td>${requestScope["product"].getProductQuantity()}</td>
            </tr>
            <tr>
                <td>Product Status:</td>
                <td>${requestScope["product"].isProductStatus()}</td>
            </tr>
            <tr>
                <td><input type="submit" value="Delete Product"></td>
                <td><a href="/products">Back to product list</a></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>
