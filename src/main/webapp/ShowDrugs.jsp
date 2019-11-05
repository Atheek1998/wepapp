

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="Start your development with a Dashboard for Bootstrap 4.">
  <meta name="author" content="Creative Tim">
  <title>Argon Dashboard - Free Dashboard for Bootstrap 4</title>
  <!-- Favicon -->
  <link href="img/brand/favicon.png" rel="icon" type="image/png">
  <!-- Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">
  <!-- Icons -->
  <link href="assets/vendor/nucleo/css/nucleo.css" rel="stylesheet">
  <link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.6.3/css/all.css"
	integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/"
	crossorigin="anonymous">
	 <link href="assets/vendor/@fortawesome/fontawesome-free/css/all.min.css" rel="stylesheet">
  <!-- Argon CSS -->
  <link type="text/css" href="css/argon.css?v=1.0.0" rel="stylesheet">
   <script type="text/javascript" >
   function preventBack(){window.history.forward();}
    setTimeout("preventBack()", 0);
    window.onunload=function(){null};
</script>
   
</head>

<body>
  <!-- Sidenav -->
  <nav class="navbar navbar-vertical fixed-left navbar-expand-md navbar-light bg-white" id="sidenav-main">
    <div class="container-fluid">
      <!-- Toggler -->
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#sidenav-collapse-main" aria-controls="sidenav-main" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <!-- Brand -->
      <a class="navbar-brand pt-0" href="./index.html">
        <img src="./img/medixlogo.png" class="navbar-brand-img" alt="...">
      </a>
      <!-- User -->
      <ul class="nav align-items-center d-md-none">
        <li class="nav-item dropdown">
          <a class="nav-link nav-link-icon" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="ni ni-bell-55"></i>
          </a>
          <div class="dropdown-menu dropdown-menu-arrow dropdown-menu-right" aria-labelledby="navbar-default_dropdown_1">
            <a class="dropdown-item" href="#">Action</a>
            <a class="dropdown-item" href="#">Another action</a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="#">Something else here</a>
          </div>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <div class="media align-items-center">
              <span class="avatar avatar-sm rounded-circle">
                <img alt="Image placeholder" src="img/theme/team-1-800x800.jpg">
              </span>
            </div>
          </a>
          <div class="dropdown-menu dropdown-menu-arrow dropdown-menu-right">
            <div class=" dropdown-header noti-title">
              <h6 class="text-overflow m-0">Welcome!</h6>
            </div>
            <a href="/UserProfile.jsp" class="dropdown-item">
              <i class="ni ni-single-02"></i>
              <span>My profile</span>
            </a>
            <a href="./examples/profile.html" class="dropdown-item">
              <i class="ni ni-settings-gear-65"></i>
              <span>Settings</span>
            </a>
            <a href="./examples/profile.html" class="dropdown-item">
              <i class="ni ni-calendar-grid-58"></i>
              <span>Activity</span>
            </a>
            <a href="./examples/profile.html" class="dropdown-item">
              <i class="ni ni-support-16"></i>
              <span>Support</span>
            </a>
            <div class="dropdown-divider"></div>
            <a href="/login" class="dropdown-item">
              <i class="ni ni-user-run"></i>
              <span>Logout</span>
            </a>
          </div>
        </li>
      </ul>
      <!-- Collapse -->
      <div class="collapse navbar-collapse" id="sidenav-collapse-main">
        <!-- Collapse header -->
        <div class="navbar-collapse-header d-md-none">
          <div class="row">
            <div class="col-6 collapse-brand">
              <a href="./index.html">
                <img src="img/brand/blue.png">
              </a>
            </div>
            <div class="col-6 collapse-close">
              <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#sidenav-collapse-main" aria-controls="sidenav-main" aria-expanded="false" aria-label="Toggle sidenav">
                <span></span>
                <span></span>
              </button>
            </div>
          </div>
        </div>
        <!-- Form -->
       
        <!-- Navigation -->
        <ul class="navbar-nav">
          <li class="nav-item">
            <a class="nav-link" href="/PharShowPresDrug">
              <i class="fas fa-pills"></i>Prescription Drugs
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="/PharShowNonPresDrug">
              <i class="fas fa-boxes"></i>General Drugs
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="/adddrugs.jsp">
              <i class="ni ni-tv-2 text-primary"></i> Add Prescription Drugs
            </a>
          </li>
          
               <li class="nav-item">
            <a class="nav-link" href="/addNonPresDrugs.jsp">
              <i class="ni ni-tv-2 text-primary"></i> Add General Drugs
            </a>
          </li>
         
         
         
          <li class="nav-item">
            <a class="nav-link" href="/showOrders">
              <i class="ni ni-bullet-list-67 text-red"></i> Orders From Cr
            </a>
          </li>
           <li class="nav-item">
            <a class="nav-link" href="/showDrOrders">
              <i class="ni ni-bullet-list-67 text-red"></i> Orders From Dr
            </a>
          </li>
         
        </ul>
        
        <!-- Divider -->
        <hr class="my-3">
        <!-- Heading -->
        
      </div>
    </div>
  </nav>
  <!-- Main content -->
  <div class="main-content">
    <!-- Top navbar -->
    <nav class="navbar navbar-top navbar-expand-md navbar-dark" id="navbar-main">
      <div class="container-fluid">
        <!-- Brand -->
                 <!-- Form -->
                 
                  <form class="form-inline md-form mr-auto mb-4" action="/searchDrugPm">
  				<input class="form-control mr-sm-2" type="text" placeholder="Search" aria-label="Search" name="search">
  				<button class="btn btn-outline-warning btn-rounded btn-sm my-0" type="submit" value="search">Search</button>
				</form>
               
           
        <!-- User -->
        <ul class="navbar-nav align-items-center d-none d-md-flex">
          <li class="nav-item dropdown">
            <a class="nav-link pr-0" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              <div class="media align-items-center">
                <span class="avatar avatar-sm rounded-circle">
                  <img alt="Image placeholder" src="img/theme/team-4-800x800.jpg">
                </span>
                <div class="media-body ml-2 d-none d-lg-block">
                  <span class="mb-0 text-sm  font-weight-bold text-dark">${username}</span>
                </div>
              </div>
            </a>
            <div class="dropdown-menu dropdown-menu-arrow dropdown-menu-right">
              <div class=" dropdown-header noti-title">
                <h6 class="text-overflow m-0">Welcome!</h6>
              </div>
              <a href="/UserProfile" class="dropdown-item">
                <i class="ni ni-single-02"></i>
                <span>My profile</span>
              </a>
              <a href="./examples/profile.html" class="dropdown-item">
                <i class="ni ni-settings-gear-65"></i>
                <span>Settings</span>
              </a>
            
              <div class="dropdown-divider"></div>
              <a href="/login" class="dropdown-item">
                <i class="ni ni-user-run"></i>
                <span>Logout</span>
              </a>
            </div>
          </li>
        </ul>
      </div>
    </nav>
    <!-- Header -->
    <div class="header  pb-8 pt-5 pt-md-8">
      <div class="container-fluid">
        <div class="header-body">
          </div>
    <!-- Page content -->
            <div>
          <table class="table table-striped">
		<thead>
			<tr>
				<th>Id</th>
				<th>Name</th>
				<th>Description</th>
				<th>Price</th>
				<th>Availability</th>
				<th>Image</th>
				<th>Edit</th>
				<th>Delete</th>
				
				
				

			</tr>
		</thead>
		<tbody>
			<c:forEach var="drug" items="${drugs }">
				<tr>
					<td>${drug.id}</td>
					<td>${drug.name}</td>
					<td>${drug.description}</td>
					<td>${drug.price}</td>
					<td>${drug.availability}</td>
					<td><img src="./img/${drug.url}" style="height: 50; width: 60"></td>
					<td><a href="/showUpdatePres?id=${drug.id}"><i class="fas fa-pencil-alt"></i></td>
					<td><a href="/deletePresDrug?id=${drug.id}"><i class="fas fa-trash-alt"></i></i></td>
									
					
				</tr>
			</c:forEach>
			
			<c:forEach var="drugs" items="${drugsNon }">
				<tr>
					<td>${drugs.id}</td>
					<td>${drugs.name}</td>
					<td>${drugs.description}</td>
					<td>${drugs.price}</td>
					<td>${drugs.availability}</td>
					<td><img src="./img/${drugs.url}" style="height: 50; width: 60"></td>
					<td><a href="/showUpdateNonPres?id=${drugs.id}"><i class="fas fa-pencil-alt"></i></td>
					<td><a href="/deleteNonPresDrug?id=${drugs.id}"><i class="fas fa-trash-alt"></i></i></td>
					
					
					
				</tr>
			</c:forEach>

		</tbody>
	</table>
        </div> 
  
        
        

		</tbody>
	</table>
        </div> 
          
    
        </div> 
      </div>
    </div>
      
  
  <!-- Argon Scripts -->
  <!-- Core -->
  <script src="./assets/vendor/jquery/dist/jquery.min.js"></script>
  <script src="./assets/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
  <!-- Optional JS -->
  <script src="./assets/vendor/chart.js/dist/Chart.min.js"></script>
  <script src="./assets/vendor/chart.js/dist/Chart.extension.js"></script>
  <!-- Argon JS -->
  <script src="./assets/js/argon.js?v=1.0.0"></script>
</body>
    
</html>