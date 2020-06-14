<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
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
    
    <title>Home</title>
</head>
<body>
	<jsp:include page="navbar2.jsp" />

	<div class="jumbotron">
    	<h1 class="display-4">Welcome Ooompa Loomp!</h1>
    	<hr class="my-4">
    	<p id="lead1" class="lead">Fill out the form below to receive your customized sweets receipe!</p>
    	<p id="lead2" class="lead"></p>
    	<p id="lead3" class="lead"></p>
	</div>
	<form id="foodForm" class="container">
		<div class="input-group">
  			<div class="input-group-prepend">
    			<span class="input-group-text" id="inputGroup-sizing-default">Food Name</span>
  			</div>
  				<input type="text" name="foodName" class="form-control" aria-label="Default" aria-describedby="inputGroup-sizing-default" Placeholder="Cookies, cupcakes, etc">
		</div>
		<div class="input-group">
	  		<div class="input-group-prepend">
	    		<label class="input-group-text" for="inputGroupSelect01">Cuisine</label>
	  		</div>
	  		<select name="cuisineSelect" class="custom-select">
	    		<option selected>Choose...</option>
	    		<option value="">None</option>
	    		<option value="African">African</option>
	    		<option value="American">American</option>
	    		<option value="British">British</option>
	    		<option value="Cajun">Cajun</option>
	    		<option value="Caribbean">Caribbean</option>
	    		<option value="Chinese">Chinese</option>
	    		<option value="Eastern European">Eastern European</option>
	    		<option value="European">European</option>
	    		<option value="French">French</option>
	    		<option value="German">German</option>
	    		<option value="Greek">Greek</option>
	    		<option value="Indian">Indian</option>
	    		<option value="Irish">Irish</option>
	    		<option value="Italian">Italian</option>
	    		<option value="Japanese">Japanese</option>
	    		<option value="Jewish">Jewish</option>
	    		<option value="Korean">Korean</option>
	    		<option value="Latin American">Latin American</option>
	    		<option value="Mediterranean">Mediterranean</option>
	    		<option value="Mexican">Mexican</option>
	    		<option value="Middle Eastern">Middle Eastern</option>
	    		<option value="Nordic">Nordic</option>
	    		<option value="Southern">Southern</option>
	    		<option value="Spanish">Spanish</option>
				<option value="Thai">Thai</option>
	    		<option value="Vietnamese">Vietnamese</option>	    			    			    			    		
	  		</select>
		</div>
		<div class="input-group">
	  		<div class="input-group-prepend">
	    		<label class="input-group-text" for="inputGroupSelect01">Diet</label>
	  		</div>
	  		<select name="diet" class="custom-select" id="inputGroupSelect01">
	    		<option selected>Choose...</option>
	    		<option value="">None</option>
	    		<option value="Gluten Free">Gluten Free</option>
	    		<option value="Ketogenic">Ketogenic</option>
	    		<option value="Vegetarian">Vegetarian</option>
	    		<option value="Lacto-Vegetarian">Lacto-Vegetarian</option>
	    		<option value="Ovo-Vegetarian">Ovo-Vegetarian</option>
	    		<option value="Vegan">Vegan</option>
	    		<option value="Pescetarian">Pescetarian</option>
	    		<option value="Paleo">Paleo</option>
	    		<option value="Primal">Primal</option>
	    		<option value="Whole30">Whole30</option>    			    			    			    		
	  		</select>
		</div>
		<div class="input-group">
  			<div class="input-group-prepend">
    			<span class="input-group-text" id="inputGroup-sizing-default">Exclude Ingredients</span>
  			</div>
  				<input type="text" name="excludeIngredients" class="form-control" aria-label="Default" aria-describedby="inputGroup-sizing-default" placeholder="Eggs, nuts, etc ">
		</div>
		<div class="input-group">
	  		<div class="input-group-prepend">
	    		<label class="input-group-text" for="inputGroupSelect01">Intolerances</label>
	  		</div>
	  		<select name="intolerances" class="custom-select" id="inputGroupSelect01">
	    		<option selected>Choose...</option>
	    		<option value="">None</option>
	    		<option value="dairy">Dairy</option>
	    		<option value="egg">Egg</option>
	    		<option value="gluten">gluten</option>
	    		<option value="grain">Grain</option>  
	    		<option value="peanut">Peanut</option>
	    		<option value="seafood">Seafood</option>
	    		<option value="sesame">Sesame</option>
	    		<option value="shellfish">Shellfish</option>
	    		<option value="soy">Soy</option>
	    		<option value="sulfite">Sulfite</option>
	    		<option value="tree nut">Tree Nut</option>
	    		<option value="wheat">Wheat</option>   			    			    			    		
	  		</select>
	  	</div>
	  	<button id="submitBtn" type="submit" class="btn btn-primary">Submit</button>
	</form>
	
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

	<script type="text/javascript" src="resources/js/app.js"></script>
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