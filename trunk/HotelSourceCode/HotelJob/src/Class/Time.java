/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package Class;

import java.io.Serializable;

/**
 *
 * @author quang
 */
public class Time implements Serializable{
private int timeID;
private String timeInfo;

    public Time() {
    }

    public Time(int timeID, String timeInfo) {
        this.timeID = timeID;
        this.timeInfo = timeInfo;
    }


    /**
     * @return the timeID
     */
    public int getTimeID() {
        return timeID;
    }

    /**
     * @param timeID the timeID to set
     */
    public void setTimeID(int timeID) {
        this.timeID = timeID;
    }

    /**
     * @return the timeInfo
     */
    public String getTimeInfo() {
        return timeInfo;
    }

    /**
     * @param timeInfo the timeInfo to set
     */
    public void setTimeInfo(String timeInfo) {
        this.timeInfo = timeInfo;
    }


}
