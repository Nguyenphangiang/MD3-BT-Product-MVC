<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 3/29/2022
  Time: 10:27 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit Product</title>
</head>
<body>
<h1>Edit Product</h1>
<p>
    <c:if test = '${requestScope["message"] != null}'>
        <span class="message">${requestScope["message"]}</span>
    </c:if>
</p>
<p>
    <a href="/products">Back to product list</a>
</p>
<form method="post">
    <fieldset>
        <legend>Product Information</legend>
        <table>
            <tr>
                <td>Product Name</td>
                <td><input type="text" name="name" id="name" value="${requestScope["product"].getProductName()}"></td>
            </tr>
            <tr>
                <td>Product Price</td>
                <td><input type="text" name="price" id="price" value="${requestScope["product"].getProductPrice()}"></td>
            </tr>
            <tr>
                <td>Product Quantity</td>
                <td><input type="text" name="quantity" id="quantity" value="${requestScope["product"].getProductQuantity()}"></td>
            </tr>
            <tr>
                <td>Status</td>
                <td><select name="status" id="status" value="${requestScope["product"].isProductStatus()}">
                    <option name="true" id="true" value="true">Ready</option>
                    <option name="false" id="false" value="false"> Not Ready</option>
                </select></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Update Product"></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>
