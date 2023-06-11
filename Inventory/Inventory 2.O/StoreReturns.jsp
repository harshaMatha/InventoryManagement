<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Bus List Page</title>
    <style>

        .container {
            max-width: 800px;
            margin: 0 auto;
            padding-top: 10px;
        }

        .issues-block {
            border: 1px solid #ccc;
            border-radius: 10px;
            padding: 20px;
            margin-bottom: 20px;
            background-color: #fff;
        }

        .bus-block:hover {
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            background-color:#d8f2f0 ;
            
            
        }

        .bus-title {
            font-size: 24px;
            margin-bottom: 10px;
        }

        .issue-details{
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 10px;
        }

         .label {
            font-weight: bold;
            
        }


        .btn-issues{
               border-radius:6px;
    background-color: #4CAF50;
    border: none;
    color: white;
    cursor: pointer;
    font-weight: bold;
     box-shadow: 0px 2px 4px rgba(0, 0, 0, 0.2);
            margin-left: 600px;

        }

        .btn-issues:hover {
            background-color:#4CAF50 ;
            border-color: #4CAF50;
        }
        



.bold {
            font-weight: bold;
            font-size: 25px;
        }
        

    </style>
    
          <script>
         function ProductsList(controllerUrl) {
            $.ajax({
                url: controllerUrl,
                method: "GET",
                success: function(response) {
                    $("#content").html(response);
                },
                error: function() {
                    console.log("AJAX call error");
                }
            });  
         }
         
      </script>
    
    
</head>
<body>

<form method="Get" action="">
    <div class="container">
        <h1 class="text-center mb-4">Store Returns List</h1>
        <% 
        for (int i=0;i<5;i++) {
            %>
            <div class="issues-block">
                <h4 class="store-indent-id">Store Return ID: <span class="bold">10023</span></h4>
                <div class="issue-details">
                    <span class="label">IndentID:</span><span >A2345</span>
                        <span class="label">Returned Date:</span><span >2023-12-29</span>
                        <span class="label ">Store ID:</span> <span >123EW</span>
                </div>
                
                
                <div>
                <button type="submit" value="show" class="btn-issues" onclick="ProductsList('storeReturnsProductsButton')">View Products</button>
                </div>
            </div>
            <% 
        } 
        %>
    </div>
</form>
</body>
</html>