<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
   <head>
      <meta charset="UTF-8" />
      <meta http-equiv="X-UA-Compatible" content="IE=edge" />
      <meta name="viewport" content="width=device-width, initial-scale=1.0" />
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" />
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
      <title>Inventory Home Page</title>
      <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
      <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/inventory_home.css">
       
       
       
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <script>
   
    $(document).ready(function() {
        $("#indentButton").click(function(event) {
            event.preventDefault(); 

            $.ajax({
                url: "indentbutton",
                method: "GET",
                success: function(response) {
                    console.log("Indents Button call successful");
                    $("#content").html(response);
                },
                error: function() {
                    console.log("AJAX call error");
                }
            });
        });
        
        
        
        
        $("#adjustmentsButton").click(function(event) {
            event.preventDefault(); 

            $.ajax({
                url: "adjustmentsbutton",
                method: "GET",
                success: function(response) {
                    console.log("Adjustments Button called successful");
                    $("#content").html(response);
                },
                error: function() {
                    console.log("AJAX call error");
                }
            });
        });
        
        
        
        $("#priceReviewButton").click(function(event) {
            event.preventDefault(); 

            $.ajax({
                url: "pricereviewbutton",
                method: "GET",
                success: function(response) {
                    console.log("Indents Button call successful");
                    $("#content").html(response);
                },
                error: function() {
                    console.log("AJAX call error");
                }
            });
        });
        
        
        
        
    });
   

   </script>
   
   <style>
         .material-symbols-outlined {
         font-variation-settings:
         'FILL' 0,
         'wght' 700,
         'GRAD' 0,
         'opsz' 10
         }
    
         :root {
         --main-bg-color: #009d63;
         --main-text-color: #009d63;
         --second-text-color: #bbbec5;
         --second-bg-color: #c1efde;
         }
         .primary-text {
         color: var(--main-text-color);
         }
         .second-text {
         color: var(--second-text-color);
         }
         .primary-bg {
         background-color: var(--main-bg-color);
         }
         .secondary-bg {
         background-color: var(--second-bg-color);
         }
         .rounded-full {
         border-radius: 100%;
         }
         #wrapper {
         overflow-x: hidden;
         background-image: linear-gradient(
         to right,
         #baf3d7,
         #c2f5de,
         #cbf7e4,
         #d4f8ea,
         #ddfaef
         );
         }
         #sidebar-wrapper {
         min-height: 100vh;
         margin-left: -15rem;
         -webkit-transition: margin 0.25s ease-out;
         -moz-transition: margin 0.25s ease-out;
         -o-transition: margin 0.25s ease-out;
         transition: margin 0.25s ease-out;
         }
         #sidebar-wrapper .sidebar-heading {
         padding: 0.875rem 1.25rem;
         font-size: 1.2rem;
         }
         #sidebar-wrapper .list-group {
         width: 15rem;
         }
         #page-content-wrapper {
         min-width: 100vw;
         }
         #wrapper.toggled #sidebar-wrapper {
         margin-left: 0;
         }
         #menu-toggle {
         cursor: pointer;
         }
         .list-group-item {
         border: none;
         padding: 20px 30px;
         }
         .list-group-item.active {
         background-color: transparent;
         color: var(--main-text-color);
         font-weight: bold;
         border: none;
         }
         @media (min-width: 768px) {
         #sidebar-wrapper {
         margin-left: 0;
         }
         #page-content-wrapper {
         min-width: 0;
         width: 100%;
         }
         #wrapper.toggled #sidebar-wrapper {
         margin-left: -15rem;
         }
         }
      </style>

   </head>


   <body>
      <div class="d-flex" id="wrapper">
      <!-- Sidebar -->
      <div class="bg-white" id="sidebar-wrapper">
         <div class="sidebar-heading text-center py-4 primary-text fs-4 fw-bold text-uppercase border-bottom">
            <span class="material-symbols-outlined">warehouse</span>Pennant Inventory
         </div>
         <div class="list-group list-group-flush my-3">
            <a href="#" class="list-group-item list-group-item-action bg-transparent second-text active">
            <span class="material-symbols-outlined">inventory</span>Warehouse Stock</a>
            <a href="#" class="list-group-item list-group-item-action bg-transparent second-text fw-bold" id="indentButton">
            <i><span class="material-symbols-outlined">
            order_approve
            </span></i> Create Indent</a>
            <a href="#" class="list-group-item list-group-item-action bg-transparent second-text fw-bold" id="adjustmentsButton">
            <span class="material-symbols-outlined">
            equalizer
            </span>
            Adjustments</a>
            <a href="#" class="list-group-item list-group-item-action bg-transparent second-text fw-bold" id="priceReviewButton">
            <i>
            <span class="material-symbols-outlined">
            currency_rupee
            </span></i>
            Price Review</a>
            <a href="#" class="list-group-item list-group-item-action bg-transparent second-text fw-bold"><i
               class="fas fa-shopping-cart me-2"></i>Store</a>
            <a href="#" class="list-group-item list-group-item-action bg-transparent text-danger fw-bold"><i
               class="fas fa-power-off me-2"></i>Logout</a>
         </div>
      </div>
      <div id="content">
      kewjkjfljl
      </div>
      </div>
   </body>
</html>