<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <title>Product Details</title>
  <style>
    #htag{
  position: relative;
  top: 20px;
  }
    table {
      border-collapse: collapse;
      margin-bottom: 20px;
    }

    th, td {
    text-align:center;
      border: 1px solid black;
      padding: 8px;
    }

    .delete-button {
      background-color: #f44336;
      border: none;
      color: white;
      padding: 6px 12px;
       font-weight: bold;
      text-align: center;
      text-decoration: none;
      display: inline-block;
      font-size: 14px;
      margin: 4px 2px;
      cursor: pointer;
      border-radius:6px;
    }

    .table-container {
      display: flex;
      padding-bottom: 60px;
    }

    .table-container table {
      flex: 1;
      margin-right: 10px;
      float:right;
    }

    #product-form {
      padding-bottom: 50px;
    }

    .form-label {
      display: block;
      margin-bottom: 5px;
    }

    .form-input {
      width: 100px;
      padding: 5px;
      margin-bottom: 10px;
    }

    .form-submit:hover {
      background-color: #45a049;
      
    }

    .form-input-container {
      display: flex;
      gap: 10px;
      margin-bottom: 10px;
    }

     #products-table {
      background-color: white;
      height: 50px;
      overflow-y: scroll;
      width:400px;
     margin-left:90px;
    }
    #total_indent
    {
    display: flex;
      gap: 10px;
      margin-bottom: 10px;
    }
    
        #first_table {
       height: 200px;
      
      overflow-y: scroll;
    }
    
        #Product-details-table {
       background-color: white;
      width:420px;

    }
           #reorder-level-table {
      background-color: white;
      width:420px;

    }
    
    #second_table {
       height: 200px;
      
      overflow-y: scroll;
    }

    
#addedproducts{

      display: flex;
      justify-content: center;
      align-items: center;
      
    
    }
    .addProductsButtonClass{
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
    #product-form{
      display: flex;
      margin-left: 200px;
      
    
    }
    
    label {
      display: block;
      font-weight: bold;
      color: #333;
      margin-bottom: 5px;
    }
    #createIndentButtonId{
    margin-left:260px;
    border-radius:6px;
    width:80px;
    height:40px;
    background-color: #4CAF50;
    border: none;
    color: white;
    cursor: pointer;
    font-weight: bold;
     box-shadow: 0px 2px 4px rgba(0, 0, 0, 0.2);
     
    }
    #products-dropdown
    {
    display:flex;
     margin-left:650px;
     padding-bottom:5px;
     
    }
     .error-message {
      color: red;
      font-size: 12px;
      margin-top: 5px;
    }

  </style>
</head>
<body>
<div id="htag">
  <h2 align="center" style="padding-left: 110px; margin-bottom: 50px">Create Indent</h2>
  </div>
    <div  align="center" style="margin-right: 70px; margin-bottom: 30px" id="products-dropdown">
    <label for="product-category" style="padding-right:10px; font-size:23px">Product Category </label>
    <select id="product-category">
      <option value="category1">Soaps & Lotions</option>
      <option value="category2">Category 2</option>
      <option value="category3">Category 3</option>
      <!-- Add more options as needed -->
    </select>
  </div>
  <div class="table-container">
  <div style="margin-right:50px; margin-left:60px ">
   <h3 align="center">Reorder Level Details</h3>
    <div  id="first_table">
   
    <table id="reorder-level-table">
     
      <thead>
        <tr>
          <th>Product Category</th>
          <th>Product ID</th>
          <th>Product Name</th>
          <th>Batch No.</th>
          <th>Stock</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td></td>
          <td>101</td>
          <td>Pears Soap</td>
          <td>14268</td>
          <td>50</td>
          
        </tr>
        
        <tr>
         <td></td>
          <td>102</td>
          <td>Santoor Soap</td>
          <td>14267</td>
          <td>50</td>
        </tr>
        <tr>
         <td></td>
         <td>103</td>
          <td>Rexona Soap</td>
          <td>14266</td>
          <td>50</td>
        </tr>
        <tr>
         <td></td>
       <td>104</td>
          <td>Lifebuoy Soap</td>
          <td>14269</td>
          <td>50</td>
        </tr>
        <!-- Add more rows -->
        <tr>
         <td></td>
          <td>101</td>
          <td>Pears Soap</td>
          <td>14268</td>
          <td>50</td>
        </tr>
        <tr>
         <td></td>
           <td>101</td>
          <td>Pears Soap</td>
          <td>14268</td>
          <td>50</td>
        </tr>
       
      </tbody>
    </table>
