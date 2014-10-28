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
<form method=post action=demo3.jsp> 
<select name="combo1"> 
<option value="sam">sam 
<option value="tom">tom 
</select> 
<input type=submit> 
</form> 
<c:set var="s" value="${param.combo1}" /> 
<c:out value="${s}" /> 
<br> 
<c:if test="${s eq 'sam' }" > 
<c:out value="Good Morning...SAM!" /> 
</c:if>
<c:if test="${s =='tom'}" > 
<c:out value=" How Are You?....TOM!" /> 
</c:if> 

</body>
</html>