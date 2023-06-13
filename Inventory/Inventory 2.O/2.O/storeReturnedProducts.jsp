<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
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


    
    #first_table {
       height: 200px;
      
      overflow-y: scroll;
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

  </style>
</head>
<body>
  <h2 align="center">Returned Products List</h2>
  <div style="margin-bottom:20px; margin-left:50px;">
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
</body>
</html>