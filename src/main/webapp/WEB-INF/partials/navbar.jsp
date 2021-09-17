<%--
Todo: Dynamic navbar Wouldn't it be nice if our navbar showed different
links depending on if a user was logged in or out?
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<nav src="" class="navbar navbar-light" style="background-color: #7e9a9a;"> <!--navbar-default-->
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <a class="navbar-brand" href="/ads">Tx Silybum</a>
        </div>

        <span class="navbar-text">
                <c:choose>
                    <c:when test="${sessionScope.user != null}">
                        <%-- When logged in--%>
                        <ul class="nav navbar-nav navbar-left">
                            <li><a href="/profile">PROFILE</a></li>
                            <li><a href="/ads/create">CREATE AD</a></li>
                            <li><a href="/ads/delete">DELETE AD</a></li>
<%--                            <li><a href="/logout">LOGOUT</a></li>--%>
                        </ul>
                        <ul class="nav navbar-nav navbar-right">
                            <li><a href="/logout">Logout</a></li>
                        </ul>
                    </c:when>
                    <c:otherwise>
                        <%-- When logged out --%>
                        <ul class="nav navbar-nav navbar-left">
                            <li><a href="/">Home</a></li>
                            <li><a href="/ads">View Ads</a></li>
                            <li><a href="/about">About</a></li>
                            <li><a href="/register">Register</a></li>
                            <li><a href="/login">Login</a></li>
                        </ul>
                    </c:otherwise>
                </c:choose>
            </span>
<%--        <ul >--%>
<%--        &lt;%&ndash; old form &ndash;%&gt;--%>
<%--            <form class="form-inline">--%>
<%--                <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">--%>
<%--                <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>--%>
<%--            </form>--%>
<%--        </ul>--%>
        <ul class="nav navbar-nav navbar-right">
        <form action="/ads/search" class="form-inline" method="GET">
            <input id="search" name="search" class="form-control mr-sm-2" type="text" placeholder="Search for an ad">
            <input type="submit" class="btn btn-outline-success my-2 my-sm-0" value="Search">
        </form>
        </ul>


        <form action="/ads/search" class="form-inline" method="GET">
            <input id="search" name="search" class="form-control mr-sm-2" type="text" placeholder="Search for an ad">
            <input type="submit" class="btn btn-outline-success my-2 my-sm-0" value="Search">
        </form>

    </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->


    </div>

</nav>

<%--$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$--%>
