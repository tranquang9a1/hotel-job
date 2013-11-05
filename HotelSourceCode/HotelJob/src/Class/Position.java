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
public class Position implements Serializable{
private String positionID;
private String positionName;

    public Position() {
    }

    public Position(String positionID, String positionName) {
        this.positionID = positionID;
        this.positionName = positionName;
    }

    /**
     * @return the positionID
     */
    public String getPositionID() {
        return positionID;
    }

    /**
     * @param positionID the positionID to set
     */
    public void setPositionID(String positionID) {
        this.positionID = positionID;
    }

    /**
     * @return the positionName
     */
    public String getPositionName() {
        return positionName;
    }

    /**
     * @param positionName the positionName to set
     */
    public void setPositionName(String positionName) {
        this.positionName = positionName;
    }




}
