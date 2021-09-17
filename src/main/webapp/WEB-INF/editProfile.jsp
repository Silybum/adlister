<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Edit Your Profile" />
    </jsp:include>
    <style><%@include file="/WEB-INF/adlister_css.css"%></style>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />

<div class="container">
    <h1>Edit your profile</h1>
    <form action="/editProfile" method="post">
        <div class="form-group">
            <label for="username">Update Username</label>
            <input id="username" name="username" class="form-control" type="text">
        </div>
        <div class="form-group">
            <label for="email">Update Email</label>
            <input id="email" name="email" class="form-control" type="text">
        </div>
        <div class="form-group">
            <label for="password">Update Password</label>
            <input id="password" name="password" class="form-control" type="password">
        </div>
        <div class="form-group">
            <label for="confirm_password">Confirm Updated Password</label>
            <input id="confirm_password" name="confirm_password" class="form-control" type="password">
        </div>
        <input type="submit" class="btn btn-primary btn-block">
    </form>
</div>

<%--<div class="container">--%>
<%--    <h1>Edit your profile</h1>--%>
<%--    <form action="/editProfile" method="post">--%>
<%--        <div class="form-group">--%>
<%--            <label for="newUsername">Update Username</label>--%>
<%--            <input id="newUsername" name="newUsername" class="form-control" type="text">--%>
<%--        </div>--%>
<%--        <div class="form-group">--%>
<%--            <label for="updateEmail">Update Email</label>--%>
<%--            <input id="updateEmail" name="updateEmail" class="form-control" type="text">--%>
<%--        </div>--%>
<%--        <div class="form-group">--%>
<%--            <label for="updatePassword">Update Password</label>--%>
<%--            <input id="updatePassword" name="updatePassword" class="form-control" type="password">--%>
<%--        </div>--%>
<%--        <div class="form-group">--%>
<%--            <label for="confirm_updatedPassword">Confirm Password</label>--%>
<%--            <input id="confirm_updatedPassword" name="confirm_updatedPassword" class="form-control" type="password">--%>
<%--        </div>--%>
<%--        <input type="submit" class="btn btn-primary btn-block">--%>
<%--    </form>--%>
<%--</div>--%>

</body>
</html>
