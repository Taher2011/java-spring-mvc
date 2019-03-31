<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>

<html>

<head>
	<title>Student Confirmation</title>
</head>

<body>

The student is confirmed: ${studentModel.firstName} ${studentModel.lastName}

<br><br>

Country: ${studentModel.country}

<br><br>

Language: ${studentModel.language}

<br><br>

Operating Systems:
<ul>
	<c:forEach var="temp" items="${studentModel.operatingSystems}">

		<li> ${temp} </li>

	</c:forEach>
</ul>


</body>

</html>







