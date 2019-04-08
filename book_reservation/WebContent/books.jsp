<!DOCTYPE html>
<html>
  <head>
    <meta charset="ISO-8859-1">
    <title>books</title>
	<link href="style.css" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
  </head>

  <body>
  	<div style="padding: 50px;">
	  	<div style="text-align: center; float: left; padding-right: 50px;">
	  		<img class="img_error" src="img/Les_Miserables.jpg">
	  		<br>
	  	</div>

	  	<div style="width:800px; float: left;">
		  	<form>
			  <div class="form-group row">
			    <label for="staticEmail" class="col-sm-2 col-form-label">Title</label>
			    <div class="col-sm-10">
			      <input type="text" readonly class="form-control-plaintext" value="email@example.com">
			    </div>
			  </div>
			  <div class="form-group row">
			    <label for="staticEmail" class="col-sm-2 col-form-label">Author</label>
			    <div class="col-sm-10">
			      <input type="text" readonly class="form-control-plaintext" value="email@example.com">
			    </div>
			  </div>
			  <div class="form-group row">
			    <label for="staticEmail" class="col-sm-2 col-form-label">Release date</label>
			    <div class="col-sm-10">
			      <input type="text" readonly class="form-control-plaintext" value="email@example.com">
			    </div>
			  </div>
			  <div class="form-group row">
			    <label for="staticEmail" class="col-sm-2 col-form-label">Editor</label>
			    <div class="col-sm-10">
			      <input type="text" readonly class="form-control-plaintext" value="email@example.com">
			    </div>
			  </div>
			  <div class="form-group row">
			    <label for="staticEmail" class="col-sm-2 col-form-label">Summary</label>
			    <div class="col-sm-10">
			      <input type="text" readonly class="form-control-plaintext" value="email@example.com">
			    </div>
			  </div>
			  <?php if(){ ?>
			  		<button type="button" class="btn btn-danger" style="background-color: red;" disabled>This book is already booked !</button>
			  	<?php }else{ ?>
			  		<button type="button" class="btn btn-success">Book</button>
			  	<?php } ?>
			</form>
	  	</div>
  	</div>

  </body>
</html>