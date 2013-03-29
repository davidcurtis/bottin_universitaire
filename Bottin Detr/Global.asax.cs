using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;

namespace Bottin_DetR
{
    
    public class MvcApplication : System.Web.HttpApplication
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.IgnoreRoute("{resource}.axd/{*pathInfo}");

            routes.MapRoute(
                "Default", // Nom d'itinéraire
                "{controller}/{action}/{id}", // URL avec des paramètres
                new { controller = "Home", action = "Index", id = UrlParameter.Optional } // Paramètres par défaut
            );

            routes.MapRoute(
          "Recherche", // Nom d'itinéraire
          "{controller}/{action}/{nom}", // URL avec des paramètres
          new { controller = "Home", action = "Recherche",nom=""  } // Paramètres par défaut
      );

        }

        protected void Application_Start()
        {
            AreaRegistration.RegisterAllAreas();

            RegisterRoutes(RouteTable.Routes);
        }
    }
}