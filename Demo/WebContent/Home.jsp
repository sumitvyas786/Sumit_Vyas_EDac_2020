<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ include file="Header.jsp"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%
if (session.getAttribute("userSession") == null) {
	response.sendRedirect("Login.jsp");
}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-color: cyan">
	<h1>Home</h1>
	<!-- <form> -->
	<c:forEach items="${userList}" var="item">
${item.id} &nbsp; ${item.username} &nbsp; ${item.password}

<%-- <input type="submit" formaction="user-delete?id=${item.id}" formmethod="get" value="Delete"><br>
 --%>
		<a href="user-delete?id=${item.id}"> <input
			class="btn btn-danger mr-2" type="button" value="Delete" />
		</a>
	</c:forEach>
	<!-- </form> -->
</body>
</html>