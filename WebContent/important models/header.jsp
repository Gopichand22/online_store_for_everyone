<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Eczar:wght@500&family=Oswald&display=swap"
	rel="stylesheet">
<link href="css/navbarstyle.css" rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
</head>
<link
    rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"
  />

<body>
	<!-- Navbar -->
	<nav class="navbar navbar-expand-lg navbar-dark shadow-5-strong">
		<!-- Container wrapper -->
		<div class="container">
			<!-- Navbar brand -->
			<a class="animate__animated animate__pulse animate__slow animate__infinite infinite navbar-brand" href="#">OnlineStoreMatters</a>

			<!-- Toggle button -->
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<!-- Collapsible wrapper -->
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<!-- Left links -->
				<ul class="navbar-nav ms-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="#">Home</a></li>
					<li class="nav-item"><a class="nav-link" href="#">Our
							Products & Plans</a></li>
					<li class="nav-item"><a class="nav-link" href="#">Our
							Portfolio </a></li>
					<li class="nav-item"><a class="nav-link" href="#">Brands</a></li>
					<li class="nav-item"><a class="nav-link" href="#">Blogs</a></li>
					<li class="nav-item"><a class="nav-link" href="#">About Us</a></li>
					<li class="nav-item"><a class="nav-link" href="#">Contact
							Us</a></li>


					<c:choose>
						<c:when test="${email1}">
							<li class="nav-item dropdown"><a
								class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
								role="button" data-bs-toggle="dropdown" aria-expanded="false">
									<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
										fill="currentColor" class="bi bi-person-fill"
										viewBox="0 0 16 16">
  								<path
											d="M3 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H3zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6z" />
							</svg>
							</a>
								<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
									<li><a class="dropdown-item" href="#">Profile</a></li>
									<li><a class="dropdown-item" href="login.jsp">Login</a></li>
									<li><a class="dropdown-item" href="register.jsp">Register</a></li>
									<li><hr class="dropdown-divider"></li>
									<li><a class="dropdown-item" href="logout">Logout</a></li>
								</ul></li>
						</c:when>
						<c:otherwise>
							<li class="nav-item"><a class="nav-link" href="login.jsp">Login</a></li>
						</c:otherwise>
					</c:choose>
				</ul>
				<!-- Left links -->
			</div>
			<!-- Collapsible wrapper -->
		</div>
		<!-- Container wrapper -->
	</nav>

	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
		integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
		integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
		crossorigin="anonymous"></script>

</body>
</html>