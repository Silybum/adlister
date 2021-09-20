<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Welcome to my site!" />
    </jsp:include>
    <style><%@include file="/WEB-INF/adlister_css.css"%></style>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />
    <div class="container">
        <h1 class="fontColor">Welcome to the Silybum!</h1>
        <button class="button-29">
        <a href="/ads/create" style="color: white">Create an Ad</a>
        </button>
    </div>
</body>
</html>
