<nav class="navbar navbar-default">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <a class="navbar-brand" href="/ads">Adlister</a>
        </div>
        <ul class="nav navbar-nav navbar-right">
            <li><form action="/ads/search" class="form-inline" method="GET">
                <input id="search" name="search" class="form-control" type="text" placeholder="Search for an ad">
                <input type="submit" class="btn btn-primary btn-block" value="Search">
            </form></li>
            <li><a href="/login">Login</a></li>
            <li><a href="/logout">Logout</a></li>
        </ul>
    </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>
