using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace HRMWcfService1
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "EmpSea" in code, svc and config file together.
    // NOTE: In order to launch WCF Test Client for testing this service, please select EmpSea.svc or EmpSea.svc.cs at the Solution Explorer and start debugging.
    public class EmpSea : IEmpSea
    {
        HRMDAL.Repositries.EmpSearchRepositry empsearchRepo;
        HRMDAL.Repositries.EmployeeEditRepository empeditRepo;
        
        
        public EmpSea()
        {
            try
            {
                empsearchRepo = new HRMDAL.Repositries.EmpSearchRepositry();
                empeditRepo = new HRMDAL.Repositries.EmployeeEditRepository();
            }
            catch
            {                
                throw;
            }          
        }

        public List<HRMDAL.Entites.EmployeeSearch> EmpSearch(int EmpID)
        {
            try
            {
                return empsearchRepo.EmpSearch(EmpID);
            }
            catch
            {                
                throw;
            }
        }


        public List<HRMDAL.Entites.EmployeeSearch> EmpSearchName(string name)
        {
            try
            {
                return empsearchRepo.EmpSearchName(name);
            }
            catch
            {                
                throw;
            }
        }


        public List<HRMDAL.Entites.EmlpoyeeSeachEditEmp> RetriveDesignation()
        {
            try
            {
                return empsearchRepo.RetriveDesignation();
            }
            catch
            {                
                throw;
            }
        }

        public List<HRMDAL.Entites.EmlpoyeeSeachEditEmp> RetriveDepartment()
        {
            try
            {
                return empsearchRepo.RetriveDepartment();
            }
            catch
            {                
                throw;
            }
        }
        //DIS IS FOR SALARY PRINT PREVIEW 
        public List<HRMDAL.Entites.Salary> RetriveEmpID()
        {
            try
            {
                return empsearchRepo.RetriveEmpID();
            }
            catch
            {
                
                throw;
            }
        }
        public List<HRMDAL.Entites.Employee> SalaryGrid(int EmpID)
        {
            try
            {
                return empsearchRepo.SalryGrid(EmpID);
            }
            catch 
            {                
                throw;
            }
        }


        public int CheckPanCardIDExist(string PanCardID)
        {
            try
            {
                return empeditRepo.CheckPanCardIDExist(PanCardID);
            }
            catch
            {                
                throw;
            }
        }


        public List<HRMDAL.Entites.EmployeeSearch> EmpSearchDepDes(string department, string desgnation)
        {
            try
            {
                return empsearchRepo.EmpSearchDepDes(department, desgnation);
            }
            catch
            {                
                throw;
            }
        }


        public void AddEditEmployee(HRMDAL.Entites.EmployeeEdit emplyEdit)
        {
            try
            {
                empeditRepo.AddEditEmployee(emplyEdit);
            }
            catch
            {                
                throw;
            }
        }


        public HRMDAL.Entites.EmployeeEdit ViewDetail(int EmpID)
        {
            try
            {
                return empeditRepo.ViewDetail(EmpID);
            }
            catch
            {                
                throw;
            }
        }


        public void EmployUpdate(HRMDAL.Entites.EmployeeEdit emplyEdit)
        {
            try
            {
                empeditRepo.EmployUpdate(emplyEdit);
            }
            catch
            {                
                throw;
            }
        }


        public int CheckEmpIDEdit(int EmpID)
        {
            try
            {
                return empeditRepo.CheckEmpIDEdit(EmpID);
            }
            catch
            {                
                throw;
            }
        }
    }
}
