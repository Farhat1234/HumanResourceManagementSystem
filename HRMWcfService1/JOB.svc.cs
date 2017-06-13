using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace HRMWcfService1
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "JOB" in code, svc and config file together.
    // NOTE: In order to launch WCF Test Client for testing this service, please select JOB.svc or JOB.svc.cs at the Solution Explorer and start debugging.
    public class JOB : IJOB
    {
        HRMDAL.Repositries.JobPostingRepositry jobs;

        public JOB()
        {
            try
            {
                jobs = new HRMDAL.Repositries.JobPostingRepositry();
            }
            catch
            {                
                throw;
            }
        }

        public void Posting(HRMDAL.Entites.JobPosting job)
        {
            try
            {
                jobs.JobPost(job);
            }
            catch
            {                
                throw;
            }
        }


        public System.Data.DataSet GetAllJobs()
        {
            try
            {
                return jobs.ListOfJobs();
            }
            catch
            {                
                throw;
            }
        }
    }
}
