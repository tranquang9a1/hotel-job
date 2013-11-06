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
import org.jsoup.HttpStatusException;

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
                /////////////////////////////////
                //Lấy link từ trang chủ công ty//
                /////////////////////////////////


                String companies[] = null;


                for (int i = 2850; i < 5000; i++) {
                    try {
                        String homelink = "http://hoteljob.vn/Home/Gian-hang/default/" + i + "/trang-chu.aspx";
                        Document getlink = (Document) Jsoup.connect(homelink).timeout(1000 * 60).get();
                        Elements refs = getlink.select("a[href^=/Home/Ho-so]");
                        int n = 0;
                        companies = new String[refs.size()];
                        for (Element ref : refs) {
                            //  System.out.println("\n" + link.attr(null));
                            companies[n] = ref.attr("href").toString();
                            String url = "http://hoteljob.vn" + companies[n];
                            //System.out.println(url);
                            //String url = "http://hoteljob.vn/Home/Ho-so/Ho-so-chi-tiet/4007/" + i + "/Senior-Sales-English-Speaking.aspx";
                            Document doc = Jsoup.connect(url).timeout(1000 * 60).get();
                            if (doc.isBlock()) {
                                n++;
                            }

                            Elements links = doc.getElementsByClass("style_text_left_td_Detail");
                            Elements details = doc.getElementsByClass("style_text_td_div_Detail");

                            ////////////////////////
                            ////Giá trị bên trái////
                            ////////////////////////
                            String[] left = null;
                            left = new String[links.size()];
                            int m = 0;
                            for (Element link : links) {
                                left[m] = link.tagName("td").text().trim();
                                m++;
                            }
                            ////////////////////////
                            ////Giá trị bên phải////
                            ////////////////////////

                            String[] right = null;
                            right = new String[details.size()];
                            int j = 0;
                            for (Element detail : details) {
                                right[j] = detail.tagName("td").text().trim();
                                j++;
                            }
                            ////////////////////
                            //Khai báo company//
                            ////////////////////
                            int companyid = i;
                            String companyname = right[0];
                            String information = "";
                            String email = "";
                            String contact = "";
                            String address = "";
                            String phone = "";
                            //////////////////
                            ///Khai báo job///
                            //////////////////

                            String size = "";
                            int jobID = Integer.parseInt(companies[n].substring(32, 37));
                            String jobName = "";
                            String salary = "";
                            String description = "";
                            String required = "";
                            String deadline = "";
                            int domainID = 0;
                            String domainName = "";
                            String number = "";

                            String companyName = "";
                            int cityID = 0;
                            String cityName = "";
                            int positionID = 0;
                            String positionName = "";
                            int timeID = 0;
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


                            try {
                                ///////////////////////////////
                                ////Thêm 1 job vào database////
                                ///////////////////////////////

                                boolean result = DBConnection.addJob(jobID, jobName, salary, description, required, deadline, domainID, domainName, number, companyid, cityID, cityName, positionName, positionID, timeID, timeInfo);
                                if (result) {
                                    System.out.println("Add Job successful");
                                } else {
                                    System.out.println("Add Job fail");
                                }

                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                            //////////////////////////////////////
                            ////Thêm 1 domainName vào database////
                            //////////////////////////////////////
                            try {
                                boolean result = DBConnection.checkDomain(domainName);
                                if (result == false) {
                                    DBConnection.addDomain(domainName);
                                }
                            } catch (Exception e) {
                            }
                            ////////////////////////////////////////
                            ////Thêm 1 positionName vào database////
                            ////////////////////////////////////////
                            try {
                                boolean result = DBConnection.checkPosition(positionName);
                                if (result == false) {
                                    DBConnection.addPosition(positionName);
                                }
                            } catch (Exception e) {
                            }
                            ////////////////////////////////
                            ////Thêm 1 time vào database////
                            ////////////////////////////////
                            try {
                                boolean result = DBConnection.checkTime(timeInfo);
                                if (result == false) {
                                    DBConnection.addTime(timeInfo);
                                }
                            } catch (Exception e) {
                            }

                            try {
                                /////////////////////////////////
                                //Thêm 1 company vào database////
                                /////////////////////////////////
                                boolean result = DBConnection.InsertCompany(companyid, companyname, information, address, contact, email, phone);
                                if (result) {
                                    System.out.println("Add Company Successful");
                                } else {
                                    System.out.println("Add fail " + companyname + " had exist in database!");
                                }

                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                            n++;
                        }

                    } catch (HttpStatusException e) {
                        continue;
                    }
//                     catch (ArrayIndexOutOfBoundsException e) {
//                        continue;
//                    }


                }

            } catch (Exception e) {
                e.printStackTrace();
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
