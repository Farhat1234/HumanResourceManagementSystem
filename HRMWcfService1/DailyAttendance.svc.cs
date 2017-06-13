using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace HRMWcfService1
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "DailyAttendance" in code, svc and config file together.
    // NOTE: In order to launch WCF Test Client for testing this service, please select DailyAttendance.svc or DailyAttendance.svc.cs at the Solution Explorer and start debugging.
    public class DailyAttendance : IDailyAttendance
    {
        HRMDAL.Repositries.DailyAttendRepsitry dailatt;
        public DailyAttendance()
        {
            try
            {
                dailatt = new HRMDAL.Repositries.DailyAttendRepsitry();
            }
            catch
            {                
                throw;
            }
        }
        public void DailyAttend(HRMDAL.Entites.DailyAttendance att)
        {
            try
            {
                dailatt.DailyAttendance(att);
            }
            catch 
            {                
                throw;
            }
        }
    }
}
