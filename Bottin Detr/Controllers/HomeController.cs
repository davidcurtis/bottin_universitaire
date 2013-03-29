using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Bottin_DetR.Models;

namespace Bottin_DetR.Controllers
{
    [HandleError]
    public class HomeController : Controller
    {

        private DatabaseEntities _entities = new DatabaseEntities();

        public ActionResult Index()
        {
            ViewData["Message"] = "Bienvenue dans bottin de l'université !";

            return View();
        }

        public ActionResult About()
        {
            return View();
        }

        public ActionResult ListeHome()
        {
            return View(_entities.table_etudiant.ToList());
        }

        public ActionResult Recherche()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Recherche( etudiant etudiantRechercher)
        {
            var etudiantRecherche = (from m in _entities.table_etudiant
                                     where m.nom == etudiantRechercher.nom 
                                     select m).First();

            return View("ResultatRecherche", etudiantRecherche);
        }

        public ActionResult ResultatRecherche(etudiant etudiantTrouve)
        {
            return PartialView();
        }
    }
}
