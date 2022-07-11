<?php
include'functions.php';
?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <meta name="description" content="Sistem Pendukung Keputusan (SPK) Metode Analytical Hierarchy Proccess(AHP) dan Technique For Others Reference by Similarity to Ideal Solution (TOPSIS) berbasis web dengan PHP dan MySQL. Studi kasus: pemilihan padi terbaik desa sambong bangi."/>
    <meta name="keywords" content="Sistem Pendukung Keputusan, Decision Support System, Analytical Hierarchy Proccess, AHP, Technique For Others Reference by Similarity to Ideal Solution, TOPSIS, Pemilihan Padi berkualitas , Tugas Akhir, Skripsi, Jurnal, , MySQL, CSS, JavaScript, Bootstrap, jQuery"/>
    <meta name="author" content="isna"/>
  
    
     <title>SPK - APH & Topsis</title>
    <link href="assets/css/flatly-bootstrap.min.css" rel="stylesheet"/>
    <link href="assets/css/general.css" rel="stylesheet"/>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>    
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">       
  </head>
  <body>
    <nav class="navbar navbar-default navbar-static-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="index.php"> <i class="fas fa-arrow-left"></i></a>
        </div>
        
    </nav>

    <div class="container">
    <?php
        if(file_exists($mod.'.php'))
            include $mod.'.php';
        else
            include 'home.php';
    ?>
    </div>
    
</body>
</html>