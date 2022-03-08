<%-- 
    Document   : UpdateProduct
    Created on : Mar 8, 2022, 5:47:49 PM
    Author     : Hai Anh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="UpdateProductController" method="post">
            <table>
                <tr>
                    <td>ProductID</td>
                    <td>
                        <input value="${product.productID}" type="text" name="productID" readonly>
                    </td>
                </tr>
                <tr>
                    <td>Product Name</td>
                    <td>
                        <input value="${product.productName}" type="text" name="productName">
                    </td>
                </tr>
                <tr>
                    <td><button type="submit">Update</button></td>
                </tr>
            </table>
        </form> 
    </body>
</html>