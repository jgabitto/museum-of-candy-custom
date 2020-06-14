<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <!--  <meta charset="utf-8"> -->
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <!-- User defined CSS -->
    <link rel="stylesheet" href="resources/css/app.css">

    <!-- Font -->
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,300,400,600,700&display=swap" rel="stylesheet">
    
    <!-- Icon -->
    <link rel="icon" href="resources/imgs/candy.png">
    <title>Hello</title>
  </head>
  <body>
      
    <jsp:include page="navbar.jsp" />
    
   	<div class="jumbotron">
    	<h1 class="display-4">Become an Oompa Loompa!</h1>
    	<p class="lead">Sign up to receive the latest news and updates regarding the Candy Museum.</p>
    	<hr class="my-4">
    	<p>Click the button below to be taken to the sign up page!</p>
    	<form action="newUser" method="get">
			<input type="submit" class="btn btn-primary" value="Add a new User">
		</form>
	</div>

  <div id="description" class="container">
    <p>Descriptions used above were taken from https://www.candytopia.com/
       and images from https://www.unsplash.com. Web design was made using the template
      provided by Colt Steele in the Web Developer Bootcamp.
    </p>
  </div>
    

    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>    

    <!-- Navbar color change -->
    <script>
      $(function () {
        $(document).scroll(function() {
        var $nav = $("#mainNavbar");
        $nav.toggleClass("scrolled", $(this).scrollTop() > $nav.height());
        });
      });
    </script>
  </body>
</html>