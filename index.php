<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title> Sistem Login </title>
	<link rel="icon" type="image/png" href="img/favicon.ico"/>
    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template -->
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:200,200i,300,300i,400,400i,600,600i,700,700i,900,900i" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Merriweather:300,300i,400,400i,700,700i,900,900i" rel="stylesheet">
    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <!-- Custom styles for this template -->
    <link href="css/coming-soon.min.css" rel="stylesheet">
     <link rel="stylesheet" href="css/coming-soon">
  </head>
  <body class="bg-secondary mx-auto">
    <div class="overlay"></div>
    <div class="masthead mx-auto" >
      <div class="container h-100 ml-5 ">
        <div class="row h-100  ">
          <div class="col-12 my-auto">
          <div class="masthead-content text-white py-5 py-md-0">
              <h1 class="mb-3 ml-5 "><i class="fa fa-adn"></i>Hp-Topsis </h1>
				<form method='post' action="login-process.php" >
				  <div class="input-group input-group-newsletter" style="padding:10px 0;">
					<input type="text" name="username" class="form-control" placeholder="Username" aria-label="Username" aria-describedby="basic-addon" required autofocus>
				  </div>
				  <div class="input-group input-group-newsletter" style="padding:10px 0;">
					<input type="password" name="password" class="form-control" placeholder="Password" aria-label="Username" aria-describedby="basic-addon" required autofocus>
				  </div>
				  <div class="input-group input-group-newsletter" style="padding:19px 0;">
					<button class="btn btn-secondary " style="padding:15px 185px;" type="submit" name="login">Login</button> 
				  </div>
				</form>
            </div>
          </div>
        </div>
      </div>
    </div>
    
    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- Plugin JavaScript -->
    <script src="vendor/vide/jquery.vide.min.js"></script>
    <!-- Custom scripts for this template -->
    <script src="js/coming-soon.min.js"></script>
  </body>
</html>
