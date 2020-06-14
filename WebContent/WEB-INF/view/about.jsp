<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
    
    <section class="container-fluid">
    <div class="row align-items-center content">
      <div id="pic1" class="col-md-6 px-0 order-2 order-md-1">
        <img src="resources/imgs/milk.png" alt="" class="img-fluid">
      </div>
      <div class="col-md-6 px-0 text-center order-1 order-md-2">
        <div class="row justify-content-center">
          <div class="col-10 col-lg-8 blurb mb-5 mb-md-0">
              <h2>Museum of Candy</h2>
              <img src="resources/imgs/lolli_icon.png" alt="" class="d-none d-lg-inline">
              <p class="lead">What if an eccentric chocolatier and a daredevil pop star had a whirlwind romance, got married while 
              skydiving, and had a glamorous, glittering love child who grew up to rule a small nation?  Welcome to the Museum of Candy, 
              where colossal candyfloss constructions meld with a tantalizing taffy twistedness!</p>
          </div>
        </div>
      </div>
    </div>
    <div class="row align-items-center content">
      <div class="col-md-6 px-0 text-center">
        <div class="row justify-content-center">
          <div class="col-10 col-lg-8 blurb mb-5 mb-md-0">
              <h2>Museum of Candy</h2>
              <img src="resources/imgs/lolli_icon.png" alt="" class="d-none d-lg-inline">
              <p class="lead">Explore our sprawling sanctuary of confectionary bliss, tastefully curated by Hollywood Candy Queen 
              Jackie Sorkin, realized by master fabricator Zac Hartog, and brought to life by life-long retailer, John Goodman. 
              This four-month interactive art installation celebrates the vibrant colors and flavors of our favorite sugary delights 
              across over a dozen environments, from flying unicorn pigs to a marshmallow tsunami. Bring your family, your friends, 
              and your sweet tooth for an experience like none other!</p>
          </div>
        </div>
      </div>
      <div class="col-md-6 px-0">
          <img src="resources/imgs/gumball.png" alt="" class="img-fluid">
      </div>
      <div class="row align-items-center content">
          <div class="col-md-6 px-0 order-2 order-md-1">
            <img src="resources/imgs/sprinkles.png" alt="" class="img-fluid">
          </div>
          <div class="col-md-6 px-0 text-center order-1 order-md-2">
            <div class="row justify-content-center">
              <div class="col-10 col-lg-8 blurb mb-5 mb-md-0">
                  <h2>Museum of Candy</h2>
                  <img src="resources/imgs/lolli_icon.png" alt="" class="d-none d-lg-inline">
                  <p class="lead">If you ever dreamed of nibbling your way through Candyland or scoring a Golden Ticket, you've come to 
                  the right place. Treat yourself to Candytopia, and let your tastebuds and your imagination soar!</p>
              </div>
            </div>
          </div>
        </div>
    </div>
  </section>

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

