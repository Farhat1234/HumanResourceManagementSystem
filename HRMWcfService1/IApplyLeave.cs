using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace HRMWcfService1
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the interface name "IApplyLeave" in both code and config file together.
    [ServiceContract]
    public interface IApplyLeave
    {
        [OperationContract]
        void ApplyLeav(HRMDAL.Entites.ApplyLeave App);

        [OperationContract]
        DataSet GetLeaveQuota(int empId);

        [OperationContract]
        DataSet GetLeaveHistory(int empId);

        [OperationContract]
        DataSet GetAllLeavesPending();

        [OperationContract]
        void ApproveLeaves(int empid, DateTime fromdate);
    }
}
