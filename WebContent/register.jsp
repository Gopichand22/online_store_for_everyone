<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Online Store Register page</title>
<link href="css/mainpagestyles.css" rel="stylesheet" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
</head>

<body style="background-color:#0B0C10;">

	<div class="container">
		<div class="row justify-content-md-center">
			<div class="col col-lg-6">
				<div class="heading-class">Registration Form</div>
				<form action="RegServlet" method="post">
					<div class="mb-3">
						<label for="firstname" class="form-label">First Name</label> <input
							type="text" class="form-control" name="fname" required> <label
							for="lastname" class="form-label">Last Name </label> <input
							type="text" class="form-control" name="lname" required> <label
							for="email" class="form-label">Email</label> <input
							type="email" class="form-control" name="emailme" required> <label
							for="password" class="form-label">Password </label> <input
							type="password" class="form-control" name="pass" required> <label
							for="exampleInputEmail1" class="form-label">Confirm
							Password </label> <input type="text" class="form-control" name="cpass" required>
						<div id="help" class="form-text">We'll never share your
							details with anyone else.</div>
					</div>
					<div class="mb-3 form-check">
						<input type="checkbox" class="form-check-input" name="checkMe" required>
						<label class="form-check-label" for="checkbox1">Agree to our terms & conditions</label>
					</div>
					<button type="submit" class="btn btn-secondary ">Register</button>
					<p class="clickhere">Already have an account?<a href="login.jsp"> Click here to login</a></p>
				</form>
			</div>
		</div>
	</div>
</body>
</html>