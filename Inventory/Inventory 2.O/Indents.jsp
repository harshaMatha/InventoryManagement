<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <title>Product Details</title>
  <style>
    table {
      border-collapse: collapse;
      margin-bottom: 20px;
    }

    th, td {
      border: 1px solid black;
      padding: 8px;
    }

    .delete-button {
      background-color: #f44336;
      border: none;
      color: white;
      padding: 6px 12px;
      text-align: center;
      text-decoration: none;
      display: inline-block;
      font-size: 14px;
      margin: 4px 2px;
      cursor: pointer;
    }

    .table-container {
      display: flex;
      padding-bottom: 100px;
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

    .form-submit {
      padding: 8px 16px;
      background-color: #4CAF50;
      border: none;
      color: white;
      cursor: pointer;
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
    }
    #total_indent
    {
    display: flex;
      gap: 10px;
      margin-bottom: 10px;
    }
    
        #first_table {
       height: 150px;
      
      overflow-y: scroll;
    }
    
        #Product-details-table {
       background-color: white;
      width:300px;

    }
           #reorder-level-table {
      background-color: white;
      width:300px;

    }
    
    #second_table {
       height: 150px;
      
      overflow-y: scroll;
    }

    
#addedproducts{

      display: flex;
      justify-content: center;
      align-items: center;
      
    
    }
    .form-submit{
    margin-left:50px;
    border-radius:8px;
    width:150px;
    height:40px;
    
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
    #form-products{
      padding: 8px 16px;
      background-color: #4CAF50;
      border: none;
      color: white;
      cursor: pointer;
    
    }
  </style>
</head>
<body>
  <h2 align="center" style="padding-left: 110px; margin-bottom: 50px">Product Details</h2>
  <div class="table-container">
  <div style="margin-right:50px; margin-left:170px ">
   <h3 align="center">Reorder Level Details</h3>
    <div  id="first_table">
   
    <table id="reorder-level-table">
     
      <thead>
        <tr>
          <th>Name</th>
          <th>Age</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td>John</td>
          <td>25</td>
        </tr>
        <tr>
          <td>Jane</td>
          <td>30</td>
        </tr>
        <tr>
          <td>John</td>
          <td>25</td>
        </tr>
        <tr>
          <td>Jane</td>
          <td>30</td>
        </tr>
        <!-- Add more rows -->
        <tr>
          <td>David</td>
          <td>28</td>
        </tr>
        <tr>
          <td>Sarah</td>
          <td>35</td>
        </tr>
        <tr>
          <td>Michael</td>
          <td>42</td>
        </tr>
        <tr>
          <td>Emily</td>
          <td>31</td>
        </tr>
        <tr>
          <td>Daniel</td>
          <td>27</td>
        </tr>
        <tr>
          <td>Amy</td>
          <td>29</td>
        </tr>
        <tr>
          <td>Thomas</td>
          <td>38</td>
        </tr>
        <tr>
          <td>Olivia</td>
          <td>33</td>
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
          <th>Name</th>
          <th>Gender</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td>Mike</td>
          <td>Male</td>
        </tr>
        <tr>
          <td>Lisa</td>
          <td>Female</td>
        </tr>
        <tr>
          <td>John</td>
          <td>25</td>
        </tr>
        <tr>
          <td>Jane</td>
          <td>30</td>
        </tr>
        <!-- Add more rows -->
        <tr>
          <td>David</td>
          <td>28</td>
        </tr>
        <tr>
          <td>Sarah</td>
          <td>35</td>
        </tr>
        <tr>
          <td>Michael</td>
          <td>42</td>
        </tr>
        <tr>
          <td>Emily</td>
          <td>31</td>
        </tr>
        <tr>
          <td>Daniel</td>
          <td>27</td>
        </tr>
        <tr>
          <td>Amy</td>
          <td>29</td>
        </tr>
        <tr>
          <td>Thomas</td>
          <td>38</td>
        </tr>
        <tr>
          <td>Olivia</td>
          <td>33</td>
        </tr>
      </tbody>
    </table>
    </div>
  </div>
</div>

<h2 align="center">Create Indent</h2>

  <form id="product-form" >
    <div class="form-input-container" >
      <label class="form-label" for="productid" style="padding-right:10px; padding-top:10px" >Product ID:</label>
      <input class="form-input" type="text" id="productid_id" required style="margin-right:60px">
    </div>


    <div class="form-input-container">
      <label class="form-label" for="requiredstock" style="padding-top:10px ;padding-right:10px">Required Stock:</label>
      <input class="form-input" type="number" id="requiredstockid" required  >
    </div>

    <button class="form-submit" type="button" onclick="addProduct()">Add Product</button>
  </form>
  <h2 align="center">Indents List</h2>
<div id="addedproducts" >
<form>
  <table id="products-table">
    <thead>
      <tr>
        <th>Product ID</th>
       
        <th>Required Stock</th>
        <th></th>
      </tr>
    </thead>
    <tbody id="products-table-body">
    </tbody>
  </table>


    <input type="submit" value="Submit" style="margin-left:90px" id="form-products">
  </form>
</div>
  <script>
    function addProduct() {
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
