<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Create Store Issue</title>
  <style>
  #product-details-table{
    background-color: white;
      height: 50px;
      overflow-y: scroll;
      width:1000px;
  
  }
  
    #htag{
  position: relative;
  top: 10px;
  margin-left: 450px;

  }
  
  #h1tag
  {   
     position: relative;
    top: 10px;
     margin-left: 500px;
  }

   #addButton
    {
        margin-left: 450px;
        border-radius:6px;
       width:120px;
      height:40px;
      background-color: #4CAF50;
      border: none;
      color: white;
      cursor: pointer;
      font-weight: bold;
      box-shadow: 0px 2px 4px rgba(0, 0, 0, 0.2);
      
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

     #products-table {
      background-color: white;
      height: 50px;
      overflow-y: scroll;
      width:1000px;
  
    }
    
    #first_table {
       height: 200px;
        margin-left:50px;
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
     padding-bottom:10px;
     
    }
     #products-dropdown1
    {
     display:flex;
     margin-left:640px;
     padding-bottom:10px;
     
    }
    #product-category{
    
     padding-left:20px;
     padding-right:20px;
     
    
    }
    #products-dropdown label{
     display: block;
      font-weight: bold;
      font-size: 20px;
      color: #333;
      margin-bottom: 10px;
      margin-left:200px;
      margin-right: 10px;
    }
     #products-dropdown1 label{
     display: block;
      font-weight: bold;
      font-size: 20px;
      color: #333;
      margin-bottom: 10px;
      margin-left:200px;
      margin-right: 10px;
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
    #addedproducts{
    margin-left:50px;
    }

  </style>
  <script>
  
  
  $(document).ready(function(){
    	$.ajax({
    	     url :"getStoreIds",
    	     method :"post",
    	   success : function(response) {
    		// Assuming 'response' holds the AJAX response data
    		   const dropdown = document.getElementById('stores-list');

    		   // Remove existing options from the dropdown
    		   while (dropdown.firstChild) {
    		     dropdown.removeChild(dropdown.firstChild);
    		   }

    		   // Iterate over the response data and add options to the dropdown
    		   for (const [index, storeData] of Object.entries(response)) {
    		     if (index !== 'length') {
    		       const option = document.createElement('option');
    		       option.value = storeData.storeId;
    		       option.textContent = storeData.storeName;
    		       dropdown.appendChild(option);
    		     }
    		   }
             },
         error: function() {
             alert('Error occurred while retrieving categories.');
         }
    	    	  
    	});
    	
    	
    	
    $("#indents-list").change(function(){
    
    	$.ajax({
   	     url :"getFilterDataId",
   	     method :"post",
   	     data: {"indentId" : $("#indents-list").val()
   	     },
   	   success : function(response) {
   		
   		   const dropdown = document.getElementById('indents-list');

   		   for (const [index, storeData] of Object.entries(response)) {
   		     if (index !== 'length') {
   		       const option = document.createElement('option');
   		       option.value = storeData.storeId;
   		       option.textContent = storeData.storeName;
   		       dropdown.appendChild(option);
   		     }
   		   }
            },
        error: function() {
            alert('Error occurred while retrieving categories.');
        }
   	    	  
   	});
    	
    	
 	});  	
    	

    	
  });
	    	    
  </script>
</head>
<body>
  <h2 id="htag">Create Stock Issue</h2>
    <div style="margin-bottom:20px">
    <div id="products-dropdown" align="right" >
    <label for="stores-list">Stores List: </label>
    <select id="stores-list">
   
    </select>
    </div>
    
     <div style="margin-bottom:20px">
   <div id="products-dropdown1" align="right" >
    <label for="indents-list">Indents List: </label>
    <select id="indents-list">

    </select>
    </div>
  
  
  <div id="first_table">
    <table id="product-details-table">
      <thead>
        <tr>
           <th>Indent ID</th>
          <th>Product ID</th>
          <th>Product Name</th>
          <th>Requested Quantity</th>
          <th>Action</th>
         
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

  

  <h2 id="h1tag" style="margin-bottom:30px">Indents List</h2>

  <div id="addedproducts">
    <form>
      <table class="table bg-white rounded shadow-sm table-hover" id="products-table">
        <thead>
          <tr>
            <th>Indent ID</th>
          <th>Product ID</th>
          <th>Product Name</th>
          <th>Requested Quantity</th>
          <th>Issued Quantity</th>
          <th>Action</th>
          </tr>
        </thead>
        <tbody>
        </tbody>
      </table>
      <button type="button" id="addButton" >Issue Stock</button>
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