</div>
</div>
<div style="margin-left:50px; margin-left:70px ">

 <h3 align="center">Products Details</h3>
 <div id="second_table">
    <table id="Product-details-table">
    
      <thead>
        <tr>
          <th>Product ID</th>
          <th>Product Name</th>
          <th>Batch No.</th>
          <th>Stock</th>
        </tr>
      </thead>
      <tbody>
        <tr>
         
          <td>101</td>
          <td>Pears Soap</td>
          <td>14268</td>
          <td>50</td>
          
        </tr>
        <tr>
         
          <td>102</td>
          <td>Santoor Soap</td>
          <td>14267</td>
          <td>50</td>
        </tr>
        <tr>
        
         <td>103</td>
          <td>Rexona Soap</td>
          <td>14266</td>
          <td>50</td>
        </tr>
        <tr>
         
       <td>104</td>
          <td>Lifebuoy Soap</td>
          <td>14269</td>
          <td>50</td>
        </tr>
        <!-- Add more rows -->
        <tr>
        
          <td>101</td>
          <td>Pears Soap</td>
          <td>14268</td>
          <td>50</td>
        </tr>
        <tr>
         
           <td>101</td>
          <td>Pears Soap</td>
          <td>14268</td>
          <td>50</td>
        </tr>
       
      </tbody>
    </table>
    </div>
  </div>
</div>

<h2 align="center" style="margin-left:60px; margin-bottom:20px">Indent</h2>

   <form id="product-form">
  <div class="form-input-container">
    <label class="form-label" for="productid" style="padding-right:10px; padding-top:10px">Product ID:</label>
    <div><input class="form-input" type="text" id="productid_id" required onblur="validateProductID()"><br>
    <span id="productid-error" class="error-message"></span> </div>
    </div>

  <div class="form-input-container">
    <label class="form-label" for="requiredstock" style="padding-top:10px; padding-right:10px">Required Stock:</label>
    <div>
    <input class="form-input" type="number" id="requiredstockid" required onblur="validateRequiredStock()"><br>
    
<span id="requiredstock-error" class="error-message"></span></div>
</div>
  <button class="addProductsButtonClass" type="button" onclick="addProduct()">Add Product</button>
</form>

  <h2 align="center" style="margin-left:60px; margin-bottom:20px">Indents List</h2>
<div id="addedproducts" >
<form>
  <table class="table bg-white rounded shadow-sm  table-hover" id="products-table">
    <thead>
      <tr>
        <th>Product ID</th>
       
        <th>Required Stock</th>
        <th>Action</th>
      </tr>
    </thead>
    <tbody id="products-table-body">
    </tbody>
  </table>


    <input type="submit" value="Submit" id="createIndentButtonId">
  </form>
</div>
 <script>
    function validateProductID() {
      var productIDInput = document.getElementById("productid_id");
      var productIDError = document.getElementById("productid-error");

      if (productIDInput.value.trim() === "") {
        productIDError.textContent = "Product ID is required";
      } else {
        productIDError.textContent = "";
      }
    }

    function validateRequiredStock() {
      var requiredStockInput = document.getElementById("requiredstockid");
      var requiredStockError = document.getElementById("requiredstock-error");

      if (requiredStockInput.value.trim() === "") {
        requiredStockError.textContent = "Required Stock is required";
      } else {
        requiredStockError.textContent = "";
      }
    }

    function addProduct() {
      validateProductID();
      validateRequiredStock();

      // Check if there are any errors
      var productIDError = document.getElementById("productid-error").textContent;
      var requiredStockError = document.getElementById("requiredstock-error").textContent;

      if (productIDError !== "" || requiredStockError !== "") {
        return; // Exit the function if there are errors
      }

      // Get input values
      var productid = document.getElementById("productid_id").value;
      var requiredstock = document.getElementById("requiredstockid").value;

      // Create new row in the table
      var tableBody = document.getElementById("products-table-body");
      var newRow = tableBody.insertRow();

      // Insert cells with product details
      var productidCell = newRow.insertCell();
      productidCell.innerHTML = productid;

      var requiredstockCell = newRow.insertCell();
      requiredstockCell.innerHTML = requiredstock;

      var deleteCell = newRow.insertCell();
      deleteCell.innerHTML = '<button class="delete-button" onclick="deleteProduct(this)">Delete</button>';

      // Clear input fields
      document.getElementById("productid_id").value = "";
      document.getElementById("requiredstockid").value = "";
    }

    function deleteProduct(button) {
      var row = button.parentNode.parentNode;
      row.parentNode.removeChild(row);
    }
  </script>
</body>
</html>
