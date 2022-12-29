package com.dao;

import com.bean.Users;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UsersDao {
    public boolean login(Users users){
        boolean flag=false;
        Connection con=null;//连接数据对象
        PreparedStatement prst=null;//操作数据表对象
        ResultSet rs=null;//数据集对象
        String sql="select * from users where uid=? and pwd=?";
        try {
            con=DataBaseConnection.getConnection();//获取数据库连接
            prst=con.prepareStatement(sql);
            prst.setString(1,users.getUid());
            prst.setString(2,users.getPwd());
            rs=prst.executeQuery();//执行查询，结果存放在数据集中
            if(rs.next()){
                flag=true;
            }
        } catch (SQLException e) {
            System.out.println(e);
            throw new RuntimeException(e);
        }finally {
            DataBaseConnection.closeConnection(rs,prst,con);
        }
        System.out.println(flag);
        return flag;
    }

    public boolean updateUsers(Users users){
        boolean flag=false;
        Connection con=null;
        PreparedStatement prst=null;
        String sql="update users set pwd=?,phone=? where uid=?";
        try {
            con=DataBaseConnection.getConnection();
            prst=con.prepareStatement(sql);
            prst.setString(1,users.getPwd());
            prst.setString(2,users.getPhone());
            prst.setString(3,users.getEmail());
            prst.executeUpdate();
            int update=prst.executeUpdate();
            if(update>0){
                flag=true;
            }
        } catch (SQLException e) {
            System.out.println(e);
            throw new RuntimeException(e);
        }finally {
            DataBaseConnection.closeConnection(prst,con);
        }
        return flag;
    }

    public boolean verifyUser(Users users){
        boolean flag=false;
        Connection con=null;
        PreparedStatement prst=null;
        ResultSet rs=null;
        String sql="select * from users where uid=? and email=? and phone=?";
        try {
            con=DataBaseConnection.getConnection();
            prst=con.prepareStatement(sql);
            prst.setString(1,users.getUid());
            prst.setString(2,users.getEmail());
            prst.setString(3,users.getPhone());
            rs=prst.executeQuery();
            if(rs.next()){
                flag=true;
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }finally {
            DataBaseConnection.closeConnection(rs,prst,con);
        }
        return flag;
    }

    public boolean registerUser(Users users){
        boolean flag=false;
        Connection con=null;
        PreparedStatement prst=null;
        String sql="insert into users(uid,email,phone,pwd) value (?,?,?,?)";
        try {
            con=DataBaseConnection.getConnection();
            prst=con.prepareStatement(sql);
            prst.setString(1, users.getUid());
            prst.setString(2, users.getEmail());
            prst.setString(3, users.getPhone());
            prst.setString(4, users.getPwd());
            int result=prst.executeUpdate();
            if(result>0){
                flag=true;
            }
        }catch (SQLException e){
            System.out.println(e);
            throw new RuntimeException(e);
        }finally {
            DataBaseConnection.closeConnection(prst,con);
        }
        return flag;
    }

    public Users findUser(String account){
        Users users=new Users();
        Connection con=null;
        PreparedStatement prst=null;
        ResultSet rs=null;
        String sql="select * from users where uid=?";
        try {
            con=DataBaseConnection.getConnection();
            con.prepareStatement(sql);
            prst.setString(1,account);
            rs=prst.executeQuery();
            while (rs.next()){
                users.setUid(rs.getString("uid"));
                users.setPhone(rs.getString("phone"));
                users.setEmail(rs.getString("email"));
            }
        }catch (SQLException e){
            System.out.println(e);
            throw new RuntimeException(e);
        }finally {
            DataBaseConnection.closeConnection(rs,prst,con);
        }
        return users;
    }

    //测试数据库连接
    /*
    public static void main(String[] args) {
        Users users=new Users();
        users.setAccount("10010");
        users.setPwd("123456");
        UserDao userDao=new UserDao();
        userDao.login(users);
    }
    */
}
