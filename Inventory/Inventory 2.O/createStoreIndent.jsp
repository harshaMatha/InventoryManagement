<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Create Store Indent</title>
  <style>
  #product-details-table{
    background-color: white;
      height: 50px;
      overflow-y: scroll;
      width:1000px;
  
  }
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

     #products-table {
      background-color: white;
      height: 50px;
      overflow-y: scroll;
      width:1000px;
  
    }
    
    #first_table {
       height: 200px;
      
      overflow-y: scroll;
    }
    
    
    #second_table {
       height: 200px;
      
      overflow-y: scroll;
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
     margin-left:650px;
     padding-bottom:5px;
     
    }
    #products-dropdown label{
    display: block;
      font-weight: bold;
      color: #333;
      margin-bottom: 5px;
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
    .add-btn{
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
  <h2 align="center">Create Store Indent</h2>
  <div style="margin-bottom:20px">
   <div id="products-dropdown" align="right">
    <label for="product-category">Product Category</label>
    <select id="product-category">
      <option value="category1">Soaps & Lotions</option>
      <option value="category2">Category 2</option>
      <option value="category3">Category 3</option>
    </select>
  </div>
  
  <div id="first_table">
    <table id="product-details-table">
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
  <h2 align="center" style="margin-bottom:5px">Indents List</h2>

  <div id="addedproducts">
    <form>
      <table class="table bg-white rounded shadow-sm table-hover" id="products-table">
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
        <tbody>
        </tbody>
      </table>
      <button type="button" id="createIndentButtonId" ">Create</button>
    </form>
  </div>
  
  
    <script>
	var firstTable1 = document.getElementById('product-details-table');
    var selectedTable1 = document.getElementById('products-table');
    var addButtons2 = firstTable1.getElementsByClassName('add-btn');

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

        selectedTable1.querySelector('tbody').appendChild(newRow);
      }

      // Function to delete a row from the selected table
      function deleteRowFromSelectedTable(row) {
        selectedTable1.querySelector('tbody').removeChild(row);
      }

      for (let i = 0; i < addButtons2.length; i++) {
        var addButton = addButtons2[i];
        addButton.addEventListener('click', function() {
          var row = this.parentNode.parentNode;
          addRowToSelectedTable(row);
        });
      }
  </script>
</body>
</html>
