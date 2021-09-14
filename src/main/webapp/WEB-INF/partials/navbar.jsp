<nav class="navbar navbar-default">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <a class="navbar-brand" href="/ads">Adlister</a>
        </div>
        <ul class="nav navbar-nav navbar-right">
            <li><a href="/login">Login</a></li>
            <li><a href="/logout">Logout</a></li>
        </ul>
        <form action="/ads/search" class="form-inline" method="GET">
            <input id="search" name="search" class="form-control mr-sm-2" type="text" placeholder="Search for an ad">
            <input type="submit" class="btn btn-outline-success my-2 my-sm-0" value="Search">
        </form>

    </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>
