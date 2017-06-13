using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Runtime.Serialization;

namespace HRMDAL.Entites
{
    [DataContract]
    public class Employee
    {
        [DataMember]
        public int EmpID { get; set; }
        [DataMember]
        public string EmpFirstName { get; set; }
        [DataMember]
        public string EmpLastName { get; set; }
        [DataMember]
        public  string CompanyName { get; set; }
        [DataMember]
        public DateTime DOJ { get; set; }
        [DataMember]
        public DateTime DOB { get; set; }
       [DataMember]
        public string Gender { get; set; }
        [DataMember]
        public string Address { get; set; }
        [DataMember]
        public string City { get; set; }
        [DataMember]
        public string State { get; set; }
       [DataMember]
        public decimal Phone{ get; set; }
       [DataMember]
        public string Email { get; set; }
       [DataMember]
        public  byte[] Photo { get; set; }
       [DataMember]
        public int RoleID { get; set; }
       [DataMember]
       public string Pass { get; set; }



    }
}
