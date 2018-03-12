<%--
  Created by IntelliJ IDEA.
  User: saeb
  Date: 3/12/18
  Time: 10:34 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add new news</title>
</head>
<body>
<form action="/addnews.do" method="post">
    <table>
        <tr>
            <td>
                موضوع:
            </td>
        </tr>
        <tr>
            <td>
                <input type="text" name="newsSubject"/>
            </td>
        </tr>
        <tr>
            <td>متن</td>
        </tr>
        <tr>
            <td>
                <input type="text" name="newsBody"/>
            </td>
        </tr>
        <tr>
            <td><textarea name="newsBody" cols="30" rows="10"></textarea> </td>
        </tr>
    </table>
</form>
</body>
</html>
