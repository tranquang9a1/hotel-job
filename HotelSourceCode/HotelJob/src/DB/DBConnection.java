/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package DB;

import java.io.Serializable;
import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author quang
 */
public class DBConnection implements Serializable{

    public static Connection makeConnection() {
        
        try {

            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String url = "jdbc:sqlserver://localhost:1433;databaseName=HotelJob";
            Connection con = DriverManager.getConnection(url, "sa", "vinhquang");
            return con;
        } catch (SQLException ex) {
            ex.printStackTrace();
        } catch (ClassNotFoundException ex) {
            ex.printStackTrace();
        }
        return null;
    }

    public static boolean addJob(String jobID, String jobName, String salary, 
            String description, String required, String deadline,
            String domainID, String domainName, String number, String companyID,
            String companyName, String cityID, String cityName, String positionID,
            String positionName, String timeID, String timeInfo) {
        Connection con = null;
        PreparedStatement stm = null;
        try {
            con = makeConnection();
            String sql = "Insert into Job values (?,?,?,?,?,?,?,?,?,?,?,?,?)";
            stm = con.prepareStatement(sql);
            
            stm.setString(1, jobID);
            stm.setString(2, jobName);
            stm.setString(3, salary);
            stm.setString(4, description);
            stm.setString(5, required);
            stm.setString(6, deadline);
            stm.setString(7, domainID);
            stm.setString(8, domainName);
            stm.setString(9, number);
            stm.setString(10, companyID);
            stm.setString(11, companyName);
            stm.setString(12, cityID);
            stm.setString(13, cityName);
            stm.setString(14, positionID);
            stm.setString(15, positionName);
            stm.setString(16, timeID);
            stm.setString(17, timeInfo);
            int rows = stm.executeUpdate();
            if (rows > 0) {
                return true;
            }

        } catch (Exception e) {
        }
        finally {
            try {
                if (stm!=null) {
                    stm.close();
                }
                if (con!=null) {
                    con.close();
                }
            } catch (Exception e) {
            }
        }
        return false;
    }


    public static boolean InsertCompany(String companyID, String companyName, 
            String information, String address, String contact,
            String email, String phone) {
        Connection con = null;
        PreparedStatement stm = null;
        try {
            con = makeConnection();
            String sql = "INSERT INTO Companies(companyID, companyName, information, address, contact, email, phone) VALUES (?,?,?,?,?,?,?)";
            stm = con.prepareStatement(sql);
            stm.setString(1, companyID);
            stm.setString(2, companyName);
            stm.setString(3, information);
            stm.setString(4, address);
            stm.setString(5, contact);
            stm.setString(6, email);
            stm.setString(7, phone);
            int rows = stm.executeUpdate();
            
            if (rows > 0) {
                return true;
            }

        } catch (Exception e) {
        }
        finally {
            try {
                if (stm!=null) {
                    stm.close();
                }
                if (con!=null) {
                    con.close();
                }
            } catch (Exception e) {
            }
        }
        
        return false;
    }
}
