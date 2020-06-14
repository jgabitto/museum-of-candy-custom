<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" 
			uri="http://www.springframework.org/tags/form" %>

<nav id="mainNavbar" class="navbar navbar-dark navbar-expand-md py-0 fixed-top">
      <a href="<c:url value="/" />" class="navbar-brand">CANDY</a>
      <button class="navbar-toggler" data-toggle="collapse" data-target="#navLinks" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div  id="navLinks" class="collapse navbar-collapse">
        <ul class="navbar-nav">
          <li class="nav-item">
            <a href="<c:url value="/home" />" class="nav-link">Home</a>
          </li>
          <li class="nav-item">
            <a href="<c:url value="/about" />" class="nav-link">About</a>
          </li>
          <li class="nav-item">
            <a href="<c:url value="/newUser" />" class="nav-link">Sign Up</a>
          </li>
	</ul>
	<ul class="nav navbar-nav flex-row justify-content-between ml-auto">
                <li class="nav-item order-2 order-md-1"><a href="#" class="nav-link" title="settings"><i class="fa fa-cog fa-fw fa-lg"></i></a></li>
                <li class="dropdown order-1">
                    <button type="button" id="dropdownMenu1" data-toggle="dropdown" class="btn btn-outline-light dropdown-toggle nav-link">Logout <span class="caret"></span></button>
                    <ul class="dropdown-menu dropdown-menu-right mt-2">
                       <li class="px-3 py-2">
                           <form:form class="form" role="form" action="${pageContext.request.contextPath}/logout" 
								method="POST">
                                <p>Are you sure you want to logout?</p>
                                <div class="form-group">
                                    <button type="submit" class="btn btn-danger btn-block">Logout</button>
                                </div>
                            </form:form>
                        </li>
                    </ul>
                </li>
			</ul>
      </div>
</nav> 



