<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
   <form:form action="saveStudent" modelAttribute="student" method="POST">
    <table>
        <tr>
            <td>Name:</td>
            <td><form:input path="name" /></td>
        </tr>
        <tr>
            <td>Email:</td>
            <td><form:input path="email" /></td>
        </tr>
        <tr>
            <td>Gender:</td>
            <td><form:radiobutton path="gender" value="Male" />Male</td>
            <td><form:radiobutton path="gender" value="Female" />Female</td>
        </tr>
        <tr>
            <td>Course:</td>
            <td><form:select path="course" >
                <form:option value="">-Select-</form:option>
                <form:option value="Java">Java</form:option>
                <form:option value="Python">Python</form:option>
                <form:option value=".Net">.Net</form:option>
                <form:option value="DevOps">DevOps</form:option>
            </form:select></td>    
        </tr>
        <tr>
            <td>Timings:</td>
            <td><form:checkbox path="timings" value="Morning" />Morning</td>
            <td><form:checkbox path="timings" value="Evening" />Evening</td>
        </tr>
        <tr>
            <td><input type="submit" value="Register" /></td>
        </tr>

    </table>



   </form:form>
</body>
</html>