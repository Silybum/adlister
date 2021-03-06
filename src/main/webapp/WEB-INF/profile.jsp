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

        <button class="button-29">
        <a href="/editProfile" style="color: white">Edit Profile</a>
        </button>


        <h3>Your Ads:</h3>
        <c:forEach var="ad" items="${ads}">
            <div class="col-md-6 fancy"> <%--id="createdAd"--%>
                <h3>${ad.title}</h3>
                <p>${ad.description}</p>
                <a href="/ads/updateads?ad_id=${ad.id}">Update</a><br>
                <a href="/ads/delete?ad_id=${ad.id}">Delete Ad</a>
            </div>
        </c:forEach>


    </div>

</body>
</html>
