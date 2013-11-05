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
private String timeID;
private String timeInfo;

    public Time() {
    }

    public Time(String timeID, String timeInfo) {
        this.timeID = timeID;
        this.timeInfo = timeInfo;
    }


    /**
     * @return the timeID
     */
    public String getTimeID() {
        return timeID;
    }

    /**
     * @param timeID the timeID to set
     */
    public void setTimeID(String timeID) {
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
