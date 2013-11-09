/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package DB;

import Class.City;
import Class.Domain;
import Class.Position;
import Class.Time;
import java.io.Serializable;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author quang
 */
public class DBUpdate implements Serializable {

    public static Time[] getTime() {
        //tao connection
        Connection con = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        try {
            con = DBConnection.makeConnection();
            // tao cau lenh sql
            String sql = "Select * from Time";
            //tao object xu ly lenh
            stm = con.prepareStatement(sql);
            //thiet lap tham so
            // stm.setString(1, "%" + name + "%");
            // thuc thi
            rs = stm.executeQuery();
            // duyet rs
            List list = new ArrayList();
            while (rs.next()) {
                int timeID = rs.getInt("timeID");
                String timeInfo = rs.getString("timeInfo");
                Time time = new Time(timeID, timeInfo);
                list.add(time);
            }
            Time[] result = new Time[list.size()];
            list.toArray(result);

            return result;
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (rs != null) {
                    rs.close();
                }
                if (stm != null) {
                    stm.close();
                }
                if (con != null) {
                    con.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return null;
    }

    public static void UpdateTimeID() {
        Time[] result = getTime();
        for (int i = 0; i < result.length; i++) {


            Connection con = null;
            PreparedStatement stm = null;
            try {
                con = DBConnection.makeConnection();
                // tao cau lenh sql
                String sql = "Update  Jobs set timeID = ? where timeInfo = ?";
                //tao object xu ly lenh
                stm = con.prepareStatement(sql);
                //thiet lap tham so
                stm.setInt(1, result[i].getTimeID());
                stm.setString(2, result[i].getTimeInfo());
                // thuc thi
                int row = stm.executeUpdate();
                if (row > 0) {
                    // return true;
                }
            } catch (SQLException e) {
                e.printStackTrace();
            } finally {
                try {

                    if (stm != null) {
                        stm.close();
                    }
                    if (con != null) {
                        con.close();
                    }
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }//end for

    }

    public static Domain[] getDomain() {
        //tao connection
        Connection con = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        try {
            con = DBConnection.makeConnection();
            // tao cau lenh sql
            String sql = "Select * from Domain";
            //tao object xu ly lenh
            stm = con.prepareStatement(sql);
            //thiet lap tham so
            // stm.setString(1, "%" + name + "%");
            // thuc thi
            rs = stm.executeQuery();
            // duyet rs
            List list = new ArrayList();
            while (rs.next()) {
                int domainID = rs.getInt("domainID");
                String domainName = rs.getString("domainName");
                Domain acc = new Domain(domainID, domainName);
                list.add(acc);
            }
            Domain[] result = new Domain[list.size()];
            list.toArray(result);

            return result;
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (rs != null) {
                    rs.close();
                }
                if (stm != null) {
                    stm.close();
                }
                if (con != null) {
                    con.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return null;
    }

    public static void UpdateDomainID() {
        Domain[] result = getDomain();
        for (int i = 0; i < result.length; i++) {


            Connection con = null;
            PreparedStatement stm = null;
            try {
                con = DBConnection.makeConnection();
                // tao cau lenh sql
                String sql = "Update  Jobs set domainID = ? where domainName = ?";
                //tao object xu ly lenh
                stm = con.prepareStatement(sql);
                //thiet lap tham so
                stm.setInt(1, result[i].getDomainID());
                stm.setString(2, result[i].getDomainName());
                // thuc thi
                int row = stm.executeUpdate();
                if (row > 0) {
                    // return true;
                }
            } catch (SQLException e) {
                e.printStackTrace();
            } finally {
                try {

                    if (stm != null) {
                        stm.close();
                    }
                    if (con != null) {
                        con.close();
                    }
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }//end for

    }

    public static Position[] getPosition() {
        //tao connection
        Connection con = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        try {
            con = DBConnection.makeConnection();
            // tao cau lenh sql
            String sql = "Select * from Positions";
            //tao object xu ly lenh
            stm = con.prepareStatement(sql);
            //thiet lap tham so
            // stm.setString(1, "%" + name + "%");
            // thuc thi
            rs = stm.executeQuery();
            // duyet rs
            List list = new ArrayList();
            while (rs.next()) {
                int positionID = rs.getInt("positionID");
                String positionName = rs.getString("positionName");
                Position acc = new Position(positionID, positionName);
                list.add(acc);
            }
            Position[] result = new Position[list.size()];
            list.toArray(result);

            return result;
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (rs != null) {
                    rs.close();
                }
                if (stm != null) {
                    stm.close();
                }
                if (con != null) {
                    con.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return null;
    }

    public static void UpdatePositionID() {
        Position[] result = getPosition();
        for (int i = 0; i < result.length; i++) {


            Connection con = null;
            PreparedStatement stm = null;
            try {
                con = DBConnection.makeConnection();
                // tao cau lenh sql
                String sql = "Update  Jobs set positionID = ? where positionName = ?";
                //tao object xu ly lenh
                stm = con.prepareStatement(sql);
                //thiet lap tham so
                stm.setInt(1, result[i].getPositionID());
                stm.setString(2, result[i].getPositionName());
                // thuc thi
                int row = stm.executeUpdate();
                if (row > 0) {
                    // return true;
                }
            } catch (SQLException e) {
                e.printStackTrace();
            } finally {
                try {

                    if (stm != null) {
                        stm.close();
                    }
                    if (con != null) {
                        con.close();
                    }
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }//end for

    }

    public static City[] getCity() {
        //tao connection
        Connection con = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        try {
            con = DBConnection.makeConnection();
            // tao cau lenh sql
            String sql = "Select * from City";
            //tao object xu ly lenh
            stm = con.prepareStatement(sql);
            //thiet lap tham so
            // stm.setString(1, "%" + name + "%");
            // thuc thi
            rs = stm.executeQuery();
            // duyet rs
            List list = new ArrayList();
            while (rs.next()) {
                int citynID = rs.getInt("cityID");
                String cityName = rs.getString("cityName");
                City acc = new City(citynID, cityName);
                list.add(acc);
            }
            City[] result = new City[list.size()];
            list.toArray(result);

            return result;
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (rs != null) {
                    rs.close();
                }
                if (stm != null) {
                    stm.close();
                }
                if (con != null) {
                    con.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return null;
    }

    public static void UpdateCityID() {
        City[] result = getCity();
        for (int i = 0; i < result.length; i++) {


            Connection con = null;
            PreparedStatement stm = null;
            try {
                con = DBConnection.makeConnection();
                // tao cau lenh sql
                String sql = "Update  Jobs set cityID = ? where cityName = ?";
                //tao object xu ly lenh
                stm = con.prepareStatement(sql);
                //thiet lap tham so
                stm.setInt(1, result[i].getCityID());
                stm.setString(2, result[i].getCityName());
                // thuc thi
                int row = stm.executeUpdate();
                if (row > 0) {
                    // return true;
                }
            } catch (SQLException e) {
                e.printStackTrace();
            } finally {
                try {

                    if (stm != null) {
                        stm.close();
                    }
                    if (con != null) {
                        con.close();
                    }
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }//end for

    }
}
