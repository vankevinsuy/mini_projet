<%@page import="model.Book"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
  
	<%
		Book book = (Book) request.getAttribute("book");
	%>
  	<div style="padding: 50px;">
	  	<div style="text-align: center; float: left; padding-right: 50px;">
	  		<img class="img_error" src=<%out.print(book.getCover()); %>>
	  		<br>
	  	</div>

	  	<div style="width:800px; float: left;">
		  	<form>
			  <div class="form-group row">
			    <label for="staticEmail" class="col-sm-2 col-form-label">Title</label>
			    <div class="col-sm-10">
                <p class="form-control-plaintext"><%out.print(book.getTitle()); %></p>
                </div>
			  </div>
			  <div class="form-group row">
			    <label for="staticEmail" class="col-sm-2 col-form-label">Author</label>
			    <div class="col-sm-10">
			      <p class="form-control-plaintext"><%out.print(book.getAuthor()); %></p>
			    </div>
			  </div>
			  <div class="form-group row">
			    <label for="staticEmail" class="col-sm-2 col-form-label">Release date</label>
			    <div class="col-sm-10">
			      <p class="form-control-plaintext"><%out.print(book.getRealease_date()); %></p>
			    </div>
			  </div>
			  <div class="form-group row">
			    <label for="staticEmail" class="col-sm-2 col-form-label">Editor</label>
			    <div class="col-sm-10">
            <p class="form-control-plaintext"><%out.print(book.getEditor()); %></p>
			    </div>
			  </div>
			  <div class="form-group row">
			    <label for="staticEmail" class="col-sm-2 col-form-label">Summary</label>
			    <div class="col-sm-10">
            <p class="form-control-plaintext"><%out.print(book.getSummary()); %></p>
			    </div>
			  </div>
			  
        <script>
			var resa = "<%out.print(book.isBookedasString());%>";
			
	 		if(resa == "false"){
				alert("pas réservé");
				document.write('<button type="button" class="btn btn-success" onclick="reserv();">Book</button>'); 
	  		}
	 		else{
				alert("réservé");
				document.write('<button type="button" class="btn btn-danger" style="background-color: red;" disabled>This book is already booked !</button>');
	  		} 
 
		</script>
		
		<script>
 		function reserv(val){
 			swal("Good job!", "You clicked the button!", "success");
 			<%book.setBooked();%>
 		} 
		</script>
			</form>
	  	</div>
  	</div>

  </body>

  
</html>