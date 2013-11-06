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
public class City implements Serializable {

    private int cityID;
    private String cityName;

    public City() {
    }

    public City(int cityID, String cityName) {
        this.cityID = cityID;
        this.cityName = cityName;
    }

    /**
     * @return the cityID
     */
    public int getCityID() {
        return cityID;
    }

    /**
     * @param cityID the cityID to set
     */
    public void setCityID(int cityID) {
        this.cityID = cityID;
    }

    /**
     * @return the cityName
     */
    public String getCityName() {
        return cityName;
    }

    /**
     * @param cityName the cityName to set
     */
    public void setCityName(String cityName) {
        this.cityName = cityName;
    }
}
