<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Product Categories</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <style>
        body {
            padding: 20px;
        }

        .table-container {
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2 align="center">Product Categories</h2>

        <div class="form-group">
            <label for="categorySelect">Select Category:</label>
            <select class="form-control" id="categorySelect" name="categorySelect">
                <option value="category1">Category 1</option>
                <option value="category2">Category 2</option>
                <option value="category3">Category 3</option>
            </select>
        </div>

        <div class="table-container">
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th>Product Name</th>
                        <th>Product ID</th>
                        <th>Batch Number</th>
                        <th>Stock</th>
                        <th>Purchase Price</th>
                        <th>Sale Price</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Product 1</td>
                        <td>001</td>
                        <td>123456</td>
                        <td>10</td>
                        <td>$10.00</td>
                        <td>$15.00</td>
                    </tr>
                    <tr>
                        <td>Product 2</td>
                        <td>002</td>
                        <td>654321</td>
                        <td>5</td>
                        <td>$8.00</td>
                        <td>$12.00</td>
                    </tr>
                    <tr>
                        <td>Product 3</td>
                        <td>003</td>
                        <td>987654</td>
                        <td>2</td>
                        <td>$12.00</td>
                        <td>$18.00</td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</body>
</html>
