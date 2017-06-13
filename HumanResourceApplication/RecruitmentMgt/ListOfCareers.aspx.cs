using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HumanResourceApplication.RecruitmentMgt
{
    public partial class ListOfCareers : System.Web.UI.Page
    {
        jobservice.JOBClient Proxy;
        jobservice.JobPosting jobs;

        protected void Page_Load(object sender, EventArgs e)
        {
            Proxy = new jobservice.JOBClient();
            jobs = new jobservice.JobPosting();

            DataSet dataSet = new DataSet();
            dataSet = Proxy.GetAllJobs();

            grdListOfCareers.DataSource = dataSet;
            grdListOfCareers.DataBind();
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {

        }
    }
}