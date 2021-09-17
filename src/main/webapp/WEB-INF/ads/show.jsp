<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Show Ads" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />

<div class="container">

    <h1>${ad.title}</h1>
    <h3>${ad.description}</h3>
    <br>

    <h4>Listing created by: ${user.username}</h4>
    <h5>For serious inquiries, please contact ${user.email}</h5>




</div>


</body>
</html>
