<%--
  Created by IntelliJ IDEA.
  User: thelibrarian
  Date: 9/14/21
  Time: 3:23 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <jsp:include page="/WEB-INF/partials/head.jsp">
    <jsp:param name="title" value="Delete a Ad" />
  </jsp:include>
</head>
<body>
<div class="container">
  <h1>Create a new Ad</h1>
  <form action="/ads/delete" method="post">

    <div class="form-group">
      <label for="title">Title</label>
      <input id="title" name="title" class="form-control" type="text">
    </div>
    <div class="form-group">
      <label for="description">Description</label>
      <textarea id="description" name="description" class="form-control" type="text"></textarea>
    </div>
    <input type="submit" class="btn btn-block btn-primary">

  </form>
</div>
</body>
</html>
