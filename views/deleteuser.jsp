<!DOCTYPE html>
<html>
<head>
    <title>Delete User</title>
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
      <script type="text/javascript">
      function showSuccessMessage() {
        alert("User Deleted successfully!");
        return true; // Allow the form submission to proceed
    }
</script>
</head>
<body>
    <div class="container center">
        <div class="col-md-6">
            <h2 class="mb-4">Delete User</h2>
            <form>
                <div class="form-group">
                    <label for="userId">User ID:</label>
                    <input type="text" class="form-control" id="userId" name="userId" placeholder="Enter User ID">
                </div>
                <div class="form-group">
                    <label for="userType">User Type:</label>
                    <select class="form-control" id="userType" name="userType">
                        <option value="procurement">Procurement</option>
                        <option value="inventory">Inventory</option>
                    </select>
                </div>
                <button type="submit" class="btn btn-danger" onClick="showSuccessMessage()">Delete</button>
            </form>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</body>
</html>
