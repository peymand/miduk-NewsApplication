<%--
  Created by IntelliJ IDEA.
  User: f
  Date: 3/12/2018
  Time: 10:31 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isELIgnored="false" %>
<link rel="stylesheet" href="<spring:url value="/resources/css/main.css"/>" type="text/css"/>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
<link rel="stylesheet" href="<spring:url value="/resources/css/bootstrap-select.min.css"/>" type="text/css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
<script src="<spring:url value="/resources/js/bootstrap-select.min.js"/>"></script>
<script src="<spring:url value="/resources/js/resource.js"/>"></script>


<html>
<head>
    <title>Login Page</title>
</head>
<body>
    <jsp:include page="../views/fragments/header.jsp"></jsp:include>

    <div class="container">
        <div class="row">
            <div class="col-md-offset-5 col-md-3">
                <form:form class="form-login" modelAttribute="userInfo" action="/checkLogin">
                    <h4>Login Page</h4>
                    <div>
                        <form:input type="text" path="name" cssClass="form-control input-sm chat-input" placeholder="username" />
                        <form:errors path="name" cssClass="text-danger"/>
                    </div>
                    </br>
                    <div>
                        <form:input type="text" path="role" cssClass="form-control input-sm chat-input" placeholder="role" />
                        <form:errors path="name" cssClass="text-danger"/>
                    </div>

                    </br>
                    <div class="wrapper">
            <span class="group-btn">
                <input type="submit" value="Click" class="btn button-info"/>
            </span>
                    </div>
                </form:form>

            </div>
        </div>
    </div>
</body>
</html>
