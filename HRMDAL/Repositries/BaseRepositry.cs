
namespace HRMDAL.Repositries
{
  public class BaseRepositry
    {
      public string HRMConString;

      public BaseRepositry()
      {
            HRMConString=System.Configuration.ConfigurationManager.ConnectionStrings["HrmString"].ConnectionString;
      }
    }
}
