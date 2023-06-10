<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <title>Price Review</title>
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
       margin-left: 50px;
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
       margin-left:50px;
    border-radius:6px;
    width:121px;
    height:40px;
    background-color: #4CAF50;
    border: none;
    color: white;
    cursor: pointer;
    font-weight: bold;
     box-shadow: 0px 2px 4px rgba(0, 0, 0, 0.2);
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
    
    function validateOriginalCost() {
      var originalCost = document.getElementById("originalcostid").value;
      var errorElement = document.getElementById("originalcost-error");
      
      if (originalCost === "") {
        errorElement.innerText = "Please enter the Original Cost";
      } else {
        errorElement.innerText = "";
      }
    }
    
    function validateModifiedCost() {
      var modifiedCost = document.getElementById("modifiedcostid").value;
      var errorElement = document.getElementById("modifiedcost-error");
      
      if (modifiedCost === "") {
        errorElement.innerText = "Please enter the Modified Cost";
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
      validateOriginalCost();
      validateModifiedCost();
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
<h1 id="htag" align="center">Price Review</h1>
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
    

    <label for="originalcostid">Original Cost:</label>
    <input type="text" id="originalcostid" name="OriginalCost" onblur="validateOriginalCost()"  title="Please enter original cost">
<span id="originalcost-error" class="error-message"></span>
    <label for="modifiedcostid">Modified Cost:</label>
    <input type="text" id="modifiedcostid" name="ModifiedCost" onblur="validateModifiedCost()">
    <span id="modifiedcost-error" class="error-message"></span>
     <label for="reasonid">Reason:</label>
    <textarea id="reasonid" name="Reason" rows="4" cols="42"  style="padding-right:10px" onblur="validateReason()" ></textarea>
    <span id="reason-error" class="error-message"></span>

   <button type="submit" style="margin-left: 120px">Update Cost</button>
  </form>
</body>
</html>
