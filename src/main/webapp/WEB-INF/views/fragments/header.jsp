<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<nav class="navbar navbar-inverse">
    <div class="container-fluid">

        <div class="navbar-header">
            <a class="navbar-brand" href="#">News Application</a>
        </div>

        <ul class="nav navbar-nav">

            <li><a href="#">Home</a></li>

            <li class="dropdown">

                <a href="#" class="dropdown-toggle"
                   data-toggle="dropdown" role="button"
                   aria-expanded="false">News <span class="caret"></span></a>

                <ul class="dropdown-menu" role="menu">
                    <li><a href="<spring:url value="/project/add"/>">Add</a></li>
                    <li><a href="<spring:url value="/project/list"/>">List</a></li>
                </ul>

            </li>

        </ul>
        <ul class="nav navbar-nav navbar-right">
            <li><a href="#"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
            <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
        </ul>
    </div>
</nav>