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
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js"></script> <!-- Include the Bootstrap JavaScript library -->
      <script>
   
    function Myfunction(controllerUrl) {

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
          .dropdown-menu {
            background-color: #c1efde;
            color: var(--main-text-color);
         }
         .dropdown-item {
            background-color: #c1efde;
            color: black;
            font-weight: bold;
         }
         .dropdown-item:hover {
            background-color:white ;
            color:#009d63;
         }
      </style>

   </head>


   <body>
      <div class="d-flex" id="wrapper">
      <!-- Sidebar -->
      <div class="bg-white" id="sidebar-wrapper">
         <div class="sidebar-heading text-center py-4 primary-text fs-4 fw-bold text-uppercase border-bottom" >
            <span class="material-symbols-outlined">warehouse</span>Inventory
         </div>
         <div class="list-group list-group-flush my-3">
            <button class="list-group-item list-group-item-action bg-transparent second-text active" onclick="Myfunction('wareHouseButton')">
            <span class="material-symbols-outlined">inventory</span>Warehouse Stock</button>
            <button class="list-group-item list-group-item-action bg-transparent second-text fw-bold" id="indentsButton" onclick="Myfunction('createIndentButton')" >
            <i><span class="material-symbols-outlined">
            order_approve
            </span></i> Create Indent</button>
            <button class="list-group-item list-group-item-action bg-transparent second-text fw-bold" id="adjustmentsButton" onclick="Myfunction('adjustmentsButton')">
            <span class="material-symbols-outlined">
            equalizer
            </span>
            Adjustments</button> 
            <button class="list-group-item list-group-item-action bg-transparent second-text fw-bold" id="priceReviewButton" onclick="Myfunction('priceReviewButton')">
            <i>
            <span class="material-symbols-outlined">
            currency_rupee
            </span></i>
            Price Review</button>
            <div class="dropdown">
            <button class="list-group-item list-group-item-action bg-transparent second-text fw-bold dropdown-toggle" role="button" id="storeDropDownId" data-bs-toggle="dropdown" aria-expanded="false" >
            
                <i class="fas fa-shopping-cart me-2"  >
                </i>Store</button>
                   <ul class="dropdown-menu" aria-labelledby="storeDropDownId">
                      <li><button class="dropdown-item" onclick="Myfunction('stockIssuesButton')">Stock Issues</button></li>
                      <li><button class="dropdown-item" onclick="Myfunction('createStockIssueButton')">Create Stock Issue</button></li>
           			  <li><button class="dropdown-item" onclick="Myfunction('storeReturnsButton')">Store Returns</button></li>
                   </ul>
           </div>         
               
            <button class="list-group-item list-group-item-action bg-transparent text-danger fw-bold"><i
               class="fas fa-power-off me-2"></i>Logout</button>
         </div>
      </div>
<div id="page-content-wrapper">
            <nav class="navbar navbar-expand-lg navbar-light bg-transparent py-4 px-4">
                <div class="d-flex align-items-center">
                    <i class="fas fa-align-left primary-text fs-4 me-3" id="menu-toggle"></i>
                    <h2 class="fs-2 m-0">Dashboard</h2>
                </div>

                <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                    aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                        <li class="nav-item dropdown">
                            <button class="nav-link dropdown-toggle second-text fw-bold" role="button"
                                    data-bs-toggle="dropdown" aria-expanded="false">
                                <i class="fas fa-user me-2"></i>John Doe
                            </button>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <li><button class="dropdown-item" >Profile</button></li>
                                <li><button class="dropdown-item" >Settings</button></li>
                                <li><button class="dropdown-item" >Logout</button></li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </nav>

            <div class="container-fluid px-4" id="content">
                
                
                <!--Page to be inserted -->
                
                
            </div>
        </div>
      </div>
    <script>
        var el = document.getElementById("wrapper");
        var toggleButton = document.getElementById("menu-toggle");

        toggleButton.onclick = function () {
            el.classList.toggle("toggled");
        };
    </script>
   </body>
</html>
