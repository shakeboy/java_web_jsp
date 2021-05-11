<%--
  Created by IntelliJ IDEA.
  User: 27267
  Date: 2021/5/11
  Time: 7:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Cookie and Session</title>
</head>
<body>
    <p>cookie</p>
<%--
    1.会话：一次会话中包含多次请求和响应
        一次会话：（客户端和服务端之间地谈话）浏览器第一次给服务器发送请求，会话建立，知道有一方断开为止
        功能：共享数据，在一次会话的范围内
        客户端会话技术：Cookie
        服务器端会话技术：Session
    2.Cookie
        1.概念：客户端会话技术，将数据保存到客户端
        2.快速入门
            使用步骤：
            1.创建Cookie对象，绑定数据
                new Cookie(String name,String value)
            2.发送Cookie对象
                response.addCookie(Cookie cookie)
            3.获取Cookie，拿到数据
                Cookie[] request.getCookies()
--%>
    <%Cookie cookie = new Cookie("msg","msg");%>
    <%=request.getCookies()%>
</body>
</html>
