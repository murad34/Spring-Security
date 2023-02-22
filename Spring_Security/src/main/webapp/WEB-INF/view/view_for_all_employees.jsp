<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<html>

<head>
    <title>Spring Security</title>
</head>

<body>

<h2>Information for All Employees</h2>

<br><br>

<security:authorize access="hasRole('HR')">

    <input type="button" value="Salary"
           onclick="window.location.href = 'hr_info'">
    Only for HR staff

</security:authorize>

<br><br>

<security:authorize access="hasRole('MANAGER')">

    <input type="button" value="Performance"
           onclick="window.location.href = 'manager_info'">
    Only for Managers

</security:authorize>

</body>

</html>
