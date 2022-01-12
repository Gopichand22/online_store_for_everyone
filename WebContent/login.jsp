<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Online Store Login page</title>
<link href="css/mainpagestyles.css" rel="stylesheet" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
</head>

<body style="background-color:#0B0C10;">

	<div class="container formpage">
		<div class="row justify-content-md-center">
			<div class="col col-lg-6">
				<div class="heading-class">Login</div>
				<form action="LogServlet" method="post">
					<div class="mb-3">
						<label for="email" class="form-label">Email</label> <input
							type="email" class="form-control" name="emailme"> <label
							for="password" class="form-label">Password </label> <input
							type="password" class="form-control" name="pass">
					</div>
					<div class="mb-3 form-check">
						<input type="checkbox" class="form-check-input" id="checkMe">
						<label class="form-check-label" for="checkbox1">Remember me</label>
					</div>
					<button type="submit" class="btn btn-secondary ">Login</button>
					<p class="clickhere">
						Don't have an account?<a href="register.jsp"> Click here to Register</a>
					</p>
					<p style="color:red;">${errMessage}</p>
					
					
				</form>
			</div>
		</div>
	</div>
</body>
</html>