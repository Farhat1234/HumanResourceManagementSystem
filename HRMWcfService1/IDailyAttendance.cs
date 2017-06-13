using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace HRMWcfService1
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the interface name "IDailyAttendance" in both code and config file together.
    [ServiceContract]
    public interface IDailyAttendance
    {
        [OperationContract]
        void DailyAttend(HRMDAL.Entites.DailyAttendance att);
    }
}
