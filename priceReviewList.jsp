<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Price Review List</title>
   <style>
        .container {
            max-width: 800px;
            margin: 100 auto;
            padding-top: 10px;
            margin-left:170px;
        }

        .issues-block {
            border: 1px solid #ccc;
            border-radius: 10px;
            padding: 20px;
            margin-bottom: 20px;
            background-color: #fff;
        }

        .issues-block:hover {
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            background-color:#d8f2f0 ;
            
            
        }

        .issue-details{

            margin-top:10px;
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
        
           /* Custom styles for modal */
    .modal-content {
        background-color: #f1f1f1;
        border-radius: 10px;
    }

    .modal-header {
        background-color: #c1efde;
        border-radius: 10px 10px 0 0;
    }

    .modal-title {
        color: #333;
        font-weight: bold;
    }

    .modal-body {
        padding: 20px;
    }
    
     .twoDropdowns {
	display: flex;
	flex-direction: column;
	justify-content: space-around;
}

.dropdowns {
	display: flex;
	padding-left: 300px;
    height: 100px;
}

.dropdown {
	display: inline-block;
	margin-right: 10px;
} 

    </style>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    
    <script>
    function loadPriceReviewProducts(pr_id) {
        var currentPageUrl = window.location.href;
        var data = {}
        data["pr_id"]=pr_id;
        $.ajax({
          url: "getPriceReviewProductsList",
          method: "post",
          data:{"pr_id":JSON.stringify(data)},
          success: function (response) {
            $("#modalContent").html(response);
            $("#productsModal").modal("show");
            history.pushState(null, null, currentPageUrl);
          },
          error: function () {
            console.log("Failed to load static page");
          }
        });
      }

    </script>
    
</head>
<body>

<form method=post onsubmit="filterData(); return false">
	<div class="dropdowns">
		<div class="twoDropdowns">
			<div class="dropdown">
				<select id="store-id-dropdown">
				<option value="" selected>Select Product Category</option>
				
				</select>
			</div>
			<div class="dropdown">
				<select id="indent-status-dropdown">
					<option value="" selected>Select Product Name</option>
					
				</select>
			</div>
		</div>
		<div class="twoDropdowns">
			<div class="dropdown">
				<label>From Date :</label>
				<input type="date" id="indent-date-dropdown-from"
					placeholder="Select Indent Date">
			</div>
			<div class="dropdown">
				<label>To  Date :</label>
				<input type="date" id="indent-date-dropdown-to"
					placeholder="Select Indent Date">
			</div>
		</div>
		
		<div class="twoDropdowns">
			<input type="reset">
			<button type="submit" >Apply Filters</button>
		</div>
	</div>
</form>

<form method="post" action="">
    <div class="container">
        <h1 class="text-center mb-4">Price Review List</h1>
        <c:forEach items="${priceReview}" var="pricereview">
            <div class="issues-block" >
                <h4 class="store-indent-id">Price Review ID: <span class="bold">${pricereview.priceReviewId}</span></h4>
                <div class="issue-details" >
                    <span class="label">Price Review Date :  </span><span>${pricereview.priceReviewDate}</span>
                
                    <button type="button" class="btn-issues" onclick="loadPriceReviewProducts(${pricereview.priceReviewId})">View Products</button>
                </div>
            </div>
        </c:forEach>
    </div>
</form>

<!-- Modal -->
<div class="modal fade" id="productsModal" tabindex="-1" aria-labelledby="productsModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-lg" style="max-width: calc(100% - 200px);">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="productsModalLabel">Products</h5>
                <button type="button" class="btn-close" data-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body" id="modalContent">
                <!-- Modal content will be loaded dynamically here -->
            </div>
        </div>
    </div>
</div>


</body>
</html>