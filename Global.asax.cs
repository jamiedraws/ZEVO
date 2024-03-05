using System.Web.Mvc;
using System.Web.Routing;
using Dtm.Framework.ClientSites.Web;

namespace ZEVO
{
    public class MvcApplication : ClientSiteApplication
    {
        protected override void ConfigureAdditionalRoutes(RouteCollection routes)
        {
            routes.MapRoute("IVR", "GetPhone", new
            {
                controller = "IVRPhone",
                action = "GetPhoneNumber"
            });
            base.ConfigureAdditionalRoutes(routes);

            
        }
    }
}