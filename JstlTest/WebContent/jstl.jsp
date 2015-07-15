<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
 <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>  
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>JSTL</title>
</head>
<body>
<c:set var="i" scope="session" value="${2000}"/>
	<c:out value="${i}"/>


	<c:if test="${i > 2000}">
		<p>i > 2000</p>
	</c:if>
	
	<c:choose>
		<c:when test="${i>2000}">
			<p>i>2000</p>
		</c:when>
		<c:when test="${i>1000 && i<3000}">
			<p>Normal i</p>
		</c:when>
		<c:otherwise>
			<p>Bad i</p>
		</c:otherwise>
	</c:choose>

	
	<c:set var="colors" value="red, green, blue"/>
	
	<c:set var="array" value="${fn:split(colors,',')}"/>
	
	<p>In forEach</p>
	<c:forEach var="color" items="${array}">
		<br><c:out value="${color}"/>
	</c:forEach>
	
	<p>In forTokens</p>
	<c:forTokens items="${colors}" delims="," var="color">
		<br><c:out value="${color}"></c:out>
	</c:forTokens>
	
	<%-- <c:redirect url="https://www.google.com.ua/webhp">
		<c:param name="q" value="JobsUkraine"/>
	</c:redirect> --%>
	
</body>
</html>