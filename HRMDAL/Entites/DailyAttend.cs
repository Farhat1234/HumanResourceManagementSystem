using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Runtime.Serialization;

namespace HRMDAL.Entites
{
    [DataContract]
   public class DailyAttendance
    {
        [DataMember]
        public int AttID { get; set; }
        [DataMember]
        public int EmpID { get; set; }
        [DataMember]
        public string EmpName { get; set; }
        [DataMember]
        public string Department { get; set; }
        [DataMember]
        public string Month { get; set; }
        [DataMember]
        public int Year { get; set; }
        [DataMember]
        public DateTime Date { get; set; }
        [DataMember]
        public DateTime InTime { get; set; }
        [DataMember]
        public DateTime OutTime { get; set; }
        [DataMember]
        public char Punching { get; set; }
        
    }
}
