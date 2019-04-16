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
  

        <script>
			  	var resa = "<%book.isBooked();%>";
					if(resa == false){
			  			document.write('<button type="button" class="btn btn-success">Book</button>');
			  		}else{
						document.write('<button type="button" class="btn btn-danger" style="background-color: red;" disabled>This book is already booked !</button>');
			  		}
					document.write('<%book.setBooked(); %>');
			  		swal("réservation faite!", "", "success");
				</script>
			</form>
	  	</div>
  	</div>

  </body>
</html>