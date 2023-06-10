<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Store Form</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <style>
        body {
            padding: 20px;
        }

        .center {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
    </style>
</head>
<body>
    <div class="container center">
        <div class="col-md-6">
            <h2 class="mb-4">Store Form</h2>
            <form>
                <div class="form-group">
                    <label for="storeId">Store ID:</label>
                    <input type="text" class="form-control" id="storeId" name="storeId" placeholder="Enter Store ID">
                </div>
                <div class="form-group">
                    <label for="password">Password:</label>
                    <input type="password" class="form-control" id="password" name="password" placeholder="Enter Password">
                </div>
                <div class="form-group">
                    <label for="storeName">Store Name:</label>
                    <input type="text" class="form-control" id="storeName" name="storeName" placeholder="Enter Store Name">
                </div>
                <div class="form-group">
                    <label for="storeAddress">Store Address:</label>
                    <textarea class="form-control" id="storeAddress" name="storeAddress" placeholder="Enter Store Address"></textarea>
                </div>
                <div class="form-group">
                    <label for="storeContact">Store Contact Number:</label>
                    <input type="text" class="form-control" id="storeContact" name="storeContact" placeholder="Enter Store Contact Number">
                </div>
                <button type="submit" class="btn btn-primary">Submit</button>
            </form>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</body>
</html>
