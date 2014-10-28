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
<form method=post action="demo4.jsp"> 
<select name="combo1"> 
<option value="1">1 </option> 
<option value="2">2 </option> 
<option value="3">3 </option> 
<option value="4">4 </option> 
<option value="5">5 </option> 
<option value="7">7 </option> 
</select> 
<input type=submit value="submit"><br><br><br> 
<c:set var="s" value="${param.combo1}" />
Today is 
<br> 
<font size=24 color=red>
<c:choose> 
<c:when test="${s==1}">Sunday </c:when> 
<c:when test="${s==2}">Monday</c:when> 
<c:when test="${s==3}">Tuesday</c:when> 
<c:when test="${s==4}">Wednesday</c:when> 
<c:when test="${s==5}">Thursday</c:when> 
<c:otherwise> 
select between 1 & 5 
</c:otherwise>
</c:choose> 
</font>
</form>
</body>
</html>