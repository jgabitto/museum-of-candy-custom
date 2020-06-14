<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
      
    <c:if test="${pageContext.request.userPrincipal.name != null}">
		<jsp:include page="navbar2.jsp" />
	</c:if>
	<c:if test="${pageContext.request.userPrincipal.name == null}">
		<jsp:include page="navbar.jsp" />
	</c:if>
    
   	<div class="jumbotron">
    	<h1 class="display-4">Become an Oompa Loompa!</h1>
    	<p class="lead">Sign up to receive the latest news and updates regarding the Candy Museum.</p>
    	<hr class="my-4">
    	<p>Once the form is complete, review your information below. If you would like to make an edit, press the edit button</p>
    	Submit your information by pressing the submit button.
    	<p id="registration"></p>
	</div>

	<form:form name="registration" class="jumbotron container" action="users" method="POST" modelAttribute="user">
    	<form:hidden path="id"/>
    	<div class="form-group">
        	<label for="email">Email</label>
        	<form:input path="email" type="text" class="form-control" id="email" name="email" placeholder="Enter Email" />
    	</div>
    	<div class="form-group">
            <label for="password">Password</label>
            <form:input path="password" type="text" class="form-control" id="password" name="password" placeholder="Enter a Password"/>
        </div>
    	<div class="form-group">
        	<label for="firstName">First Name</label>
        	<form:input path="firstName" type="text" class="form-control" id="firstName" name="firstName" placeholder="Enter First Name" />
    	</div>
    	<div class="form-group">
        	<label for="lastName">Last Name</label>
        	<form:input  path="lastName" type="text" class="form-control" id="lastName" name="lastName" placeholder="Enter Last Name" />
    	</div>
    	<div class="form-group">
        	<label for="userName">Username</label>
            <form:input  path="userName" type="text" class="form-control" id="userName" name="userName" placeholder="Enter User Name"/>
        </div>
    	<button id="submitBtn" type="submit" class="btn btn-primary">Submit</button>
	</form:form>

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