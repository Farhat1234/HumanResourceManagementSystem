using HRMDAL.Entites;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;

namespace HRMWcfService1
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "Service1" in code, svc and config file together.
    public class Service1 : IService1
    {
        HRMDAL.Repositries.AddEmployeeRepositry addempRepo;
        
        public Service1()
        {
            try
            {
                addempRepo = new HRMDAL.Repositries.AddEmployeeRepositry();
            }
            catch
            {                
                throw;
            }
        }

        public void AddEmployee(HRMDAL.Entites.Employee emp)
        {
            try
            {
                addempRepo.AddEmployee(emp);
            }
            catch
            {                
                throw;
            }
        }


        public List<HRMDAL.Entites.Employee> RetriveEmpIDImage(int EmpID)
        {
            try
            {
                return addempRepo.RetriveEmpIDImage(EmpID);
            }
            catch 
            {                
                throw;
            }
        }


        public List<HRMDAL.Entites.StateCity> GetStates()
        {
            try
            {
                return addempRepo.GetStates();
            }
            catch
            {                
                throw;
            }
        }


        public List<HRMDAL.Entites.City> GetCity(int StateID)
        {
            try
            {
                return addempRepo.GetCity(StateID);
            }
            catch
            {                
                throw;
            }
        }

        public void AddBankDetails(BankDetails bank)
        {
            try
            {
                addempRepo.AddBankDetails(bank);
            }
            catch 
            {                
                throw;
            }
        }
    }

        
}
