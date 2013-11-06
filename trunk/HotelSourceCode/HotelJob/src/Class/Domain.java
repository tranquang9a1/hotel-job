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
public class Domain implements Serializable{
    private int domainID;
    private String domainName;

    public Domain() {
    }

    public Domain(int domainID, String domainName) {
        this.domainID = domainID;
        this.domainName = domainName;
    }


    

    /**
     * @return the domainID
     */
    public int getDomainID() {
        return domainID;
    }

    /**
     * @param domainID the domainID to set
     */
    public void setDomainID(int domainID) {
        this.domainID = domainID;
    }

    /**
     * @return the domainName
     */
    public String getDomainName() {
        return domainName;
    }

    /**
     * @param domainName the domainName to set
     */
    public void setDomainName(String domainName) {
        this.domainName = domainName;
    }


    

}
