using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Runtime.Serialization;

namespace HRMDAL.Entites
{
    [DataContract]
    public class Salary
    {
        [DataMember]
        public int SalID { get; set; }
        [DataMember]
        public decimal BasicSal { get; set; }
        [DataMember]
        public decimal SpecailAllw { get; set; }
        [DataMember]
        public decimal EducationAllw { get; set; }
        [DataMember]
        public decimal ConvyanceAllw { get; set; }
        [DataMember]
        public decimal PerformanceAllw { get; set; }
        [DataMember]
        public decimal LTA { get; set; }
        [DataMember]
        public decimal MedicalAllw { get; set; }
        [DataMember]
        public decimal ProfessionTax { get; set; }
        [DataMember]
        public decimal ProvidentTax { get; set; }
        [DataMember]
        public decimal OtherDeductions { get; set; }
        [DataMember]
        public int EmpID { get; set; }

    }
}
