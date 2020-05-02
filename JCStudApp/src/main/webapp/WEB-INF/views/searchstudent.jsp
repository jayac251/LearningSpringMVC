<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
			<form>
				<div class="form-group row">
					<input type="text" class="form-control" id="formGroupStudentId"
						placeholder="Enter Student Id">

				</div>
				<div class="form-group row">
					<input type="text" class="form-control" id="formGroupStudentName"
						placeholder="Enter Student Name">
				</div>

				<div class="form-group row">

					<button type="button" class="btn btn-primary mr-1">Search</button>
					<button type="button" class="btn btn-primary mr-1">View
						All</button>

					<button type="button" class="btn btn-secondary"
						onclick="<spring:url value="/student-mgmt/home"/>">Cancel</button>
				</div>
			</form>
		</div>
		<div class="row">
			<table class="table">
				<thead class="thead-dark">
					<tr>
						<th scope="col">Student Id</th>
						<th scope="col">Student Name</th>
						<th scope="col">Mark 1</th>
						<th scope="col">Mark 2</th>
						<th scope="col">Is Sportive?</th>
						<th scope="col">Is Academic?</th>
						<th scope="col">Result</th>
						<th scope="col">Action</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${studentsList}" var="student">
						<tr>
							<th scope="row">${student.id}</th>
							<td>${student.name}</td>
							<td>${student.mark1}</td>
							<td>${student.mark2}</td>
							<td>${student.issport}</td>
							<td>${student.isacademic}</td>
							<td>${student.result}</td>
							<td>
								<button class="btn btn-primary" onclick="">Edit</button>
								<button class="btn btn-danger" onclick="">Remove</button>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>


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