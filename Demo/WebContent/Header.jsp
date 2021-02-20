<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%-- <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> --%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.6.0/dist/umd/popper.min.js" integrity="sha384-KsvD1yqQ1/1+IA7gi3P0tyJcT3vR+NdBTt13hSJ2lnve8agRGXTTyNaBYmCR/Nwi" crossorigin="anonymous"></script>

</head>
<body>
<div class="container-fluid mb-4" style="background-color: grey">
		<div class="row">
			<span class="col d-flex justify-content-start"><a href="index.jsp">Home</a></span>
			<span class="col d-flex justify-content-end"><a href="Page1.jsp">Page 1</a></span>
			<span class="col d-flex justify-content-end"><a href="Page2.jsp">Page 2</a></span>
			<span class="col d-flex justify-content-end"><a href="Page3.jsp">Page 3</a></span>
			
			<%-- <c:if test="${param.r=1}"> --%>
			<span class="col d-flex justify-content-end"><a href="log-out">Logout</a></span>
			<%-- </c:if> --%>
		</div>
	</div>
</body>
</html>