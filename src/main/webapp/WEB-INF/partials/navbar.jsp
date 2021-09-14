<%--
Todo: Dynamic navbar Wouldn't it be nice if our navbar showed different
links depending on if a user was logged in or out?
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<nav class="navbar navbar-default">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <a class="navbar-brand" href="/ads">Tx Silybum</a>
        </div>

        <span class="navbar-text">
                <c:choose>
                    <c:when test="${sessionScope.user != null}">
                        <ul class="nav navbar-nav navbar-left">
                            <li><a href="/profile.jsp">PROFILE</a></li>
                            <li><a href="/create">CREATE AD</a></li>
                            <li><a href="/delete">DELETE AD</a></li>
                            <li><a href="#">PERSONAL ADS</a></li>
                            <li><a href="/logout">LOGOUT</a></li>
                        </ul>
                    </c:when>
                    <c:otherwise>
                        <ul class="nav navbar-nav navbar-left">
                            <li><a href="/index.jsp">Home</a></li>
                            <li><a href="#">View Ads</a></li>
                            <li><a href="/about">About</a></li>
                            <li><a href="/register.jsp">Register</a></li>
                            <li><a href="/login">Login</a></li>
                        </ul>
                    </c:otherwise>
                </c:choose>
            </span>
        <%-- -->
        <div>
            <ul class="nav navbar-nav navbar-left">
                <li><a href="/login">Login</a></li>
                <li><a href="/ads">View Ads</a></li>
                <li><a href="#">Deal of the Day</a></li>
            </ul>
        </div>

        <ul class="nav navbar-nav navbar-right">
            <li><a href="/login">Login</a></li>
            <li><a href="/logout">Logout</a></li>
        </ul>
    </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>

<%--$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$--%>
