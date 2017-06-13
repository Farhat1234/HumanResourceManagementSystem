using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Runtime.Serialization;

namespace HRMDAL.Entites
{
    [DataContract]
    public class Login
    {
        [DataMember]
        public int EmployeeID { get; set; }
        [DataMember]
        public string EmailID { get; set; }
        [DataMember]
        public string Password { get; set; }
        [DataMember]
        public int RoleID { get; set; }
    }
}
