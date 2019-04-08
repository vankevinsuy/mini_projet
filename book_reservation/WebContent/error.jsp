<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="ISO-8859-1">
    <title>error</title>
  <link href="style.css" rel="stylesheet">
  </head>

  <body>
    <div style="text-align: center;">
      <img class="img_error" src="img/CodePen-404-Page.gif">
    </div>
    <script>
      setTimeout(function(){
          window.location.href = 'index.jsp';
      }, 7000);
    </script>
  </body>
</html>