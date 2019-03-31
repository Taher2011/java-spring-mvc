<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>

<html>

<head>
	<title>Customer Confirmation</title>
</head>

<body>

The customer is confirmed: ${customerModel.firstName} ${customerModel.lastName}

<br><br>

Free passes: ${customerModel.freePasses}

<br><br>

PostalCode: ${customerModel.postalCode}

<br><br>

Course code: ${customerModel.courseCode}

</body>

</html>










