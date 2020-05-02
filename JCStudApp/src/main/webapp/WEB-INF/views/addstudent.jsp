<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Management System</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
</head>
<body>

	<jsp:include page="../views/fragments/header.jsp"></jsp:include>

	<div class="container">
		<br /> <br />
		<div class="row">
			<form action="<spring:url value="/student-mgmt/addstudent"/>" method="post">
				<div class="form-group">
					<label for="formGroupStudentName">Student Name</label> <input
						type="text" class="form-control" id="formGroupStudentName"
						placeholder="Enter Student Name">
				</div>
				<div class="row">
					<div class="col-sm-6">
						<div class="form-group">
							<label for="formGroupStudentMark1">Mark 1</label> <input
								type="text" class="form-control" id="formGroupStudentMark1"
								placeholder="Enter Mark1">
						</div>
					</div>
					<div class="col-sm-6">
						<div class="form-group">
							<label for="formGroupStudentMark2">Mark 2</label> <input
								type="text" class="form-control" id="formGroupStudentMark2"
								placeholder="Enter Mark2">
						</div>
					</div>
				</div>
				<fieldset class="form-group">
					<div class="row">
						<div class="col-sm-6">
							<legend class="col-form-label col-sm-6 pt-0">Sportive?</legend>
						</div>
						<div class="col-sm-6">
							<div class="form-check">
								<input class="form-check-input" type="radio"
									name="gridIsSportiveRadios" id="gridIsSportiveRadios1"
									value="Yes" checked> <label class="form-check-label"
									for="gridIsSportiveRadios1"> Yes </label>
							</div>
							<div class="form-check">
								<input class="form-check-input" type="radio"
									name="gridIsSportiveRadios" id="gridIsSportiveRadios2"
									value="No"> <label class="form-check-label"
									for="gridIsSportiveRadios2"> No </label>
							</div>
						</div>
					</div>
				</fieldset>
				<fieldset class="form-group">
					<div class="row">
						<div class="col-sm-6">
							<legend class="col-form-label col-sm-6 pt-0">Academic?</legend>
						</div>
						<div class="col-sm-6">
							<div class="form-check">
								<input class="form-check-input" type="radio"
									name="gridIsAcademicRadios" id="gridIsAcademicRadios1"
									value="Yes" checked> <label class="form-check-label"
									for="gridIsAcademicRadios1"> Yes </label>
							</div>
							<div class="form-check">
								<input class="form-check-input" type="radio"
									name="gridIsAcademicRadios" id="gridIsAcademicRadios2"
									value="No"> <label class="form-check-label"
									for="gridIsAcademicRadios2"> No </label>
							</div>
						</div>
					</div>
				</fieldset>
				<div class="form-group">
					<label for="exampleFormControlResultSelect">Result</label> <select
						class="form-control" id="exampleFormControlResultSelect">
						<option>Pass</option>
						<option>Fail</option>
						<option>WithHeld</option>
					</select>
				</div>
				<div class="form-group row">
					
						<button type="submit" class="btn btn-primary mr-1">Add</button>					
					
				
						<button type="button" class="btn btn-secondary"
							onclick="<spring:url value="/student-mgmt/home"/>">Cancel</button>
					
				</div>
			</form>
		</div>

	</div>

	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
		integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
		integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
		integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
		crossorigin="anonymous"></script>
</body>
</html>