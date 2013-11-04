/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Main;

import Class.Company;
import Class.Job;
import DB.DBConnection;
import com.sun.org.apache.xpath.internal.operations.Equals;


import java.io.File;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

/**
 *
 * @author quang
 */
public class HotelCrawler {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {

        try {

            try {

                String url = "http://hoteljob.vn/Home/Ho-so/Ho-so-chi-tiet/6706/12345/Spa-Therapist.aspx";
                Document doc = Jsoup.connect(url).timeout(100 * 60).get();
                Elements links = doc.getElementsByClass("style_text_left_td_Detail");
                Elements details = doc.getElementsByClass("style_text_td_div_Detail");
                String[] left = null;
                left = new String[links.size()];
                int i = 0;
                for (Element link : links) {
                    left[i] = link.tagName("td").text().trim();
                    i++;
                }

                String[] right = null;
                right = new String[details.size()];
                int j = 0;
                for (Element detail : details) {
                    right[j] = detail.tagName("td").text().trim();
                    j++;
                }
                ///////////////
                ////Company////
                ///////////////
                String companyid = "6706";
                String companyname = right[0];
                String information = "";
                String email = "";
                String contact = "";
                String address = "";
                String phone = "";
                ///////////////
                ///////Job/////
                ///////////////

                String size = "";
                String jobID = "12345";
                String jobName = "";
                String salary = "";
                String description = "";
                String required = "";
                String deadline = "";
                String domainID = "";
                String domainName = "";
                String number = "";
                String companyID = "";
                String companyName = "";
                String cityID = "";
                String cityName = "";
                String positionID = "";
                String positionName = "";
                String timeID = "";
                String timeInfo = "";


                for (int k = 0; k <= (details.size()); k++) {


                    if (left[k].toString().equals("Sơ lược về công ty :")) {
                        information = right[k];//Thong tin cong ty
                        //System.out.println(information);
                    } else if (left[k].toString().equals("Quy mô công ty :")) {
                        size = right[k];
                        //System.out.println(size);
                    } else if (left[k].toString().equals("Chức danh :")) {
                        jobName = right[k];
                        //System.out.println(jobName);
                    } else if (left[k].toString().equals("Nội dung tuyển dụng :")) {
                        description = right[k];
                        //System.out.println(description);
                    } else if (left[k].toString().equals("Yêu cầu chung :")) {
                        required = right[k];
                        //System.out.println(required);

                    } else if (left[k].toString().equals("Lĩnh vực làm việc :")) {
                        domainName = right[k];
                        //System.out.println(domainName);

                    } else if (left[k].toString().equals("Nơi làm việc :")) {
                        cityName = right[k];
                        //System.out.println(cityName);

                    } else if (left[k].toString().equals("Thời gian làm việc :")) {
                        timeInfo = right[k];
                        //System.out.println(timeInfo);

                    } else if (left[k].toString().equals("Ngành nghề :")) {
                        positionName = right[k];
                        //System.out.println(positionName);

                    } else if (left[k].toString().equals("Cấp bậc tối thiểu :")) {
                        String captoithieu = right[k];
                        //System.out.println(captoithieu);

                    } else if (left[k].toString().equals("Mức lương :")) {
                        salary = right[k];
                        //System.out.println(salary);
                    } else if (left[k].toString().equals("Số lượng cần tuyển :")) {
                        number = right[k];
                        //System.out.println(number);
                    } else if (left[k].toString().equals("Hạn nộp hồ sơ :")) {
                        deadline = right[k];
                        //System.out.println(deadline);
                    } else if (left[k].toString().equals("Nhận hồ sơ ứng viên bằng:")) {
                        String nhanhoso = right[k];
                        //System.out.println(nhanhoso);
                    } else if (left[k].toString().equals("Người liên hệ :")) {
                        contact = right[k];
                        //System.out.println(contact);
                    } else if (left[k].toString().equals("Số điện thoại :")) {
                        phone = right[k];
                        //System.out.println(phone);
                    } else if (left[k].toString().equals("Email :")) {
                        email = right[k];
                        //System.out.println(email);
                    } else if (left[k].toString().equals("Địa chỉ :")) {
                        address = right[k];
                        //System.out.println(address);
                    }
                }
                //System.out.println(phone);

                try {
                    boolean result = DBConnection.addJob(jobID, jobName, salary, description, required, deadline, domainID, domainName, number, companyID, companyName, cityID, cityName, positionID, positionName, timeID, timeInfo);
                    if (result) {
                        System.out.println("Add Job successful");
                    } else {
                        System.out.println("Add that bai" + jobName + "da ton tai trong database!");
                    }

                } catch (Exception e) {
                    e.printStackTrace();
                }
                try {
                    boolean result = DBConnection.InsertCompany(companyid, companyname, information, address, contact, email, phone);
                    if (result) {
                        System.out.println("Add Company Successful");
                    } else {
                        System.out.println("Add that bai" + companyname + "da ton tai trong database!");
                    }

                } catch (Exception e) {
                    e.printStackTrace();
                }


                

            } catch (IOException e) {
                e.printStackTrace();
            }


//            System.out.println("Company Name:  " + salary);
//            System.out.println("JobName:  " + salary);
            //}
        } catch (Exception e) {
            e.printStackTrace();
        }

    }
}
