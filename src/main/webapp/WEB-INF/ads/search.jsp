<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing Search Result" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />

<div class="container">
    <h1>Search results:</h1>

    <c:if test="${ads != null}">
        <c:forEach var="ad" items="${ads}">
                    <h5 class="card-title"><a href="${pageContext.request.contextPath}/ads/show?id=${ad.id}">${ad.title}</a></h5>
                    <p>${ad.description}</p>
        </c:forEach>
    </c:if>
</div>

</body>
</html>
