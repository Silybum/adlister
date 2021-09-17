<%--
  Created by IntelliJ IDEA.
  User: nicolasgutierrez
  Date: 9/17/21
  Time: 10:51 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Update your ad here:"/>
    </jsp:include>
</head>
<body>
<div class="container">
    <h1>Update your ad</h1>
    <form action="/ads/updateads" method="POST">
        <div class="form-group">
            <label for="updateTitle">Title</label>
            <input id="updateTitle" name="updateTitle" class="form-control" type="text">
            <input type="hidden" name="ad_id" value="${ad_id}">
        </div>

        <div class="form-group">
            <label for="updateDescription">Description</label>
            <textarea id="updateDescription" name="updateDescription" class="form-control" type="text"></textarea>
        </div>
        <input type="submit" class="btn btn-block btn-primary">
    </form>
</div>
</body>
</html>
