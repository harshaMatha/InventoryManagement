<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <title>Adjustments</title>
  <style>
  #htag{
  position: relative;
  top: 20px;
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
  </style>
</head>
<body>
<h1 id ="htag" align="center">Adjustments</h1>
  <form>
    <label for="productcategoryid">Product Category:</label>
    <select id="productcategoryid" name="ProductCategory">
      <option value="option1">Option 1</option>
      <option value="option2">Option 2</option>
      <option value="option3">Option 3</option>
    </select>

    <label for="productnameid">Product Name:</label>
    <select id="productnameid" name="ProductName">
      <option value="option1">Option 1</option>
      <option value="option2">Option 2</option>
      <option value="option3">Option 3</option>
    </select>

    <label for="batchnoid">Batch No:</label>
    <select id="batchnoid" name="BatchNo">
      <option value="option1">Option 1</option>
      <option value="option2">Option 2</option>
      <option value="option3">Option 3</option>
    </select>

  

    <label for="originalstockid">Original Stock: </label>
    <input type="text" id="originalstockid" name="OriginalStock">

    <label for="currentstockid">Current Stock: </label>
    <input type="text" id="currentstockid" name="CurrentStock">
    
     <label for="reasonid">Reason:</label>
    <textarea id="reasonid" name="Reason" rows="4" cols="42" ></textarea>
    

    <button type="submit" style="margin-left:120px">Update Stock</button>
  </form>
</body>
</html>
