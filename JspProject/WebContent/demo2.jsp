<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form method=post action="demo2.jsp">
<jsp:useBean id="bean1" class="com.beans.Player">
<jsp:setProperty name="bean1" property="*" />
</jsp:useBean>
Name <input type=text name="name"><br> 
Place<input type=text name="place"><br>
Game<input type=text name="game"><br>
<input type=submit>
</form> 
Name: <c:out value="${bean1.name}" /><br>
Place: <c:out value="${bean1.place}" /><br> 
Game: <c:out value="${bean1.game}" /> 

</body>
</html>