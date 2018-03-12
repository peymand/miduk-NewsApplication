<%--
  Created by IntelliJ IDEA.
  User: Peyman
  Date: 3/12/2018
  Time: 1:03 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
<%--<link rel="stylesheet" href="<spring:url value="/resources/css/bootstrap-select.min.css">" type="text/css"/>--%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
<script src="<spring:url value="/resources/js/bootstrap-select.min.js"/>"></script>
<script src="<spring:url value="/resources/js/resource.js"/>"></script>

<html>
<head>
    <title>Title</title>



</head>
<body>
    <div class="container">
        <div class="row col-sm-8 col-offset-2">
            <table class="table">
                <tr>
                    <th>ID</th>
                    <th>SUBJECT</th>
                    <th>Detail</th>
                </tr>

                <c:forEach items="${news}" var="item">
                    <tr>
                        <td>1</td>
                        <td>${item.subject}</td>
                        <td>${item.detail}</td>
                    </tr>
                </c:forEach>

            </table>
            <form action="addnews.jsp">
                <table>
                    <tr>
                        <td><input type="submit" value="add"></td>
                    </tr>
                </table>
            </form>
        </div>
    </div>
</body>
</html>
