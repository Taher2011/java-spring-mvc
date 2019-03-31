<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>

<html>

<head>
<title>Student Registration Form</title>
</head>

<form:form action="processForm" modelAttribute="studentModel">
		First name: <form:input path="firstName" />
	<br>
	<br>
		Last name: <form:input path="lastName" />

	<br>
	<br>
		Country:
			<form:select path="country">
				<form:options items="${countryOptions}" />
			</form:select>

	<br>
	<br>
		Favorite Language:
					JAVA<form:radiobutton path="language" value="Java" />
					NodeJS<form:radiobutton path="language" value="NodeJS" />
					Oracle<form:radiobutton path="language" value="Oracle" />

	<br>
	<br>
		Operating Systems:
					Linux<form:checkbox path="operatingSystems" value="Linux" />
					Mac<form:checkbox path="operatingSystems" value="Mac OS" />
					Windows<form:checkbox path="operatingSystems" value="Windows OS" />
	<br>
	<br>
		<input type="submit" value="Submit" />
		
</form:form>

</html>