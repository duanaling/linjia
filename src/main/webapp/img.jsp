<%--
  Created by IntelliJ IDEA.
  User: dal
  Date: 2022/12/24
  Time: 23:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--<c:forEach items="${images}" var="image" >--%>
    <img src="images/${images.img1}">
    <img src="images/${images.img2}">
    <img src="images/${images.img3}">




    ${images.name}
    ${fineClass.describe}
    ${images.describe}
    ${image.type}
<%--</c:forEach>--%>


</body>
</html>
