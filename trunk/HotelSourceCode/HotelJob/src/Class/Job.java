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
public class Job implements Serializable{

    
    private String jobID;
    private String jobName;
    private String salary;
    private String description;
    private String required;
    private String deadline;
    private int domainID;
    private String domainName;
    private String number;
    private int companyID;
    private int cityID;
    private String cityName;
    private int positionID;
    private String positionName;
    private int timeID;
    private String timeInfo;

    public Job(String jobID, String jobName, String salary, String description, String required, String deadline, int domainID, String domainName, String number, int companyID, int cityID, String cityName, int positionID, String positionName, int timeID, String timeInfo) {
        this.jobID = jobID;
        this.jobName = jobName;
        this.salary = salary;
        this.description = description;
        this.required = required;
        this.deadline = deadline;
        this.domainID = domainID;
        this.domainName = domainName;
        this.number = number;
        this.companyID = companyID;
        this.cityID = cityID;
        this.cityName = cityName;
        this.positionID = positionID;
        this.positionName = positionName;
        this.timeID = timeID;
        this.timeInfo = timeInfo;
    }

    public Job() {
    }

    /**
     * @return the jobID
     */
    public String getJobID() {
        return jobID;
    }

    /**
     * @param jobID the jobID to set
     */
    public void setJobID(String jobID) {
        this.jobID = jobID;
    }

    /**
     * @return the jobName
     */
    public String getJobName() {
        return jobName;
    }

    /**
     * @param jobName the jobName to set
     */
    public void setJobName(String jobName) {
        this.jobName = jobName;
    }

    /**
     * @return the salary
     */
    public String getSalary() {
        return salary;
    }

    /**
     * @param salary the salary to set
     */
    public void setSalary(String salary) {
        this.salary = salary;
    }

    /**
     * @return the description
     */
    public String getDescription() {
        return description;
    }

    /**
     * @param description the description to set
     */
    public void setDescription(String description) {
        this.description = description;
    }

    /**
     * @return the required
     */
    public String getRequired() {
        return required;
    }

    /**
     * @param required the required to set
     */
    public void setRequired(String required) {
        this.required = required;
    }

    /**
     * @return the deadline
     */
    public String getDeadline() {
        return deadline;
    }

    /**
     * @param deadline the deadline to set
     */
    public void setDeadline(String deadline) {
        this.deadline = deadline;
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

    /**
     * @return the number
     */
    public String getNumber() {
        return number;
    }

    /**
     * @param number the number to set
     */
    public void setNumber(String number) {
        this.number = number;
    }

    /**
     * @return the companyID
     */
    public int getCompanyID() {
        return companyID;
    }

    /**
     * @param companyID the companyID to set
     */
    public void setCompanyID(int companyID) {
        this.companyID = companyID;
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

    /**
     * @return the positionID
     */
    public int getPositionID() {
        return positionID;
    }

    /**
     * @param positionID the positionID to set
     */
    public void setPositionID(int positionID) {
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
