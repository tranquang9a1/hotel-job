//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace WebHotel.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Company
    {
        public Company()
        {
            this.Jobs = new HashSet<Job>();
        }
    
        public string companyID { get; set; }
        public string companyName { get; set; }
        public string information { get; set; }
        public string address { get; set; }
        public string contact { get; set; }
        public string email { get; set; }
        public string phone { get; set; }
    
        public virtual ICollection<Job> Jobs { get; set; }
    }
}
