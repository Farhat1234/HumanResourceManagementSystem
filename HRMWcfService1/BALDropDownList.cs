using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using HRMDAL;

namespace HRMWcfService1
{
    public class BALDropDownList
    {
        public static DataTable NIOType()
        {
            return HRMDAL.DALDropDownList.NIOType();
        }

        public static DataTable LoanAdvance()
        {
            return HRMDAL.DALDropDownList.LoanAdvance();
        }

        public static DataTable CountryList()
        {
            return HRMDAL.DALDropDownList.CountryList();
        }

        public static DataTable GraduationList()
        {
            return HRMDAL.DALDropDownList.GraduationList();
        }

        public static DataTable PostGraduationList()
        {
            return HRMDAL.DALDropDownList.PostGraduationList();
        }

        public static DataTable DoctorateList()
        {
            return HRMDAL.DALDropDownList.DoctorateList();
        }

        public static DataTable StateList(int CountryID)
        {
            return HRMDAL.DALDropDownList.StateList(CountryID);
        }

        public static DataTable CityList(int StateID)
        {
            return HRMDAL.DALDropDownList.CityList(StateID);
        }

        public static DataTable JobDomain()
        {
            return HRMDAL.DALDropDownList.JobDomain();
        }

        public static DataTable Relation()
        {
            return HRMDAL.DALDropDownList.Relation();
        }

        public static DataTable LeaveType()
        {
            return HRMDAL.DALDropDownList.LeaveType();
        }
        public static DataTable Department()
        {
            return HRMDAL.DALDropDownList.Department();
        }
        public static DataTable DesignationList()
        {
            return HRMDAL.DALDropDownList.DesignationList();
        }

        public static DataTable Nationality()
        {
            return HRMDAL.DALDropDownList.Nationality();
        }
    }
}