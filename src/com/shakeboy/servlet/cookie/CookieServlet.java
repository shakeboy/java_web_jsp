package com.shakeboy.servlet.cookie;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.net.URLEncoder;

/**
 * Cookie快速入门
 * 1.创建Cookie对象
 * https://blog.csdn.net/Sky_QiaoBa_Sum/article/details/104967049
 * 2.发送Cookie
 * 3.获取cookie
 *
 * 基于响应头set-cookie和请求头cookie实现地
 *
 * 4.cookie细节
 *  1.多个cookie
 *  2.有效期
 *      持久化存储：setMaxAge(int seconds)
 *          正数：持久化存储，cookie地存活时间
 *          负数：默认值（浏览器关闭则销毁）
 *          0：删除cookie信息
 *  3.能不能存中文
 *  4.cookie获取的范围多大
 */
@WebServlet("/cookieServlet")
public class CookieServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //解决乱码
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        String value = "cookie hello"; // 解决空格问题
        value = URLEncoder.encode(value,"utf-8");
        String value1 = "cookie hello1"; // 解决空格问题
        value1 = URLEncoder.encode(value1,"utf-8");
        // 1.创建Cookie对象
        Cookie cookie = new Cookie("msg",value);
        // 设置cookie地存活时间，持久化到硬盘，30秒后自动删除
        cookie.setMaxAge(30);
        Cookie cookie1 = new Cookie("msg1",value1);
        // 2.发送Cookie
        response.addCookie(cookie);
        response.addCookie(cookie1);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request,response);
    }
}
