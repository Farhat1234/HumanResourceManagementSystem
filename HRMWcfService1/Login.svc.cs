using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace HRMWcfService1
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "Login" in code, svc and config file together.
    // NOTE: In order to launch WCF Test Client for testing this service, please select Login.svc or Login.svc.cs at the Solution Explorer and start debugging.
    public class Login : ILogin
    {
        HRMDAL.Repositries.LoginRepositry userlog;

        public Login()
        {
            try
            {
                userlog = new HRMDAL.Repositries.LoginRepositry();
            }
            catch
            {                
                throw;
            }
        }


        public HRMDAL.Entites.Login LoginRep(string Email, string Password, int EmpID)
        {
            try
            {
                return userlog.LoginRep(Email, Password, EmpID);
            }
            catch
            {                
                throw;
            }
        }
    }
}
