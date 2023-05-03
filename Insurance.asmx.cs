using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace VehicleProject
{
    /// <summary>
    /// Summary description for Insurance1
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class Validation : System.Web.Services.WebService
    {

        [WebMethod]
        public ArrayList Insurance(string cn)
        {
            string status;
            double days;
            ArrayList info = new ArrayList();
            DateTime insurdate = DATEMETHODS.GetInsurancedate(cn);
            if (insurdate < DateTime.Now)
            {
                status = "Expired";
                days = (insurdate - DateTime.Today).TotalDays;
                info.Insert(0, days);
                info.Insert(1, status);
            }
            else
            {
                status = "Up-To- Date";
                days = (insurdate - DateTime.Today).TotalDays;
                info.Insert(0, days);
                info.Insert(1, status);
            }
            return info;
        }

        [WebMethod]
        public ArrayList Fitness(string ln)
        {
            string status;
            double days;
            ArrayList info = new ArrayList();
            DateTime fitdate = DATEMETHODS.GetFitnessdate(ln);
            if (fitdate < DateTime.Now)
            {
                status = "Expired";
                days = (fitdate - DateTime.Today).TotalDays;
                info.Insert(0, days);
                info.Insert(1, status);
            }
            else
            {
                status = "Up-To- Date";
                days = (fitdate - DateTime.Today).TotalDays;
                info.Insert(0, days);
                info.Insert(1, status);
            }
            return info;
        }
    }
}
