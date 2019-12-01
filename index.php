<?php

session_start();

?>
<html>
<head>

	<title>RAD ONLINE SHOPPING</title>
	<link rel="icon" href="tagicon.jpg">
  <link rel="stylesheet" href="css/custom.css"/>
		<script src="js/jquery2.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script src="main.js"></script>
		
		<style>
               @media screen and (max-width:480px){
                    #search{width:80%;}
                    #search_btn{width:30%;float:right;margin-top:-32px;margin-right:10px;}
               }
          </style>
          
  
  	<center>
    <div>RAD ONLINE SHOPPING</div>
</center>


</head>

<a class ="fix-me button" href="product.php">SHOP NOW<link rel="html" type ="<?php  ?>" href="index.php"></a><center>
<body>

	<div class="wait overlay">
	<div class="loader"></div>
</div>
	<div class="navbar navbar-inverse navbar-fixed-top">
		<div class="container-fluid">	
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#collapse" aria-expanded="false">
					<span class="sr-only">navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
			<a href="index.php" class="navbar-brand"> </a><img src="kk/tagicon.jpg" width="55">
			</div>
		<div class="collapse navbar-collapse" id="collapse">
			<ul class="nav navbar-nav">
				<li><a href="index.php"><span class="glyphicon glyphicon-home"></span>HOME</a></li>
				<li><a href="product.php"><span class="glyphicon glyphicon-modal-window"></span>PRODUCT</a></li>

			</ul>

			<form class="navbar-form navbar-left">
		        <div class="form-group">
		          <input type="text" class="form-control" placeholder="Search" id="search" >

		        </div>
		        <button type="submit" class="btn btn-primary" id="search_btn"><span class="glyphicon glyphicon-search"></span></button>
		     </form>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="#" class="dropdown-toggle" data-toggle="dropdown"><span class="glyphicon glyphicon-shopping-cart"></span>Cart<span class="badge">0</span></a>
					<div class="dropdown-menu" style="width:400px;">
						<div class="panel panel-success">
							<div class="panel-heading">
								<div class="row">
									<div class="col-md-3">Sl.No</div>
									<div class="col-md-3">Product Image</div>
									<div class="col-md-3">Product Name</div>
									<div class="col-md-3">Price in RM</div>
								</div>
							</div>

							<div class="panel-body">
								<div id="cart_product">
								<!--<div class="row">
									<div class="col-md-3">Sl.No</div>
									<div class="col-md-3">Product Image</div>
									<div class="col-md-3">Product Name</div>
									<div class="col-md-3">Price in $.</div>
								</div>-->
								</div>
							</div>
							<div class="panel-footer"></div>
						</div>
					</div>
				</li>
				<li><a href="#" class="dropdown-toggle" data-toggle="dropdown"><span class="glyphicon glyphicon-user"></span>SignIn</a>
					<ul class="dropdown-menu">
						<div style="width:300px;">
							<div class="panel panel-primary">
								<div class="panel-heading">Login</div>
								<div class="panel-heading">
									<form onsubmit="return false" id="login">
										<label for="email">Email</label>
										<input type="email" class="form-control" name="email" id="email" required/>
										<label for="email">Password</label>
										<input type="password" class="form-control" name="password" id="password" required/>
										<p><br/></p>
										<!--<a href="#" style="color:white; list-style:none;">Forgotten Password</a>--><input type="submit" class="btn btn-success" style="float:right;">
									</form>
								</div>
								<div class="panel-footer" id="e_msg"></div>
							</div>
						</div>
					</ul>
				</li>
			</ul>
		</div>
	</div>
</div>	




  <style>
  .carousel-inner > 
  .carousel-inner > 
  </style>

<div class="container">
  <br>
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
      <li data-target="#myCarousel" data-slide-to="4"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">

      <div class="item active">
      <img src="product_images/ss1.png" alt="Flower" width="490" height="345">
       
      </div>

      <div class="item">
        <img src="product_images/ss2.png" alt="Flower" width="490" height="345">
 

         
      </div>
    
      <div class="item">
          <img src="product_images/ss3.png"  alt="Flower" width="490" height="345">
      
      </div>


      <div class="item">
        <img src="product_images/ss5.png" alt="Flower" width="490" height="345">
    </div>

     <div class="item">
        <img src="product_images/ss4.png" alt="Flower" width="490" height="345">
</div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>


<section id="showcase">
     <div class="container">  <center>
    
</center>
</div>
</section>
<p><br><br></p>
<p><br><br></p>
<p><br><br></p>
<p><br><br></p>
<p><br><br></p>
<p><br><br></p>
<p><br><br></p>
<p><br><br></p>
<p><br><br></p>
<p><br><br></p>
<p><br><br></p>
<p><br><br></p>
<p><br><br></p>
<p><br><br></p>

<div class="okje">

<p>FEATURED</p>
</div>
<div class="block">
     <h3>SHOES</h3>
     <p><img src="product_images/a1.jpg" width="300"><br>
ADIDAS NMD<br>Men's Running Shoe
</p>
</div>
<div class="block">
     <h3>CLOTH</h3>
     <p><img src="product_images/w3.jpg" width="300"><br>PLUSH FAUX FUR MAXI<br>Ladies Jacket</p>
</div>
<div class="block">
     <h3>CAP</h3>
     <p><img src="product_images/c2.jpg" width="300"><br>HERITAGE 86 CAP<br>Cap In White</p>
</div>
<section id="showit">
    
</section>

 <section id="showme" >
<div><img src="css/wood.jpg" width="2100" height="900"></div>
 </section>
<footer id="main-footeria">
  <p><br><br></p>
<p><br><br></p>
<p><br><br></p> 

   
<p><br><br></p>
<link href='https://fonts.googleapis.com/css?family=Raleway:400,200' rel='stylesheet' type='text/css'> 
  
  <link href="//netdna.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
<nav class="social">
          <ul>
              <li><a href="https://twitter.com/">Twitter <i class="fa fa-twitter"></i></a></li>
              <li><a href="https://facebook.com/">Facebook <i class="fa fa-facebook"></i></a></li>
              <li><a href="http://dribbble.com/">Dribbble <i class="fa fa-dribbble"></i></a></li>
              <li><a href="http://behance.net/">Behance <i class="fa fa-behance"></i></a></li>
          </ul>
      </nav>

     <p>Copyright &copy; 2017 RAD Online Shopping<br/>
     All Right Reserved</p>


 
</footer>  
</body>
</html>
