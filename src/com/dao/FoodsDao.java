package com.dao;

import com.bean.Foods;
import com.bean.Users;
import com.mysql.cj.jdbc.ConnectionImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class FoodsDao {
    public ArrayList<Foods> Foodslist(){
        ArrayList<Foods> list=new ArrayList<>();
        Connection con=null;
        PreparedStatement prst=null;
        ResultSet rs=null;
        String sql="select * from foods";
        try {
            con=DataBaseConnection.getConnection();
            prst=con.prepareStatement(sql);
            rs=prst.executeQuery();
            while (rs.next()){
                Foods foods=new Foods();
                foods.setPrice(rs.getFloat("price"));
                foods.setDiscount(rs.getFloat("discount"));
                foods.setFavorable(rs.getString("favorable"));
                foods.setSales(rs.getInt("sales"));
                foods.setMain_ingredient(rs.getString("main_ingredient"));
                foods.setAmount(rs.getInt("amount"));
                foods.setFlavor(rs.getString("flavor"));
                foods.setManufacture_method(rs.getString("manufacture_method"));
                foods.setPic(rs.getString("pic"));
                foods.setFname(rs.getString("fname"));
                foods.setRefund(rs.getInt("refund"));
                list.add(foods);
            }
        } catch (SQLException e) {
            System.out.println(e);
            throw new RuntimeException(e);
        }finally {
            DataBaseConnection.closeConnection(rs,prst,con);
        }
        return list;
    }

    public boolean addFood(Foods foods){
        boolean flag=false;
        Connection con=null;
        PreparedStatement prst=null;
        String sql="insert into foods(price,discount,favorable,sales,main_ingredient,amount,flavor,manufacture_method,pic,fname,refund) value (?,?,?,?,?,?,?,?,?,?,?)";
        try {
            con=DataBaseConnection.getConnection();
            prst= con.prepareStatement(sql);
            prst.setFloat(1,foods.getPrice());
            prst.setFloat(2,foods.getDiscount());
            prst.setString(3,foods.getFavorable());
            prst.setInt(4,foods.getSales());
            prst.setString(5, foods.getMain_ingredient());
            prst.setInt(6,foods.getAmount());
            prst.setString(7,foods.getFlavor());
            prst.setString(8,foods.getManufacture_method());
            prst.setString(9,foods.getPic());
            prst.setString(10,foods.getFname());
            prst.setInt(11,foods.getRefund());
            prst.executeQuery();
            int result=prst.executeUpdate();
            if(result>0){
                flag=true;
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }finally {
            DataBaseConnection.closeConnection(prst,con);
        }
        return flag;
    }

    public boolean updateFood(Foods foods){
        boolean flag=false;
        Connection con=null;
        PreparedStatement prst=null;
        String sql="update foods set price=?,discount=?,pic=? where fname=?";
        try {
            con=DataBaseConnection.getConnection();
            prst=con.prepareStatement(sql);
            prst.setFloat(1,foods.getPrice());
            prst.setFloat(2,foods.getDiscount());
            prst.setString(3,foods.getPic());
            prst.setString(4,foods.getFname());
            prst.executeQuery();
            int update=prst.executeUpdate();
            if(update>0){
                flag=true;
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }finally {
            DataBaseConnection.closeConnection(prst,con);
        }
        return flag;
    }

    public boolean deleteFood(Foods foods){
        boolean flag=false;
        Connection con=null;
        PreparedStatement prst=null;
        String sql="delete from foods where fname=?";
        try {
            con=DataBaseConnection.getConnection();
            con.prepareStatement(sql);
            prst.setString(1,foods.getFname());
            prst.executeQuery();
            int delete=prst.executeUpdate();
            if(delete>0){
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

    public Foods findFood(String fname){
        Connection con=null;
        PreparedStatement prst=null;
        ResultSet rs=null;
        Foods foods=new Foods();
        String sql="select * from foods where fname=?";
        try {
            con=DataBaseConnection.getConnection();
            con.prepareStatement(sql);
            prst.setString(1,fname);
            rs=prst.executeQuery();
            while (rs.next()){
                foods.setFname(rs.getString("fname"));
                foods.setFlavor(rs.getString("flavor"));
                foods.setMain_ingredient(rs.getString("main_ingredient"));
                foods.setFavorable(rs.getString("favorable"));
                foods.setManufacture_method(rs.getString("manufacture_method"));
                foods.setPic(rs.getString("pic"));
                foods.setAmount(rs.getInt("amount"));
                foods.setSales(rs.getInt("sales"));
                foods.setDiscount(rs.getFloat("discount"));
                foods.setRefund(rs.getInt("refund"));
                foods.setPrice(rs.getFloat("price"));

            }
        } catch (SQLException e) {
            System.out.println(e);
            throw new RuntimeException(e);
        }finally {
            DataBaseConnection.closeConnection(rs,prst,con);
        }
        return foods;
    }

}
