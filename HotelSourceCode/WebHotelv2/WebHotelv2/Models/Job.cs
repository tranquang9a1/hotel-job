//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace WebHotelv2.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Job
    {
        public string jobID { get; set; }
        public string jobName { get; set; }
        public string salary { get; set; }
        public string description { get; set; }
        public string required { get; set; }
        public string deadline { get; set; }
        public Nullable<int> domainID { get; set; }
        public string domainName { get; set; }
        public string number { get; set; }
        public Nullable<int> companyID { get; set; }
        public Nullable<int> cityID { get; set; }
        public string cityName { get; set; }
        public string positionName { get; set; }
        public Nullable<int> positionID { get; set; }
        public Nullable<int> timeID { get; set; }
        public string timeInfo { get; set; }
    
        public virtual City City { get; set; }
        public virtual Domain Domain { get; set; }
        public virtual Time Time { get; set; }
    }
}
