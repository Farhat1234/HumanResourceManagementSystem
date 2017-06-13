using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace HRMWcfService1
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "ApplyLeave" in code, svc and config file together.
    public class ApplyLeave : IApplyLeave
    {
        HRMDAL.Repositries.ApplyLeaveRepositry appleavrepo;

        public ApplyLeave()
        {
            try
            {
                appleavrepo = new HRMDAL.Repositries.ApplyLeaveRepositry();
            }
            catch
            {
                throw;
            }
        }
        public void ApplyLeav(HRMDAL.Entites.ApplyLeave applev)
        {
            try
            {
                appleavrepo.ApplyLeav(applev);
            }
            catch
            {
                throw;
            }
        }


        public System.Data.DataSet GetLeaveQuota(int empId)
        {
            try
            {
                return appleavrepo.GetLeaveQuota(empId);
            }
            catch
            {
                throw;
            }
        }


        public System.Data.DataSet GetLeaveHistory(int empId)
        {
            try
            {
                return appleavrepo.GetLeaveHistory(empId);
            }
            catch
            {
                throw;
            }
        }


        public System.Data.DataSet GetAllLeavesPending()
        {
            try
            {
                return appleavrepo.GetAllPendingLeaves();
            }
            catch 
            {                
                throw;
            }
        }


        public void ApproveLeaves(int empid, DateTime fromdate)
        {
            try
            {
                appleavrepo.ApproveLeaves(empid, fromdate);
            }
            catch
            {                
                throw;
            }
        }
    }
}
