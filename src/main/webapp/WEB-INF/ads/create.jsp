<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Create a new Ad" />
    </jsp:include>
</head>
<body>
    <div class="container">
        <h1>Create a new Ad</h1>
        <form action="/ads/create" method="post">
            <div class="form-group">
                <label for="title">Title</label>
                <input id="title" name="title" class="form-control" type="text">
                 <c:if test="${hasTitleError}">
                     <p><c:out value="${titleError}"/></p>
                 </c:if>

            </>
            <div class="form-group">
                <label for="description">Description</label>
                <textarea id="description" name="description" class="form-control" type="text"></textarea>
            </div>
            <div class="categories">

                <label for="appliances">appliances</label>
                <input id="appliances" name="appliances" type="checkbox">

                <label for="automotive">automotive</label>
                <input id="automotive" name="automotive" type="checkbox">

                <label for="baby+kid">baby+kids</label>
                <input id="baby+kid" name="baby+kid" type="checkbox">

                <label for="electronics">electronics</label>
                <input id="electronics" name="electronics" type="checkbox">

                <label for="furniture">furniture</label>
                <input id="furniture" name="furniture" type="checkbox">


            </div>
            <input type="submit" class="btn btn-block btn-primary">
        </form>
    </div>


</body>
</html>
