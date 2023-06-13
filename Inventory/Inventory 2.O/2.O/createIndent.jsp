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
      width:1000px;
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
      width:350px;

    }
           #reorder-level-table {
      background-color: white;
      width:350px;

    }
    
    #second_table {
       height: 200px;
      
      overflow-y: scroll;
    }

    
#addedproducts{

      display: flex;
      justify-content: center;
      align-items: center;
      margin-left:70px;
      
    
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
    margin-left:450px;
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
     margin-left:750px;
     padding-bottom:10px;
     margin-bottom:10px;
     
    }
     .error-message {
      color: red;
      font-size: 12px;
      margin-top: 5px;
    }
    #products-table input{
    
    padding: 5px;
    border: 1px solid #ccc;
    border-radius: 3px;
    width: 80px;
    }
    .delete-btn{
    
        background-color: #ff0000;
      color: #fff;
      border: none;
       color: white;
      font-weight: bold;
      padding: 6px 12px;
      cursor: pointer;
      border-radius:6px;
      box-shadow: 0px 2px 4px rgba(0, 0, 0, 0.2);
    }
    .add-btn,.add-btn1{
    border-radius:6px;
    background-color: #4CAF50;
    border: none;
    color: white;
    cursor: pointer;
    font-weight: bold;
     box-shadow: 0px 2px 4px rgba(0, 0, 0, 0.2);
    }

  </style>
</head>
<body>
<div id="htag">
  <h2 align="center" style="padding-left: 110px; margin-bottom: 50px">Create Indent</h2>
  </div>
    <div id="products-dropdown">
    <label for="product-category" style="padding-right:10px; font-size:16px">Product Category </label>
    <select id="product-category" style="width:100px">
      <option value="category1">Soaps & Lotions</option>
      <option value="category2">Category 2</option>
      <option value="category3">Category 3</option>
      <!-- Add more options as needed -->
    </select>
  </div>
  <div class="table-container">
  <div style="margin-right:50px; margin-left:150px ">
   <h3 align="center">Reorder Level Details</h3>
    <div  id="first_table">
   
    <table id="reorder-level-table">
     
      <thead>
        <tr>
          <th>Product ID</th>
          <th>Product Name</th>
          <th>Batch No.</th>
          <th>Stock</th>
          <th>Add</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td>101</td>
          <td>Pears Soap</td>
          <td>14268</td>
          <td>50</td>
          <td><button class="add-btn">Add</button></td>
          
        </tr>
        
        <tr>
          <td>102</td>
          <td>Santoor Soap</td>
          <td>14267</td>
          <td>50</td>
          <td><button class="add-btn">Add</button></td>
        </tr>
        <tr>
         <td>103</td>
          <td>Rexona Soap</td>
          <td>14266</td>
          <td>50</td>
          <td><button class="add-btn">Add</button></td>
        </tr>
        <tr>
       <td>104</td>
          <td>Lifebuoy Soap</td>
          <td>14269</td>
          <td>50</td>
          <td><button class="add-btn">Add</button></td>
        </tr>
        <!-- Add more rows -->
        <tr>
          <td>101</td>
          <td>Pears Soap</td>
          <td>14268</td>
          <td>50</td>
          <td><button class="add-btn">Add</button></td>
        </tr>
        <tr>
           <td>101</td>
          <td>Pears Soap</td>
          <td>14268</td>
          <td>50</td>
          <td><button class="add-btn">Add</button></td>
        </tr>
       
      </tbody>
    </table>
