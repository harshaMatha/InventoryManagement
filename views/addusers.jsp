<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>User Form</title>
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
    <script>
    function showSuccessMessage() {
        alert("User added successfully!");
        return true; // Allow the form submission to proceed
    }
</script>
</head>
<body>
    <div class="container center">
        <div class="col-md-6">
            <h2 class="mb-4">User Form</h2>
            <form onSubmit="return showSuccessMessage()">
                <div class="form-group">
                    <label for="userId">User ID:</label>
                    <input type="text" class="form-control" id="userId" name="userId" placeholder="Enter User ID">
                </div>
                <div class="form-group">
                    <label for="password">Password:</label>
                    <input type="password" class="form-control" id="password" name="password" placeholder="Enter Password">
                </div>
                <div class="form-group">
                    <label for="username">Username:</label>
                    <input type="text" class="form-control" id="username" name="username" placeholder="Enter Username">
                </div>
                <div class="form-group">
                    <label for="address">Address:</label>
                    <textarea class="form-control" id="address" name="address" placeholder="Enter Address"></textarea>
                </div>
                <div class="form-group">
                    <label for="phoneNumber">Phone Number:</label>
                    <input type="text" class="form-control" id="phoneNumber" name="phoneNumber" placeholder="Enter Phone Number">
                </div>
                <div class="form-group">
                    <label for="userType">User Type:</label>
                    <select class="form-control" id="userType" name="userType">
                        <option value="procurement">Procurement</option>
                        <option value="inventory">Inventory</option>
                    </select>
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
