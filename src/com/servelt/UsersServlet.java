package com.servelt;

import com.bean.Users;
import com.dao.UsersDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/UsersServlet")
public class UsersServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        String op=request.getParameter("op");
        if(op==null){

        }else {
            if(op.equals("login")){
                doLogin(request,response);
            }
            if(op.equals("register")){
                doRegister(request,response);
            }
            if(op.equals("verify")){
                doVerify(request,response);
            }
        }

    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       doPost(request,response);
    }

    protected void doLogin(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");//处理输出中文乱码
        PrintWriter out=response.getWriter();
        String uid=request.getParameter("uid");
        String pwd=request.getParameter("pwd");
        UsersDao usersDao=new UsersDao();
        Users users=new Users();
        users.setUid(uid);
        users.setPwd(pwd);
        if(usersDao.login(users)){
            HttpSession session=request.getSession();
            session.setAttribute("uid",users.getUid());
            out.print("登陆成功！");
//            response.sendRedirect("#");
        }else {
            out.println("<script>alert('用户名或密码错误，请重新输入！');window.location.href='login.jsp';</script>");
        }
    }
    protected void doRegister(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");//处理输出中文乱码
        PrintWriter out=response.getWriter();
        String uid=request.getParameter("uid");
        String rpwd=request.getParameter("rpwd");
        String phone=request.getParameter("phone");
        String email=request.getParameter("email");
        UsersDao usersDao=new UsersDao();
        Users users=new Users();
        users.setUid(uid);
        users.setPwd(rpwd);
        users.setPhone(phone);
        users.setEmail(email);
        if(usersDao.registerUser(users)){
            HttpSession session=request.getSession();
            session.setAttribute("uid",uid);
            response.sendRedirect("login.jsp");
        }else {
            out.println("<script>alert('此账号已存在！！！');window.location.href='login.jsp';</script>");
        }

    }

    protected void doVerify(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");//处理输出中文乱码
        PrintWriter out=response.getWriter();
        String uid=request.getParameter("uid");
        String phone=request.getParameter("phone");
        String email=request.getParameter("email");
        UsersDao usersDao=new UsersDao();
        Users users=new Users();
        users.setUid(uid);
        users.setPhone(phone);
        users.setEmail(email);
        users.setUid(uid);
        if(usersDao.verifyUser(users)){
            HttpSession session=request.getSession();
            session.setAttribute("uid",uid);
            request.setAttribute("flag","1");
//            response.sendRedirect("findAccount.jsp");
            request.getRequestDispatcher("findAccount.jsp").forward(request,response);
        }else {
            out.println("<script>alert('用户名或密码错误，请重新输入！');window.location.href='findAccount.jsp';</script>");
        }
    }

}
