<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <title>Adjustments</title>
  <style>
  #htag{
  position: relative;
  top: 30px;
  margin-left: 350px;
  }
    body {
      font-family: Arial, sans-serif;
      background-color: #f5f5f5;
    }

    form {
      max-width: 400px;
      margin-top: 60px;
       margin-left: 350px;
      padding: 20px;
      background-color: #ffffff;
      border: 1px solid #ccc;
      border-radius: 4px;
    }

    label {
      display: block;
      font-weight: bold;
      margin-bottom: 5px;
    }

    select,
    input[type="text"] {
      width: 100%;
      padding: 8px;
      border: 1px solid #ccc;
      border-radius: 4px;
      box-sizing: border-box;
      margin-bottom: 10px;
    }

    button[type="submit"] {
      background-color: #4CAF50;
      color: #ffffff;
      padding: 10px 16px;
      border: none;
      border-radius: 4px;
      cursor: pointer;
      font-size: 16px;
    }

    button[type="submit"]:hover {
      background-color: #45a049;
    }
     .error-message {
      color: red;
      font-size: 12px;
      margin-top: 5px;
    }
  </style>
  <script>
    function validateProductCategory() {
      var productCategory = document.getElementById("productcategoryid").value;
      var errorElement = document.getElementById("productcategory-error");
      
      if (productCategory === "") {
        errorElement.innerText = "Please select a Product Category";
      } else {
        errorElement.innerText = "";
      }
    }
    
    function validateProductName() {
      var productName = document.getElementById("productnameid").value;
      var errorElement = document.getElementById("productname-error");
      
      if (productName === "") {
        errorElement.innerText = "Please select a Product Name";
      } else {
        errorElement.innerText = "";
      }
    }
    
    function validateBatchNo() {
      var batchNo = document.getElementById("batchnoid").value;
      var errorElement = document.getElementById("batchno-error");
      
      if (batchNo === "") {
        errorElement.innerText = "Please select a Batch No";
      } else {
        errorElement.innerText = "";
      }
    }
    
    function validateOriginalStock() {
      var originalStock = document.getElementById("originalstockid").value;
      var errorElement = document.getElementById("originalstock-error");
      
      if (originalStock === "") {
        errorElement.innerText = "Please enter the Original Stock";
      } else {
        errorElement.innerText = "";
      }
    }
    
    function validateCurrentStock() {
      var currentStock = document.getElementById("currentstockid").value;
      var errorElement = document.getElementById("currentstock-error");
      
      if (currentStock === "") {
        errorElement.innerText = "Please enter the Current Stock";
      } else {
        errorElement.innerText = "";
      }
    }
    
    function validateReason() {
      var reason = document.getElementById("reasonid").value;
      var errorElement = document.getElementById("reason-error");
      
      if (reason === "") {
        errorElement.innerText = "Please enter a Reason";
      } else {
        errorElement.innerText = "";
      }
    }
    
    function validateForm() {
      validateProductCategory();
      validateProductName();
      validateBatchNo();
      validateOriginalStock();
      validateCurrentStock();
      validateReason();
      
      // Form is valid if no error messages exist
      var errorMessages = document.getElementsByClassName("error-message");
      for (var i = 0; i < errorMessages.length; i++) {
        if (errorMessages[i].innerText !== "") {
          return false;
        }
      }
      
      return true;
    }
  </script>
  
</head>
<body>
<h1 id ="htag" align="center">Adjustments</h1>
   <form onsubmit="return validateForm()">
    <label for="productcategoryid">Product Category:</label>
    <select id="productcategoryid" name="ProductCategory" onblur="validateProductCategory()">
      <option value="">Select Category</option>
      <option value="option1">Option 1</option>
      <option value="option2">Option 2</option>
      <option value="option3">Option 3</option>
    </select>
    <span id="productcategory-error" class="error-message"></span>
    
    <label for="productnameid">Product Name:</label>
    <select id="productnameid" name="ProductName" onblur="validateProductName()">
      <option value="">Select Name</option>
      <option value="option1">Option 1</option>
      <option value="option2">Option 2</option>
      <option value="option3">Option 3</option>
    </select>
    <span id="productname-error" class="error-message"></span>
    
    <label for="batchnoid">Batch No:</label>
    <select id="batchnoid" name="BatchNo" onblur="validateBatchNo()">
      <option value="">Select Batch No</option>
      <option value="option1">Option 1</option>
      <option value="option2">Option 2</option>
      <option value="option3">Option 3</option>
    </select>
    <span id="batchno-error" class="error-message"></span>
    
    <label for="originalstockid">Original Stock:</label>
    <input type="text" id="originalstockid" name="OriginalStock" onblur="validateOriginalStock()">
    <span id="originalstock-error" class="error-message"></span>
    
    <label for="currentstockid">Current Stock:</label>
    <input type="text" id="currentstockid" name="CurrentStock" onblur="validateCurrentStock()">
    <span id="currentstock-error" class="error-message"></span>
    
    <label for="reasonid">Reason:</label>
    <textarea id="reasonid" name="Reason" rows="4" cols="42" onblur="validateReason()"></textarea>
    <span id="reason-error" class="error-message"></span>
    
    <button type="submit" style="margin-left: 120px">Update Stock</button>
  </form></body>
</html>
