<%--
  Created by IntelliJ IDEA.
  User: thelibrarian
  Date: 9/15/21
  Time: 10:23 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Error Message</title>
</head>
<body>
<input type="email" name="email" id="email" value="${param.ads}" class="validate"
<c:if test="${not empty emailError}">style="border-bottom: 2px crimson;" </c:if>>
<label for="email" data-error="Invalid Email" data-success="">Email</label>

<%

%>
<%--login error --%>
<%--registration error--%>
<%--ads created msg--%>
<%--confirm delete message--%>

</body>
</html>
