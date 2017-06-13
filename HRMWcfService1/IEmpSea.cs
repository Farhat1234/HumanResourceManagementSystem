using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace HRMWcfService1
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the interface name "IEmpSea" in both code and config file together.
    [ServiceContract]
    public interface IEmpSea
    {
        [OperationContract]
        List< HRMDAL.Entites.EmployeeSearch> EmpSearch(int EmpID);
        [OperationContract]
        List<HRMDAL.Entites.EmployeeSearch> EmpSearchName(string name);
        [OperationContract]
         List<HRMDAL.Entites.EmlpoyeeSeachEditEmp> RetriveDesignation();
        [OperationContract]
         List<HRMDAL.Entites.EmlpoyeeSeachEditEmp> RetriveDepartment();
        [OperationContract]
        List<HRMDAL.Entites.Salary> RetriveEmpID();
        [OperationContract]
        List<HRMDAL.Entites.Employee>SalaryGrid(int EmpID);
        [OperationContract]
         int CheckPanCardIDExist(string PanCardID);
        [OperationContract]
        List<HRMDAL.Entites.EmployeeSearch> EmpSearchDepDes(string department, string desgnation);
        [OperationContract]
        void AddEditEmployee(HRMDAL.Entites.EmployeeEdit emplyEdit);
        [OperationContract]
        HRMDAL.Entites.EmployeeEdit ViewDetail(int EmpID);
        [OperationContract]
        void EmployUpdate( HRMDAL. Entites.EmployeeEdit emplyEdit);
        [OperationContract]
        int CheckEmpIDEdit(int EmpID);
    }
}
