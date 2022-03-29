<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 3/29/2022
  Time: 10:08 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create new product</title>
    <style>
        .message{
            color: red;
        }
    </style>
</head>
<body>
<h1>Create new product</h1>
<p>
    <c:if test='${requestScope["message"] != null}'>
        <span class="message">${requestScope["message"]}</span>
    </c:if>
</p>
<p>
    <a href="/products">Back to product list</a>
</p>
<form method="post">
    <fieldset>
        <legend>Product Infomation</legend>
        <table>
            <tr>
                <td>Id</td>
                <td><input type="text" name="id" id="id"></td>
            </tr>
            <tr>
                <td>Product Name</td>
                <td><input type="text" name="name" id="name"></td>
            </tr>
            <tr>
                <td>Product Price</td>
                <td><input type="text" name="price" id="price"></td>
            </tr>
            <tr>
                <td>Product Quantity</td>
                <td><input type="text" name="quantity" id="quantity"></td>
            </tr>
            <tr>
                <td>Status</td>
                <td><select name="status" id="status">
                    <option name="true" id="true">True</option>
                    <option name="false" id="false">False</option>
                </select></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Create New Product"></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>
