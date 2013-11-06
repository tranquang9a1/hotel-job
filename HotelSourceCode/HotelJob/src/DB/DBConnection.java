/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package DB;

import java.io.Serializable;
import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author quang
 */
public class DBConnection implements Serializable {

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

    public static boolean addJob(int jobID, String jobName, String salary,
            String description, String required, String deadline,
            int domainID, String domainName, String number, int companyID,
            int cityID, String cityName, String positionName,
            int positionID, int timeID, String timeInfo) {
        Connection con = null;
        PreparedStatement stm = null;
        try {
            con = makeConnection();
            String sql = "INSERT INTO Jobs (jobID, jobName, salary, description, required, deadline, domainID, domainName, number, companyID, cityID, cityName, positionName, positionID, timeID, timeInfo)"
                    + " VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";

            stm = con.prepareStatement(sql);
            stm.setInt(1, jobID);
            stm.setString(2, jobName);
            stm.setString(3, salary);
            stm.setString(4, description);
            stm.setString(5, required);
            stm.setString(6, deadline);
            stm.setInt(7, domainID);
            stm.setString(8, domainName);
            stm.setString(9, number);
            stm.setInt(10, companyID);
            stm.setInt(11, cityID);
            stm.setString(12, cityName);
            stm.setString(13, positionName);
            stm.setInt(14, positionID);
            stm.setInt(15, timeID);
            stm.setString(16, timeInfo);
            int rows = stm.executeUpdate();

            if (rows > 0) {
                return true;
            }

        } catch (Exception e) {
        } finally {
            try {
                if (stm != null) {
                    stm.close();
                }
                if (con != null) {
                    con.close();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return false;
    }

    public static boolean addDomain(String domainName) {
        Connection con = null;
        PreparedStatement stm = null;
        try {
            con = makeConnection();
            String sql = "INSERT INTO Domain VALUES(?)";
            stm = con.prepareStatement(sql);
            stm.setString(1, domainName);
            int rows = stm.executeUpdate();
            if (rows > 0) {
                return true;
            }
        } catch (Exception e) {
        } finally {
            try {
                if (stm != null) {
                    stm.close();
                }
                if (con != null) {
                    con.close();
                }
            } catch (Exception e) {
            }
        }
        return false;
    }

    public static boolean InsertCompany(int companyID, String companyName,
            String information, String address, String contact,
            String email, String phone) {
        Connection con = null;
        PreparedStatement stm = null;
        try {
            con = makeConnection();
            String sql = "INSERT INTO Companies(companyID, companyName, information, address, contact, email, phone) VALUES (?,?,?,?,?,?,?)";
            stm = con.prepareStatement(sql);
            stm.setInt(1, companyID);
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
        } finally {
            try {
                if (stm != null) {
                    stm.close();
                }
                if (con != null) {
                    con.close();
                }
            } catch (Exception e) {
            }
        }

        return false;
    }

    public static boolean addPosition(String positionName) {
        Connection con = null;
        PreparedStatement stm = null;
        try {
            con = makeConnection();
            String sql = "INSERT INTO Positions VALUES(?)";
            stm = con.prepareStatement(sql);
            stm.setString(1, positionName);
            int rows = stm.executeUpdate();
            if (rows > 0) {
                return true;
            }
        } catch (Exception e) {
        } finally {
            try {
                if (stm != null) {
                    stm.close();
                }
                if (con != null) {
                    con.close();
                }
            } catch (Exception e) {
            }
        }
        return false;
    }

    public static boolean addTime(String timeInfo) {
        Connection con = null;
        PreparedStatement stm = null;
        try {
            con = makeConnection();
            String sql = "INSERT INTO Time VALUES(?)";
            stm = con.prepareStatement(sql);
            stm.setString(1, timeInfo);
            int rows = stm.executeUpdate();
            if (rows > 0) {
                return true;
            }
        } catch (Exception e) {
        } finally {
            try {
                if (stm != null) {
                    stm.close();
                }
                if (con != null) {
                    con.close();
                }
            } catch (Exception e) {
            }
        }
        return false;
    }

    public static boolean checkDomain(String domainName) {
        Connection con = null;
        PreparedStatement stm = null;
        ResultSet result = null;
        try {
            con = makeConnection();
            String sql = "Select * From Domain Where domainName = ?";
            stm = con.prepareStatement(sql);
            stm.setString(1, domainName);
            result = stm.executeQuery();
            while (result.next()) {
                return true;
            }
        } catch (Exception e) {
        } finally {
            try {
                if (result != null) {
                    result.close();
                }
                if (stm != null) {
                    stm.close();
                }
                if (con != null) {
                    con.close();
                }
            } catch (Exception e) {
            }
        }
        return false;
    }

    public static boolean checkTime(String timeInfo) {
        Connection con = null;
        PreparedStatement stm = null;
        ResultSet result = null;
        try {
            con = makeConnection();
            String sql = "Select * From Time Where timeInfo = ?";
            stm = con.prepareStatement(sql);
            stm.setString(1, timeInfo);
            result = stm.executeQuery();
            while (result.next()) {
                return true;
            }
        } catch (Exception e) {
        } finally {
            try {
                if (result != null) {
                    result.close();
                }
                if (stm != null) {
                    stm.close();
                }
                if (con != null) {
                    con.close();
                }
            } catch (Exception e) {
            }
        }
        return false;
    }

    public static boolean checkPosition(String positionName) {
        Connection con = null;
        PreparedStatement stm = null;
        ResultSet result = null;
        try {
            con = makeConnection();
            String sql = "Select * From Positions Where positionName = ?";
            stm = con.prepareStatement(sql);
            stm.setString(1, positionName);
            result = stm.executeQuery();
            while (result.next()) {
                return true;
            }
        } catch (Exception e) {
        } finally {
            try {
                if (result != null) {
                    result.close();
                }
                if (stm != null) {
                    stm.close();
                }
                if (con != null) {
                    con.close();
                }
            } catch (Exception e) {
            }
        }
        return false;
    }





}
