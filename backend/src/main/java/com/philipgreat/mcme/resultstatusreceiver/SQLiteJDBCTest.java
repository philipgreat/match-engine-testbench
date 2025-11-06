package com.philipgreat.mcme.resultstatusreceiver;

import java.sql.*;

import java.sql.*;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

public class SQLiteJDBCTest {

    private static final String DB_URL = "jdbc:sqlite:./buying-event-001.db";

    public static void main(String[] args) {
        SQLiteJDBCTest test = new SQLiteJDBCTest();
        test.testSQLiteDateTime();
    }

    public void testSQLiteDateTime() {
        Connection conn = null;

        try {
            // 1. 注册驱动并建立连接
            Class.forName("org.sqlite.JDBC");
            conn = DriverManager.getConnection(DB_URL);
            System.out.println("✅ SQLite数据库连接成功");
            testParameterizedQuery(conn);


            // 4. 测试不同的日期时间查询方式


        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            // 5. 关闭连接
            if (conn != null) {
                try {
                    conn.close();
                    System.out.println("✅ 数据库连接已关闭");
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
    }




    private void testParameterizedQuery(Connection conn) {
        String sql = "SELECT * FROM employee_data WHERE create_time BETWEEN ? AND ?";
        //String sql = "SELECT * FROM employee_data";

        try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
            //pstmt.setString(1, "2025-11-04");  // 日期
            //pstmt.setInt(2, 0);                // version > 0

            //pstmt.setTimestamp(1, new Timestamp(1762185600000l));  // 日期
            //pstmt.setTimestamp(2, new Timestamp(1766073599999l));                // version > 0
            pstmt.setTimestamp(1, Timestamp.valueOf("2024-11-04 00:00:00"));  // 日期
            pstmt.setTimestamp(2, Timestamp.valueOf("2026-11-05 23:59:59"));                // version > 0

            //pstmt.setDate(1, new Date(1762185600000l));  // 日期
            //pstmt.setDate(2, new Date(1766073599999l));                // version > 0
            //pstmt.setString(1, "2025-11-04");  // 日期
            //pstmt.setString(2, "2025-11-05");                // version > 0



            try (ResultSet rs = pstmt.executeQuery()) {
                int count = 0;
                while (rs.next()) {
                    count++;
                    System.out.printf("   ✅ 参数化查询找到: ID=%d, Code=%s, Time=%s%n",
                            rs.getInt("id"),
                            rs.getString("id"),
                            rs.getString("create_time"));
                }

                if (count == 0) {
                    System.out.println("   ❌ 参数化查询未找到数据");
                }
            }

        } catch (SQLException e) {
            System.out.println("   ❌ 参数化查询失败: " + e.getMessage());
        }
    }
}