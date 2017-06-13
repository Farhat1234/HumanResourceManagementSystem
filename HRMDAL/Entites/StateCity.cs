using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using System.Runtime.Serialization;
namespace HRMDAL.Entites
{
    [DataContract]
    public class StateCity
    {
        [DataMember]
        public int StateID { get; set; }
        [DataMember]
        public string StateName { get; set; }
    }

    [DataContract]
    public class City
    {
        [DataMember]
        public string CityName { get; set; }
        [DataMember]
        public int StateID { get; set; }
    }
}