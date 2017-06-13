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
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the interface name "IService1" in both code and config file together.
    [ServiceContract]
    public interface IService1
    {
        [OperationContract]
        void AddEmployee(HRMDAL.Entites.Employee emp);

        [OperationContract]
        List< HRMDAL.Entites.Employee> RetriveEmpIDImage(int EmpID);

        [OperationContract]
        List<HRMDAL.Entites.StateCity> GetStates();

        [OperationContract]
        List<HRMDAL.Entites.City> GetCity(int StateID);

        [OperationContract]
        void AddBankDetails(BankDetails bank);
    }


    
}
