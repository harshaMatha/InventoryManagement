<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Vendor Form</title>
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
            <h2 class="mb-4">Vendor Form</h2>
            <form>
                <div class="form-group">
                    <label for="vendorId">Vendor ID:</label>
                    <input type="text" class="form-control" id="vendorId" name="vendorId" placeholder="Enter Vendor ID" readonly>
                </div>
                <div class="form-group">
                    <label for="vendorName">Vendor Name:</label>
                    <input type="text" class="form-control" id="vendorName" name="vendorName" placeholder="Enter Vendor Name">
                </div>
                <div class="form-group">
                    <label for="vendorAddress">Vendor Address:</label>
                    <textarea class="form-control" id="vendorAddress" name="vendorAddress" placeholder="Enter Vendor Address"></textarea>
                </div>
                <div class="form-group">
                    <label for="vendorPhone">Vendor Phone Number:</label>
                    <input type="text" class="form-control" id="vendorPhone" name="vendorPhone" placeholder="Enter Vendor Phone Number">
                </div>
                <div class="form-group">
                    <label for="vendorStatus">Vendor Status:</label>
                    <select class="form-control" id="vendorStatus" name="vendorStatus">
                        <option value="active">Active</option>
                        <option value="inactive">Inactive</option>
                    </select>
                </div>
                <button type="submit" class="btn btn-primary">Update</button>
            </form>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</body>
</html>
