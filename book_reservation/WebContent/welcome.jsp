<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Insert title here</title>
	</head>
	
	<body>
		
  	<div style="text-align: center;">
  		<img class="img_error" src="img/welcome.gif">
  	</div>

	  	<div class="book_table">
	  		<input type="text" id="book_search" onkeyup="myFunction()" placeholder="Search for names.." title="Type in a name">
			<table class="table table-hover" id="book_table">
			  <thead class="thead_table">
			    <tr>
			      <th scope="col">Title</th>
			      <th scope="col">Author</th>
			      <th scope="col">Release date</th>
			      <th scope="col">Editor</th>
			    </tr>
			  </thead>
			  <tbody>
			    <tr>
			      <th scope="row">Les Miserables</th>
			      <td>Victor Hugo</td>
			      <td>1862</td>
			      <td>Albert Lacroix et Cie</td>
			    </tr>
			    <tr>
			      <th scope="row">Les Trois Mousquetaires</th>
			      <td>Alexandre Dumas</td>
			      <td>1844</td>
			      <td>Baudry</td>
			    </tr>
			    <tr>
			      <th scope="row">Oliver Twist</th>
			      <td>Charles Dickens</td>
			      <td>1839</td>
			      <td>Baudry</td>
			    </tr>
			  </tbody>
			</table>
		</div>
		
		<form action="./Authentification" method = "POST">
		   <button type="submit" value="deconnexion" name="log">Log out</button>
		</form>

		<script>
		function myFunction() {
		  var input, filter, table, tr, td, i, txtValue;
		  input = document.getElementById("book_search");
		  filter = input.value.toUpperCase();
		  table = document.getElementById("book_table");
		  tr = table.getElementsByTagName("tr");
		  for (i = 0; i < tr.length; i++) {
		    td = tr[i].getElementsByTagName("td")[0];
		    if (td) {
		      txtValue = td.textContent || td.innerText;
		      if (txtValue.toUpperCase().indexOf(filter) > -1) {
		        tr[i].style.display = "";
		      } else {
		        tr[i].style.display = "none";
		      }
		    }       
		  }
		}
		</script>
	
	</body>
</html>