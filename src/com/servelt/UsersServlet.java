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
        String account=request.getParameter("account");
        String pwd=request.getParameter("pwd");
        UsersDao usersDao=new UsersDao();
        Users users=new Users();
        users.setAccount(account);
        users.setPwd(pwd);
        if(usersDao.login(users)){
            HttpSession session=request.getSession();
            session.setAttribute("account",users.getAccount());
            response.sendRedirect("#");
        }else {
            out.println("<script>alert('用户名或密码错误，请重新输入！');window.location.href='login.jsp';</script>");
        }
    }
    protected void doRegister(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");//处理输出中文乱码
        PrintWriter out=response.getWriter();
        String account=request.getParameter("account");
        String rpwd=request.getParameter("rpwd");
        String phone=request.getParameter("phone");
        String uid=request.getParameter("uid");
        String uname=request.getParameter("uname");
        UsersDao usersDao=new UsersDao();
        Users users=new Users();
        users.setAccount(account);
        users.setPwd(rpwd);
        users.setPhone(phone);
        users.setUname(uname);
        users.setUid(uid);
        if(usersDao.registerUser(users)){
            HttpSession session=request.getSession();
            session.setAttribute("account",account);
            response.sendRedirect("login.jsp");
        }else {
            out.println("<script>alert('用户名或密码错误，请重新输入！');window.location.href='login.jsp';</script>");
        }

    }

    protected void doVerify(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");//处理输出中文乱码
        PrintWriter out=response.getWriter();
        out.println("1");
        String account=request.getParameter("account");
        String phone=request.getParameter("phone");
        String uid=request.getParameter("uid");
        String uname=request.getParameter("uname");
        UsersDao usersDao=new UsersDao();
        Users users=new Users();
        users.setAccount(account);
        users.setPhone(phone);
        users.setUname(uname);
        users.setUid(uid);
        if(usersDao.verifyUser(users)){
            HttpSession session=request.getSession();
            session.setAttribute("account",account);
            request.setAttribute("flag", "false");
            System.out.println("1");
            response.sendRedirect("findAccount.jsp");
        }else {
            out.println("<script>alert('用户名或密码错误，请重新输入！');window.location.href='findAccount.jsp';</script>");
        }
    }

}