</div>
</div>
<div style="margin-left:50px;">

 <h3 align="center">Products Details</h3>
 <div id="second_table">
    <table id="Product-details-table">
    
      <thead>
        <tr>
          <th>Product ID</th>
          <th>Product Name</th>
          <th>Batch No.</th>
          <th>Stock</th>
          <th>Add</th>
        </tr>
      </thead>
      <tbody>
        <tr>
         
          <td>101</td>
          <td>Pears Soap</td>
          <td>14268</td>
          <td>50</td>
           <td><button class="add-btn1">Add</button></td>
        </tr>
        <tr>
         
          <td>102</td>
          <td>Santoor Soap</td>
          <td>14267</td>
          <td>50</td>
          <td><button class="add-btn1">Add</button></td>
        </tr>
        <tr>
        
         <td>103</td>
          <td>Rexona Soap</td>
          <td>14266</td>
          <td>50</td>
          <td><button class="add-btn1">Add</button></td>
        </tr>
        <tr>
         
       <td>104</td>
          <td>Lifebuoy Soap</td>
          <td>14269</td>
          <td>50</td>
          <td><button class="add-btn1">Add</button></td>
        </tr>
        <!-- Add more rows -->
        <tr>
        
          <td>101</td>
          <td>Pears Soap</td>
          <td>14268</td>
          <td>50</td>
          <td><button class="add-btn1">Add</button></td>
        </tr>
        <tr>
         
           <td>101</td>
          <td>Pears Soap</td>
          <td>14268</td>
          <td>50</td>
          <td><button class="add-btn1">Add</button></td>
        </tr>
       
      </tbody>
    </table>
    </div>
  </div>
</div>

   <h2 align="center" style="margin-bottom:20px">Indents List</h2>
   <div id="addedproducts" >
       <form>
          <table class="table bg-white rounded shadow-sm  table-hover" id="products-table">
           <thead>
              <tr>
                 <th>Product ID</th>
                 <th>Product Name</th>
                 <th>Batch No.</th>
                 <th>Stock</th>
                 <th>Required Stock</th>
                 <th>Action</th>
             </tr>
           </thead>
           <tbody >
           </tbody>
          </table>
          <button type="button" id="createIndentButtonId">Create</button>
  </form>
</div>
 <script>
 var firstTable = document.getElementById('reorder-level-table');
 var secondTable = document.getElementById('Product-details-table');
 var selectedTable = document.getElementById('products-table');
 var addButtons = firstTable.getElementsByClassName('add-btn');
 var addButtons1 = secondTable.getElementsByClassName('add-btn1');
 
          // Function to add a row to the selected table
    function addRowToSelectedTable(row) {
    
   
      var cells = row.cells;
      var field1 = cells[0].textContent;
      var field2 = cells[1].textContent;
      var field3 = cells[2].textContent;
      var field4 = cells[3].textContent;

      var newRow = document.createElement('tr');

      var field1Cell = document.createElement('td');
      field1Cell.textContent = field1;

      var field2Cell = document.createElement('td');
      field2Cell.textContent = field2;

      var field3Cell = document.createElement('td');
      field3Cell.textContent = field3;

      var field4Cell = document.createElement('td');
      field4Cell.textContent = field4;

      var quantityCell = document.createElement('td');
      var quantityInput = document.createElement('input');
      quantityInput.type = 'number';
      quantityInput.value = 1;
      quantityCell.appendChild(quantityInput);

      var actionCell = document.createElement('td');
      var deleteButton = document.createElement('button');
      deleteButton.classList.add('delete-btn');
      deleteButton.textContent = 'Delete';
      deleteButton.addEventListener('click', function() {
        deleteRowFromSelectedTable(newRow);
      });
      actionCell.appendChild(deleteButton);

      newRow.appendChild(field1Cell);
      newRow.appendChild(field2Cell);
      newRow.appendChild(field3Cell);
      newRow.appendChild(field4Cell);
      newRow.appendChild(quantityCell);
      newRow.appendChild(actionCell);

      selectedTable.querySelector('tbody').appendChild(newRow);
    }

    // Function to delete a row from the selected table
    function deleteRowFromSelectedTable(row) {
      selectedTable.querySelector('tbody').removeChild(row);
    }

    // Attach click event listeners to the add buttons
    for (let i = 0; i < addButtons.length; i++) {
      var addButton = addButtons[i];
      addButton.addEventListener('click', function() {
    	  var row = this.parentNode.parentNode;
        addRowToSelectedTable(row);
      });
    }
    for (let i = 0; i < addButtons1.length; i++) {
        var addButton1 = addButtons1[i];
        addButton1.addEventListener('click', function() {
        	var row1 = this.parentNode.parentNode;
            addRowToSelectedTable(row1);
        });
      }
  </script>
</body>
</html>