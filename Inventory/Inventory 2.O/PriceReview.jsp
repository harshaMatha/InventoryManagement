<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <title>Price Review</title>
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
  </style>
</head>
<body>
<h1 id="htag" align="center">Price Review</h1>
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

    <label for="manufacturingdateid">Manufacturing Date:</label>
    <input type="text" id="manufacturingdateid" name="ManufacturingDate">

    <label for="originalcostid">Original Cost:</label>
    <input type="text" id="originalcostid" name="OriginalCost">

    <label for="modifiedcostid">Modified Cost:</label>
    <input type="text" id="modifiedcostid" name="ModifiedCost">
    
     <label for="reasonid">Reason:</label>
    <textarea id="reasonid" name="Reason" rows="4" cols="42"  style="padding-right:10px"></textarea>
    

    <button type="submit" style="margin-left:140px">Update Cost</button>
  </form>
</body>
</html>
