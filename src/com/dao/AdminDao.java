package com.dao;

import com.bean.Admin;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class AdminDao {
    public boolean login(Admin admin){
        boolean flag=false;
        Connection con=null;
        PreparedStatement prst=null;
        ResultSet rs=null;
        try{
            con=DataBaseConnection.getConnection();
            String sql="select * from admin where uid=? and pwd=?";
            prst=con.prepareStatement(sql);
            prst.setString(1,admin.getUid());
            prst.setString(2,admin.getPwd());
            rs=prst.executeQuery();
            if(rs.next()){
                flag=true;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }finally {
            DataBaseConnection.closeConnection(rs,prst,con);
        }
//        System.out.println(flag);
        return flag;
    }

    //测试数据库连接
    /*
    public static void main(String[] args) {
        Admin admin=new Admin();
        admin.setPwd("123456");
        admin.setUid("1001");
        AdminDao adminDao=new AdminDao();
        adminDao.login(admin);
    }
    */
}
