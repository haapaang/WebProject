package com.dao;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
public class DataBaseConnection {
    static final String DB_URL="jdbc:mysql://localhost:3306/webproject?useSSL=false&serverTimezone=UTC";
    static final String USER="root";
    static final String PASS="123456";
    public static Connection getConnection() {
        Connection con = null;
        try{
            //Class.forName("com.mysql.jdbc.Driver");
            Class.forName("com.mysql.cj.jdbc.Driver");//1、注册JDBC驱动
            con = DriverManager.getConnection(DB_URL, USER, PASS);//2、获取数据库连接
        }catch(Exception ex){
            System.out.println(ex);
        }
        return con;
    }
    public static void closeConnection(ResultSet rs, PreparedStatement prst, Connection con){
        try{
            if(rs!=null){
                rs.close();
            }
            if(prst!=null){
                prst.close();
            }
            if(con!=null){
                con.close();
            }
        }catch(Exception ex){
            System.out.println(ex);
        }
    }
    public static void closeConnection(PreparedStatement prst, Connection con){
        try{
            if(prst!=null){
                prst.close();
            }
            if(con!=null){
                con.close();
            }
        }catch(Exception ex){
            System.out.println(ex);
        }
    }
}
