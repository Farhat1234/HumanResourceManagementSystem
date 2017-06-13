using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace HRMWcfService1
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the interface name "IJOB" in both code and config file together.
    [ServiceContract]
    public interface IJOB
    {
        [OperationContract]
        void Posting(HRMDAL.Entites.JobPosting job);

        [OperationContract]
        DataSet GetAllJobs();
    }
}
