<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
	<a class="navbar-brand" href="<spring:url value="/student-mgmt/home"/>">
		<img class="rounded"
		src="https://thumbs.dreamstime.com/b/student-icon-vector-isolated-white-background-sign-transparent-134153943.jpg"
		width="30" height="30" class="d-inline-block align-top" alt="">
		Student Management
	</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown"
		aria-expanded="false" aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>
	<div class="collapse navbar-collapse" id="navbarNavDropdown">
		<ul class="navbar-nav">
			<li class="nav-item active"><a class="nav-link"
				href="<spring:url value="/student-mgmt/home"/>">Home <span
					class="sr-only">(current)</span></a></li>

			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" href="#"
				id="navbarDropdownMenuLink" role="button" data-toggle="dropdown"
				aria-haspopup="true" aria-expanded="false"> Self-Service </a>
				<div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
					<a class="dropdown-item"
						href="<spring:url value="/student-mgmt/addstudent"/>">Add
						Student</a> <a class="dropdown-item" href="<spring:url value="/student-mgmt/searchstudent"/>">Search Student</a>
				</div></li>
		</ul>
	</div>
</nav>