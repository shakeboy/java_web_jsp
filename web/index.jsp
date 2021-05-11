<%@ page import="com.shakeboy.pojo.User" %><%--
  Created by IntelliJ IDEA.
  User: 27267
  Date: 2021/5/10
  Time: 13:40
  To change this template use File | Settings | File Templates.
--%>
<%--学习jsp资源：https://www.cnblogs.com/qq308015824/p/11025758.html--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<%--引入jQuery和bootstrap--%>
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/bootstrap.min.css">
<script>
    window.onload = function (res) {
        let element = document.getElementsByClassName("register")[0];
        element.onclick=function (res) {
            $.ajax({
                method:"POST",
                data:{

                },
                header:{
                    "content-type":"text/html;charset=utf-8"
                },
                url:"/user/register"
            })
        }
    }
</script>
<style>
    .shouye_top{
        background-color: #2e6da4;
        border: 2px solid rebeccapurple;
    }
</style>
<html>
  <head>
    <title>博客首页</title>
  </head>
  <body>
    <div class="container-fluid shouye_top">
        <button class="col-md-2 register">注册</button>
        <button class="col-md-2">登录</button>
        <button class="col-md-2">hello</button>
        <button class="col-md-2">hello</button>
        <button class="col-md-2">hello</button>
        <button class="col-md-2">hello</button>
        <button class="col-md-2">hello</button>
        <button class="col-md-2">hello</button>
        <button class="col-md-2">hello</button>
        <button class="col-md-2">hello</button>
        <button class="col-md-2">hello</button>
        <button class="col-md-2">hello</button>
    </div>
  <div>
      1.嵌入Java代码getContextPath: <%
        out.println(request.getContextPath());
    %> <br>
      2.语句声明：<%! int a = 12;
    String b = "hello jsp";
    User user = new User();
  %>
      3.jsp表达式
      a=<%=a%>
      <%user.setUserPassword("1129");%>
      user=<%=user.toString()%>
      <p>
          今天的日期是: <%= (new java.util.Date()).toLocaleString()%>
      </p>
  </div>
  </body>
</html>
