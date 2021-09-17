<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />

    <div class="container">
        <h1>Welcome, ${sessionScope.user.username}!</h1>

        <a href="/editProfile">Edit Profile</a>


        <h3>Your Ads:</h3>
        <c:forEach var="ad" items="${ads}">
            <div class="col-md-6">
                <h3>${ad.title}</h3>
                <p>${ad.description}</p>
                <a href="/ads/updateads?ad_id=${ad.id}">Update</a>
                <a href="/ads/delete?ad_id=${ad.id}">Delete Ad</a>
            </div>
        </c:forEach>


    </div>

</body>
</html>
